.class Lcom/car/systemfunc/SystemEventHandler$1$1;
.super Ljava/lang/Object;
.source "SystemEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SystemEventHandler$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/systemfunc/SystemEventHandler$1;

.field final synthetic val$isCap:Z


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$1$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$1;

    iput-boolean p2, p0, Lcom/car/systemfunc/SystemEventHandler$1$1;->val$isCap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    const/4 v8, 0x0

    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v14, "sys.current.gpsinfo"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    const-string v14, ":"

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v14, v11

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shr-int/lit8 v13, v4, 0x1e

    const-string v14, "coordtype"

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "lat"

    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "lng"

    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v15, "text"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/car/systemfunc/SystemEventHandler$1$1;->val$isCap:Z

    if-eqz v14, :cond_2

    const-string v14, "VideoCap"

    :goto_0
    invoke-virtual {v12, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v9, v8

    :goto_1
    add-int/lit8 v8, v9, 0x1

    const/16 v14, 0x78

    if-ge v9, v14, :cond_1

    const-string v14, "sys.dvr.remotecap.front"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v14, "sys.dvr.remotecap.back"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0xa

    if-lt v8, v14, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_3

    :cond_1
    const-string v14, "sys.dvr.remotecap.front"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "sys.dvr.remotecap.back"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v14, "com.car.monitor.notify"

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "operation"

    const-string v15, "capd"

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "id"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v14, "percent"

    const/16 v15, 0x64

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "result"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "CarSvc_SystemEventHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "VideoLock: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/systemfunc/SystemEventHandler$1$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$1;

    iget-object v14, v14, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    invoke-static {v14}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-wide/16 v14, 0xbb8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/systemfunc/SystemEventHandler$1$1;->this$1:Lcom/car/systemfunc/SystemEventHandler$1;

    iget-object v14, v14, Lcom/car/systemfunc/SystemEventHandler$1;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iget-object v14, v14, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    return-void

    :cond_2
    :try_start_1
    const-string v14, "VideoLock"

    goto/16 :goto_0

    :cond_3
    const-string v14, "videourl"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "1,"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/car/systemfunc/SystemEventHandler$1$1;->val$isCap:Z

    if-eqz v14, :cond_7

    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "videourl"

    invoke-virtual {v12, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "CarSvc_SystemEventHandler"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "persist.usb.cam.bad"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_4
    const-string v14, "videourlrear"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "1,"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/car/systemfunc/SystemEventHandler$1$1;->val$isCap:Z

    if-eqz v14, :cond_8

    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v14

    :goto_4
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v14, "videourlrear"

    invoke-virtual {v12, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "CarSvc_SystemEventHandler"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v14, "videourl"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "videourlrear"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_6
    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    move v9, v8

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    :cond_8
    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_4

    :catch_0
    move-exception v14

    goto/16 :goto_2
.end method
