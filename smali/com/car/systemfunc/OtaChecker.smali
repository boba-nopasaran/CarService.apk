.class public Lcom/car/systemfunc/OtaChecker;
.super Landroid/content/BroadcastReceiver;
.source "OtaChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field static final MSG_CHECK_RET:I = 0x64

.field static final MSG_DOWNLOAD_FINISH:I = 0x66

.field static final MSG_LOCK_CHECK:I = 0x69

.field static final MSG_NEXT_CHECK:I = 0x65

.field static final MSG_OTA_INSTALL:I = 0x67

.field static final MSG_OTA_INSTALL_NOW:I = 0x68

.field static final OTAZIP_PATH:Ljava/lang/String; = "/cache/ota.zip"

.field static final OTA_SERVER:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "CarSvc_OtaChecker"

.field static final TIME_INTERVAL:J = 0x5265c00L

.field static TYPE_NEW_VERSION:I

.field static TYPE_NO_VERSION:I

.field static final isOversea:Z


# instance fields
.field mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

.field mContext:Landroid/content/Context;

.field mDownloadChangeObserver:Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;

.field mDownloadManager:Landroid/app/DownloadManager;

.field mHandler:Landroid/os/Handler;

.field mIsCheckingNow:Z

.field mLastCheckTime:J

.field mPercent:I

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mProgressDialog2:Landroid/app/ProgressDialog;

.field mReference:J

#by boba 16.03.2021
#desc ota
.field mDescr:Ljava/lang/String;

# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/OtaChecker;->CONTENT_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "ro.market.area"

    const-string v1, "china"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/systemfunc/OtaChecker;->isOversea:Z

    .line 79
    const-string v1, "persist.ota.server"

    sget-boolean v0, Lcom/car/systemfunc/OtaChecker;->isOversea:Z

    if-eqz v0, :cond_0

    const-string v0, "http://api.carassist.cn/ota/devicecheck4oversea"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/OtaChecker;->OTA_SERVER:Ljava/lang/String;

    .line 83
    const/4 v0, -0x1

    sput v0, Lcom/car/systemfunc/OtaChecker;->TYPE_NEW_VERSION:I

    .line 84
    const/4 v0, -0x2

    sput v0, Lcom/car/systemfunc/OtaChecker;->TYPE_NO_VERSION:I

    return-void

    .line 79
    :cond_0
    const-string v0, "http://api.carassist.cn/ota/devicecheck2"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/systemfunc/OtaChecker;->mIsCheckingNow:Z

    .line 88
    iput-wide v2, p0, Lcom/car/systemfunc/OtaChecker;->mLastCheckTime:J

    .line 90
    iput-wide v2, p0, Lcom/car/systemfunc/OtaChecker;->mReference:J

    .line 94
    sget v0, Lcom/car/systemfunc/OtaChecker;->TYPE_NO_VERSION:I

    iput v0, p0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    .line 97
    new-instance v0, Lcom/car/systemfunc/OtaChecker$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/OtaChecker$1;-><init>(Lcom/car/systemfunc/OtaChecker;)V

    iput-object v0, p0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

#by boba 16.03.2021
#desc ota
const-string v0, ""
iput-object v0, p0, Lcom/car/systemfunc/OtaChecker;->mDescr:Ljava/lang/String;

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/OtaChecker;J)V
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/OtaChecker;
    .param p1, "x1"    # J

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/car/systemfunc/OtaChecker;->queryDownloadStatus(J)V

    return-void
.end method

.method private queryDownloadStatus(J)V
    .locals 23
    .param p1, "checkId"    # J

    .prologue
    .line 394
    new-instance v11, Landroid/app/DownloadManager$Query;

    invoke-direct {v11}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 395
    .local v11, "query":Landroid/app/DownloadManager$Query;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-wide p1, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v6

    .line 397
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 398
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 399
    .local v14, "status":I
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 400
    .local v15, "title":Ljava/lang/String;
    const-string v17, "total_size"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 401
    .local v8, "fileSize":J
    const-string v17, "bytes_so_far"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 402
    .local v4, "bytesDL":J
    const-string v17, "uri"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 407
    .local v16, "uri":Ljava/lang/String;
    const-string v17, "reason"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 408
    .local v12, "reason":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v13, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v17, "Downloaded "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " / "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 412
    const/4 v10, 0x0

    .line 413
    .local v10, "percent":I
    const-wide/16 v18, 0x0

    cmp-long v17, v8, v18

    if-lez v17, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-lez v17, :cond_0

    .line 414
    const-wide/16 v18, 0x64

    mul-long v18, v18, v4

    div-long v18, v18, v8

    move-wide/from16 v0, v18

    long-to-int v10, v0

    .line 417
    :cond_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    .line 418
    new-instance v7, Landroid/content/Intent;

    const-string v17, "com.car.otadownload"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v7, "i":Landroid/content/Intent;
    const-string v17, "percent"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    const-string v17, "CarSvc_OtaChecker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sparse-switch v14, :sswitch_data_0

    .line 452
    .end local v4    # "bytesDL":J
    .end local v7    # "i":Landroid/content/Intent;
    .end local v8    # "fileSize":J
    .end local v10    # "percent":I
    .end local v12    # "reason":I
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "status":I
    .end local v15    # "title":Ljava/lang/String;
    .end local v16    # "uri":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 426
    .restart local v4    # "bytesDL":J
    .restart local v7    # "i":Landroid/content/Intent;
    .restart local v8    # "fileSize":J
    .restart local v10    # "percent":I
    .restart local v12    # "reason":I
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "status":I
    .restart local v15    # "title":Ljava/lang/String;
    .restart local v16    # "uri":Ljava/lang/String;
    :sswitch_0
    const-string v17, "CarSvc_OtaChecker"

    const-string v18, "STATUS_PAUSED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :sswitch_1
    const-string v17, "CarSvc_OtaChecker"

    const-string v18, "STATUS_PENDING"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :sswitch_2
    const-string v17, "CarSvc_OtaChecker"

    const-string v18, "STATUS_RUNNING"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 436
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x66

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x66

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ProgressDialog;->dismiss()V

    .line 439
    const-string v17, "CarSvc_OtaChecker"

    const-string v18, "STATUS_SUCCESSFUL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :sswitch_4
    const-string v17, "CarSvc_OtaChecker"

    const-string v18, "STATUS_FAILED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide p1, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/app/DownloadManager;->remove([J)I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "otadownload"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "downloadid"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "downloaduri"

    const-string v19, ""

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newPath"    # Ljava/lang/String;

    .prologue
    .line 456
    const/4 v2, 0x0

    .line 457
    .local v2, "bytesum":I
    const/4 v1, 0x0

    .line 458
    .local v1, "byteread":I
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v6, "oldfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 460
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 461
    .local v5, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 462
    .local v4, "fs":Ljava/io/FileOutputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 464
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 465
    add-int/2addr v2, v1

    .line 466
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    .end local v0    # "buffer":[B
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v6    # "oldfile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 473
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 468
    .restart local v0    # "buffer":[B
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "oldfile":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 469
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 470
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method doCheck(Z)V
    .locals 2
    .param p1, "needReply"    # Z

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/car/systemfunc/OtaChecker;->mIsCheckingNow:Z

    if-eqz v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/systemfunc/OtaChecker;->mIsCheckingNow:Z

    .line 481
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/systemfunc/OtaChecker$2;

    invoke-direct {v1, p0, p1}, Lcom/car/systemfunc/OtaChecker$2;-><init>(Lcom/car/systemfunc/OtaChecker;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method doLock()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    const-string v0, "ro.board.lock"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/systemfunc/OtaChecker$3;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/OtaChecker$3;-><init>(Lcom/car/systemfunc/OtaChecker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method downloadOtaFile(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 319
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/OtaChecker;->isDownloading(Landroid/net/Uri;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/car/systemfunc/OtaChecker;->removeBadDownloads()V

    .line 322
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v3, "ota.zip"

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 332
    .local v0, "request":Landroid/app/DownloadManager$Request;
    iget-object v1, p0, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/car/systemfunc/OtaChecker;->mReference:J

    .line 333
    iget-object v1, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    const-string v2, "otadownload"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "downloadid"

    iget-wide v4, p0, Lcom/car/systemfunc/OtaChecker;->mReference:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "downloaduri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    iget-object v1, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 337
    iget-object v1, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method getEmmcSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 598
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 599
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v0, v10

    .line 600
    .local v0, "blocksize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    .line 601
    .local v8, "totalblocks":J
    mul-long v6, v0, v8

    .line 602
    .local v6, "totalSize":J
    iget-object v10, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-static {v10, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, "totalsize_str":Ljava/lang/String;
    const-string v10, "SelfTest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", total="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    long-to-double v10, v6

    const-wide/high16 v12, 0x41d0000000000000L    # 1.073741824E9

    div-double v2, v10, v12

    .line 606
    .local v2, "gb":D
    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    cmpl-double v10, v2, v10

    if-lez v10, :cond_0

    const-string v10, "32G"

    .line 609
    :goto_0
    return-object v10

    .line 607
    :cond_0
    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    cmpl-double v10, v2, v10

    if-lez v10, :cond_1

    const-string v10, "16G"

    goto :goto_0

    .line 608
    :cond_1
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    cmpl-double v10, v2, v10

    if-lez v10, :cond_2

    const-string v10, "8G"

    goto :goto_0

    .line 609
    :cond_2
    const-string v10, "4G"

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x7d3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 614
    iput-object p1, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    .line 615
    new-instance v2, Lcom/car/common/CarCloudServiceImpl;

    invoke-direct {v2, p1}, Lcom/car/common/CarCloudServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    .line 616
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 617
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string v2, "com.car.otacheck"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    const-string v2, "com.car.otaprogress"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v2, "com.car.otainstall"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v2, "com.car.lock"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 624
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    const-string v3, "download"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    iput-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    .line 626
    new-instance v2, Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;-><init>(Lcom/car/systemfunc/OtaChecker;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mDownloadChangeObserver:Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;

    .line 627
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/car/systemfunc/OtaChecker;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/car/systemfunc/OtaChecker;->mDownloadChangeObserver:Lcom/car/systemfunc/OtaChecker$DownloadChangeObserver;

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 629
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 630
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setType(I)V

    .line 634
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    const-string v3, "otadownload"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "downloadid"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/car/systemfunc/OtaChecker;->mReference:J

    .line 637
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    .line 638
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/car/systemfunc/OtaChecker$4;

    invoke-direct {v5, p0}, Lcom/car/systemfunc/OtaChecker$4;-><init>(Lcom/car/systemfunc/OtaChecker;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 646
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 647
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 648
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 649
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setType(I)V

    .line 653
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 654
    new-instance v0, Ljava/io/File;

    const-string v2, "/cache/ota.zip"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 659
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method isDownloading(Landroid/net/Uri;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 341
    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 342
    .local v7, "query":Landroid/app/DownloadManager$Query;
    iget-object v9, p0, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v9, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 343
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 345
    :cond_0
    const-string v9, "total_size"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 346
    .local v2, "fileSize":I
    const-string v9, "bytes_so_far"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 347
    .local v0, "bytesDL":I
    const-string v9, "_id"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 349
    .local v4, "oldId":J
    const-string v9, "uri"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "oldUri":Ljava/lang/String;
    const-string v9, "status"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 353
    .local v8, "status":I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 355
    :cond_1
    const/4 v6, 0x0

    .line 356
    .local v6, "percent":I
    if-lez v2, :cond_2

    if-lez v0, :cond_2

    .line 357
    mul-int/lit8 v9, v0, 0x64

    div-int v6, v9, v2

    .line 359
    :cond_2
    const-string v9, "CarSvc_OtaChecker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "downloading now: oldUri="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", status="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", oldId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", percent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "bytesDL":I
    .end local v2    # "fileSize":I
    .end local v3    # "oldUri":Ljava/lang/String;
    .end local v4    # "oldId":J
    .end local v6    # "percent":I
    .end local v8    # "status":I
    :goto_0
    return v6

    .line 364
    .restart local v0    # "bytesDL":I
    .restart local v2    # "fileSize":I
    .restart local v3    # "oldUri":Ljava/lang/String;
    .restart local v4    # "oldId":J
    .restart local v8    # "status":I
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 369
    .end local v0    # "bytesDL":I
    .end local v2    # "fileSize":I
    .end local v3    # "oldUri":Ljava/lang/String;
    .end local v4    # "oldId":J
    .end local v8    # "status":I
    :cond_4
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "action":Ljava/lang/String;
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 665
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 667
    .local v4, "curTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/car/systemfunc/OtaChecker;->mLastCheckTime:J

    sub-long v12, v4, v12

    const-wide/32 v14, 0x5265c00

    cmp-long v9, v12, v14

    if-ltz v9, :cond_0

    .line 668
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/car/systemfunc/OtaChecker;->doCheck(Z)V

    .line 700
    .end local v4    # "curTime":J
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const-string v9, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 673
    const-string v9, "extra_download_id"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 675
    .local v10, "reference":J
    const-string v9, "CarSvc_OtaChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ACTION_DOWNLOAD_COMPLETE: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/car/systemfunc/OtaChecker;->mReference:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    goto :goto_0

    .line 679
    .end local v10    # "reference":J
    :cond_2
    const-string v9, "com.car.otacheck"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 680
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 681
    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/car/systemfunc/OtaChecker;->doCheck(Z)V

    goto :goto_0

    .line 682
    :cond_3
    const-string v9, "com.car.otaprogress"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 683
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.car.otadownload"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v6, "i":Landroid/content/Intent;
    const-string v9, "percent"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    invoke-virtual {v6, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 685
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 686
    .end local v6    # "i":Landroid/content/Intent;
    :cond_4
    const-string v9, "com.car.otainstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 687
    const-string v9, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 688
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_6

    :cond_5
    const-string v8, "/cache/ota.zip"

    .line 689
    :cond_6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v3, "fwFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 691
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090046

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    .line 692
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 693
    .local v7, "message":Landroid/os/Message;
    const/16 v9, 0x68

    iput v9, v7, Landroid/os/Message;->what:I

    .line 694
    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 695
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0xbb8

    invoke-virtual {v9, v7, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 697
    .end local v3    # "fwFile":Ljava/io/File;
    .end local v7    # "message":Landroid/os/Message;
    .end local v8    # "path":Ljava/lang/String;
    :cond_7
    const-string v9, "com.car.lock"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/OtaChecker;->doLock()V

    goto/16 :goto_0
.end method

.method removeBadDownloads()V
    .locals 10

    .prologue
    .line 373
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 374
    .local v4, "query":Landroid/app/DownloadManager$Query;
    iget-object v7, p0, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v7, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 375
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 377
    :cond_0
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 379
    .local v2, "oldId":J
    const-string v7, "uri"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "oldUri":Ljava/lang/String;
    const-string v7, "status"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 383
    .local v5, "status":I
    const-string v7, "title"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 385
    .local v6, "title":Ljava/lang/String;
    const-string v7, "ota"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 386
    iget-object v7, p0, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v8, 0x1

    new-array v8, v8, [J

    const/4 v9, 0x0

    aput-wide v2, v8, v9

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager;->remove([J)I

    .line 387
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 391
    .end local v1    # "oldUri":Ljava/lang/String;
    .end local v2    # "oldId":J
    .end local v5    # "status":I
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method
