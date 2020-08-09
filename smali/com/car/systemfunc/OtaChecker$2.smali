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

    iput-object p1, p0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    iput-boolean p2, p0, Lcom/car/systemfunc/OtaChecker$2;->val$needReply:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/car/common/CarCloudServiceImpl;->getCloudId()J

    move-result-wide v6

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

    invoke-static {v4}, Lcom/car/utils/HttpRequestManager;->requestHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

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

    :cond_0
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/car/systemfunc/OtaChecker;->mLastCheckTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x65

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

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

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/car/systemfunc/OtaChecker;->mIsCheckingNow:Z

    const/4 v8, 0x0

    const/16 v16, -0x1

    :try_start_0
    new-instance v17, Lorg/json/JSONTokener;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v19, "ret"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    const-string v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v19, "hash"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v19, "flag"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

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

    :cond_2
    :goto_0
    const/4 v5, 0x1

    if-eqz v8, :cond_3

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

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const/4 v5, 0x0

    :cond_3
    if-eqz v5, :cond_4

    new-instance v10, Ljava/io/File;

    const-string v19, "/cache/ota.zip"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x67

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/OtaChecker$2;->val$needReply:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    if-eqz v8, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    const/16 v19, 0x64

    move/from16 v0, v19

    iput v0, v14, Landroid/os/Message;->what:I

    move/from16 v0, v16

    iput v0, v14, Landroid/os/Message;->arg1:I

    iput-object v8, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker$2;->this$0:Lcom/car/systemfunc/OtaChecker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/systemfunc/OtaChecker;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

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
