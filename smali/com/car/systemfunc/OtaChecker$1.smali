.class Lcom/car/systemfunc/OtaChecker$1;
.super Landroid/os/Handler;
.source "OtaChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/OtaChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/OtaChecker;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/OtaChecker;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/car/systemfunc/OtaChecker;->doLock()V

    goto :goto_0

    .line 106
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    const-string v11, "/cache/ota.zip"

    .line 107
    .local v11, "path":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/Intent;

    const-string v18, "ACTION_FOTA_BEFORERECOVERY"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/car/systemfunc/OtaChecker$1$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/car/systemfunc/OtaChecker$1$1;-><init>(Lcom/car/systemfunc/OtaChecker$1;Ljava/lang/String;)V

    const-wide/16 v18, 0xbb8

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 106
    .end local v11    # "path":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v11, v16

    goto :goto_1

    .line 124
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->dismiss()V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    .line 126
    new-instance v10, Landroid/content/Intent;

    const-string v16, "com.car.otadownload"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v10, "intent":Landroid/content/Intent;
    const-string v16, "percent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "otadownload"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v17, "flag"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 131
    .local v6, "flag":I
    and-int/lit8 v16, v6, 0x1

    if-eqz v16, :cond_1

    .line 132
    const-string v16, "CarSvc_OtaChecker"

    const-string v17, "install now"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090046

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    .line 134
    const/16 v16, 0x68

    const-wide/16 v18, 0xbb8

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/OtaChecker$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 136
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    const v16, 0x7f090045

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 138
    const v16, 0x7f090046

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 140
    const v16, 0x7f090004

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    const v16, 0x7f09003c

    new-instance v17, Lcom/car/systemfunc/OtaChecker$1$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/OtaChecker$1$2;-><init>(Lcom/car/systemfunc/OtaChecker$1;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 151
    .local v5, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d3

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 153
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 159
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "dialog":Landroid/app/AlertDialog;
    .end local v6    # "flag":I
    .end local v10    # "intent":Landroid/content/Intent;
    :pswitch_4
    :try_start_0
    const-string v16, "/sdcard/Download/ota.zip"

    invoke-static/range {v16 .. v16}, Lcom/car/utils/QETag;->file(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "hash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "otadownload"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v17, "hash"

    const-string v18, ""

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, "serverHash":Ljava/lang/String;
    const-string v16, "CarSvc_OtaChecker"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "MSG_DOWNLOAD_FINISH, hash="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", serverHash="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mDownloadManager:Landroid/app/DownloadManager;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/car/systemfunc/OtaChecker;->mReference:J

    move-wide/from16 v20, v0

    aput-wide v20, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/app/DownloadManager;->remove([J)I

    .line 164
    const-string v16, "CarSvc_OtaChecker"

    const-string v17, "File corrupted, need redownload"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const v16, 0x7f090041

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 168
    const v16, 0x7f090043

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 169
    const v16, 0x7f09003c

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 171
    .restart local v5    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d3

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 173
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    sget v17, Lcom/car/systemfunc/OtaChecker;->TYPE_NO_VERSION:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    .line 175
    new-instance v9, Landroid/content/Intent;

    const-string v16, "com.car.otadownload"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v9, "i":Landroid/content/Intent;
    const-string v16, "percent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 218
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "dialog":Landroid/app/AlertDialog;
    .end local v8    # "hash":Ljava/lang/String;
    .end local v9    # "i":Landroid/content/Intent;
    .end local v14    # "serverHash":Ljava/lang/String;
    :catch_0
    move-exception v16

    goto/16 :goto_0

    .line 181
    .restart local v8    # "hash":Ljava/lang/String;
    .restart local v14    # "serverHash":Ljava/lang/String;
    :cond_2
    new-instance v16, Ljava/lang/Thread;

    new-instance v17, Lcom/car/systemfunc/OtaChecker$1$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/car/systemfunc/OtaChecker$1$3;-><init>(Lcom/car/systemfunc/OtaChecker$1;Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 224
    .end local v8    # "hash":Ljava/lang/String;
    .end local v14    # "serverHash":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->dismiss()V

    .line 225
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 226
    .local v13, "ret":I
    if-ltz v13, :cond_7

    .line 227
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 228
    .local v15, "url":Ljava/lang/String;
    sget v7, Lcom/car/systemfunc/OtaChecker;->TYPE_NO_VERSION:I

    .line 229
    .local v7, "hasVersion":I
    if-eqz v15, :cond_6

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/car/systemfunc/OtaChecker;->isDownloading(Landroid/net/Uri;)I

    move-result v12

    .line 231
    .local v12, "percent":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_5

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "otadownload"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v17, "flag"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 234
    .restart local v6    # "flag":I
    and-int/lit8 v16, v6, 0x2

    if-nez v16, :cond_3

    const-string v16, "ro.product.class"

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "headless"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 235
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/car/systemfunc/OtaChecker;->downloadOtaFile(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 238
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const v16, 0x7f090044

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 241
    const v16, 0x7f09003c

    new-instance v17, Lcom/car/systemfunc/OtaChecker$1$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/car/systemfunc/OtaChecker$1$4;-><init>(Lcom/car/systemfunc/OtaChecker$1;Ljava/lang/String;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    const v16, 0x7f090004

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 252
    .restart local v5    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d3

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 254
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 256
    sget v7, Lcom/car/systemfunc/OtaChecker;->TYPE_NEW_VERSION:I

    .line 275
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "dialog":Landroid/app/AlertDialog;
    .end local v6    # "flag":I
    .end local v12    # "percent":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v7, v0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    .line 276
    new-instance v9, Landroid/content/Intent;

    const-string v16, "com.car.otadownload"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .restart local v9    # "i":Landroid/content/Intent;
    const-string v16, "percent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 258
    .end local v9    # "i":Landroid/content/Intent;
    .restart local v12    # "percent":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->show()V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mProgressDialog2:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_2

    .line 262
    .end local v12    # "percent":I
    :cond_6
    sget v7, Lcom/car/systemfunc/OtaChecker;->TYPE_NO_VERSION:I

    .line 263
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const v16, 0x7f09003d

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "V"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ro.product.fw_ver"

    const-string v18, "0.0.1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 269
    const v16, 0x7f09003c

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 271
    .restart local v5    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d3

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 273
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 280
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "dialog":Landroid/app/AlertDialog;
    .end local v7    # "hasVersion":I
    .end local v15    # "url":Ljava/lang/String;
    :cond_7
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    const v16, 0x7f090041

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 283
    const v16, 0x7f090042

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 284
    const v16, 0x7f09003c

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 286
    .restart local v5    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d3

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 288
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    sget v17, Lcom/car/systemfunc/OtaChecker;->TYPE_NO_VERSION:I

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    .line 290
    new-instance v9, Landroid/content/Intent;

    const-string v16, "com.car.otadownload"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v9    # "i":Landroid/content/Intent;
    const-string v16, "percent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/car/systemfunc/OtaChecker;->mPercent:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$1;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
