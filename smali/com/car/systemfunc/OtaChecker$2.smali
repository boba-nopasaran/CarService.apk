.class Lcom/car/systemfunc/OtaChecker$2;
.super Ljava/lang/Object;
.source "OtaChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/OtaChecker;->doCheck(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/OtaChecker;

.field final synthetic val$needReply:Z


# direct methods
.method constructor <init>(Lcom/car/systemfunc/OtaChecker;Z)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    iput-boolean p2, p0, Lcom/car/systemfunc/OtaChecker$2;->val$needReply:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/car/common/CarCloudServiceImpl;->getCloudId()J

    move-result-wide v6

    .line 487
    .local v6, "deviceId":J
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/car/systemfunc/OtaChecker;->OTA_SERVER:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "?deviceid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&serial="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ro.device.id"

    sget-object v21, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&typeid="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ro.ota.typeid"

    const-string v21, "default"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&version="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ro.product.fw_ver"

    const-string v21, "0.0.1"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&platform="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ro.hardware"

    const-string v21, "unknown"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&gpsinfo="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "sys.current.gpsinfo"

    const-string v21, "0"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, "Url":Ljava/lang/String;
    invoke-static {v4}, Lcom/car/utils/HttpRequestManager;->requestHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 501
    .local v15, "result":Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 502
    const-string v19, "CarSvc_OtaChecker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/car/systemfunc/OtaChecker;->mLastCheckTime:J

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x65

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x65

    const-wide/32 v22, 0x5265c00

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 509
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/car/systemfunc/OtaChecker;->mIsCheckingNow:Z

    .line 511
    const/4 v8, 0x0

    .line 512
    .local v8, "downLoadUrl":Ljava/lang/String;
    const/16 v16, -0x1

    .line 515
    .local v16, "ret":I
    :try_start_0
    new-instance v17, Lorg/json/JSONTokener;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 516
    .local v17, "tokener":Lorg/json/JSONTokener;
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 517
    .local v13, "joResult":Lorg/json/JSONObject;
    const-string v19, "ret"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 518
    if-nez v16, :cond_2

    .line 519
    const-string v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 520
    const-string v19, "hash"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 521
    .local v12, "hash":Ljava/lang/String;
    const-string v19, "flag"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 522
    .local v11, "flag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "otadownload"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "hash"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "flag"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v11    # "flag":I
    .end local v12    # "hash":Ljava/lang/String;
    .end local v13    # "joResult":Lorg/json/JSONObject;
    .end local v17    # "tokener":Lorg/json/JSONTokener;
    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 530
    .local v5, "directInstall":Z
    if-eqz v8, :cond_3

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "ACTION_FOTA_AVAILABLE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "otadownload"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "downloaduri"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 533
    .local v18, "uri":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 534
    const/4 v5, 0x0

    .line 538
    .end local v18    # "uri":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 539
    new-instance v10, Ljava/io/File;

    const-string v19, "/cache/ota.zip"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x67

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    .end local v10    # "file":Ljava/io/File;
    :goto_1
    return-void

    .line 524
    .end local v5    # "directInstall":Z
    :catch_0
    move-exception v9

    .line 526
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "directInstall":Z
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/OtaChecker$2;->val$needReply:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    if-eqz v8, :cond_6

    .line 547
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 549
    .local v14, "msg":Landroid/os/Message;
    const/16 v19, 0x64

    move/from16 v0, v19

    iput v0, v14, Landroid/os/Message;->what:I

    .line 550
    move/from16 v0, v16

    iput v0, v14, Landroid/os/Message;->arg1:I

    .line 551
    iput-object v8, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 554
    .end local v14    # "msg":Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "ACTION_FOTA_TOHQNONEWVERSION"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
