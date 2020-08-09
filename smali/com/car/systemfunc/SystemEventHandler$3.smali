.class Lcom/car/systemfunc/SystemEventHandler$3;
.super Ljava/lang/Object;
.source "SystemEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/SystemEventHandler;->monitorNow(IJIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/SystemEventHandler;

.field final synthetic val$camid:I

.field final synthetic val$dir:Ljava/lang/String;

.field final synthetic val$lengthBackward:I

.field final synthetic val$lengthForward:I

.field final synthetic val$relayid:J

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/car/systemfunc/SystemEventHandler;IJIILjava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    iput p2, p0, Lcom/car/systemfunc/SystemEventHandler$3;->val$type:I

    iput-wide p3, p0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    iput p5, p0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthBackward:I

    iput p6, p0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    iput-object p7, p0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    iput p8, p0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthForward:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    const-string v33, "/data/"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$type:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    const-string v31, "/data/media/0/Pictures/"

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$type:I

    move/from16 v32, v0

    const/16 v35, 0x4

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    const/16 v32, 0x5

    :goto_1
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Z

    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v31, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v31, "alarmType"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$type:I

    move/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v31, "sys.current.gpsinfo"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_0

    const-string v31, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    const/16 v31, 0x2

    aget-object v31, v20, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v10

    ushr-int/lit8 v28, v10, 0x1e

    const-string v31, "coordtype"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v31, "lat"

    const/16 v32, 0x0

    aget-object v32, v20, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v31, "lng"

    const/16 v32, 0x1

    aget-object v32, v20, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$type:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    const-string v34, "tping"

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    const-string v31, "text"

    const-string v32, "ImageCapture"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    const-string v34, "tping"

    const/16 v35, 0xa

    invoke-virtual/range {v31 .. v35}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthBackward:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    const/16 v23, 0x1

    :goto_2
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/car/common/CameraServiceImpl;->takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    const-string v31, "CarSvc_SystemEventHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Capture front photo: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_2

    const-string v31, "CarSvc_SystemEventHandler"

    const-string v32, "Try again"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v32, 0x1388

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/car/common/CameraServiceImpl;->takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    :cond_2
    if-nez v24, :cond_3

    const-string v24, ""

    :cond_3
    const-string v31, "imgurl"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v34, v0

    const-string v33, "tping"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/car/systemfunc/SystemEventHandler;->isDualCVBS()Z

    move-result v31

    if-eqz v31, :cond_f

    const/16 v31, 0x1e

    :goto_3
    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-object/from16 v3, v33

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    const-string v31, "persist.usb.cam.bad"

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-nez v31, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_10

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/car/common/CameraServiceImpl;->takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    const-string v31, "CarSvc_SystemEventHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Capture rear photo: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_6

    const-string v31, "CarSvc_SystemEventHandler"

    const-string v32, "Try again"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v32, 0x1388

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/car/common/CameraServiceImpl;->takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    :cond_6
    :goto_4
    if-nez v24, :cond_7

    const-string v24, ""

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v34, v0

    const-string v33, "tping"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/car/systemfunc/SystemEventHandler;->isDualCVBS()Z

    move-result v31

    if-eqz v31, :cond_12

    const/16 v31, 0x46

    :goto_6
    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    move-object/from16 v3, v33

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    const-string v31, "imgurlrear"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/car/systemfunc/SystemEventHandler;->isDualCVBS()Z

    move-result v31

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    if-eqz v31, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x4

    if-eqz v31, :cond_13

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/car/common/CameraServiceImpl;->takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    const-string v31, "CarSvc_SystemEventHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Capture inside photo: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_9

    const-string v31, "CarSvc_SystemEventHandler"

    const-string v32, "Try again"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v32, 0x1388

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/car/common/CameraServiceImpl;->takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    :cond_9
    :goto_7
    if-nez v24, :cond_a

    const-string v24, ""

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    const-string v34, "tping"

    const/16 v35, 0x64

    invoke-virtual/range {v31 .. v35}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    const-string v31, "imgurlinside"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    :goto_8
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const-string v31, "com.car.monitor.notify"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v31, "operation"

    const-string v32, "capd"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v31, "id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v31, "percent"

    const/16 v32, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v31, "result"

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v31, "CarSvc_SystemEventHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "monitor: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v32, 0xbb8

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler;->myWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    return-void

    :cond_c
    const-string v31, "/data/media/0/Movies/"

    goto/16 :goto_0

    :cond_d
    const/16 v32, 0xa

    goto/16 :goto_1

    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_f
    const/16 v31, 0x32

    goto/16 :goto_3

    :cond_10
    :try_start_1
    const-string v24, ""

    goto/16 :goto_4

    :cond_11
    const-string v24, ""

    goto/16 :goto_5

    :cond_12
    const/16 v31, 0x64

    goto/16 :goto_6

    :cond_13
    const-string v24, ""

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$type:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const-string v31, "text"

    const-string v32, "VideoCapture"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    const-string v34, "vring"

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    add-int/lit8 v9, v31, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler;->mLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v31, "persist.remote.record.param"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthForward:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ","

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthBackward:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    if-eqz v31, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_16

    :cond_15
    const-string v31, "sys.car.dvr.accident.f"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string v31, "persist.usb.cam.bad"

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-nez v31, :cond_18

    invoke-static {}, Lcom/car/systemfunc/SystemEventHandler;->access$600()Z

    move-result v31

    if-nez v31, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    if-eqz v31, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_18

    :cond_17
    const-string v31, "sys.car.dvr.accident.b"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    monitor-exit v32
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    const-string v34, "vring"

    const/16 v35, 0xa

    invoke-virtual/range {v31 .. v35}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    const/16 v17, 0x0

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthForward:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v34, v0

    sub-long v26, v32, v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthBackward:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v12, v32, v34

    move/from16 v18, v17

    :goto_a
    add-int/lit8 v17, v18, 0x1

    const/16 v31, 0x28

    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_19

    const-string v31, "sys.dvr.remotecap.front"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v31, "sys.dvr.remotecap.back"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v31, 0xa

    move/from16 v0, v17

    move/from16 v1, v31

    if-lt v0, v1, :cond_20

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v31

    if-gtz v31, :cond_1c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v31

    if-gtz v31, :cond_1c

    :cond_19
    new-instance v30, Ljava/lang/Object;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    if-eqz v22, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthBackward:I

    move/from16 v31, v0

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$lengthBackward:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0xa

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V

    :cond_1a
    const-string v31, "CarSvc_SystemEventHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Retry now for "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v34, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_b
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ge v8, v0, :cond_23

    if-nez v8, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    if-eqz v31, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_24

    :cond_1b
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :catchall_0
    move-exception v31

    :try_start_4
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v31

    :catch_0
    move-exception v31

    goto/16 :goto_9

    :cond_1c
    const-string v31, "videourl"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1d

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1d

    const/16 v22, 0x0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v31, "videourl"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v31, "CarSvc_SystemEventHandler"

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "persist.usb.cam.bad"

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-nez v31, :cond_19

    invoke-static {}, Lcom/car/systemfunc/SystemEventHandler;->access$600()Z

    move-result v31

    if-nez v31, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_19

    :cond_1d
    const-string v31, "videourlrear"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1e

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1e

    const/16 v22, 0x0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$dir:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v31, "videourlrear"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v31, "CarSvc_SystemEventHandler"

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_19

    :cond_1e
    :goto_d
    const-string v31, "videourl"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1f

    const-string v31, "videourlrear"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_19

    :cond_1f
    const-wide/16 v32, 0x3e8

    invoke-static/range {v32 .. v33}, Landroid/os/SystemClock;->sleep(J)V

    move/from16 v18, v17

    goto/16 :goto_a

    :cond_20
    const/16 v31, 0x9

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    const-string v34, "vring"

    const/16 v35, 0x32

    invoke-virtual/range {v31 .. v35}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    goto :goto_d

    :cond_21
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v8, v0, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    if-eqz v31, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$camid:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-nez v31, :cond_1b

    :cond_22
    const-string v31, "persist.usb.cam.bad"

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-nez v31, :cond_23

    invoke-static {}, Lcom/car/systemfunc/SystemEventHandler;->access$600()Z

    move-result v31

    if-eqz v31, :cond_24

    :cond_23
    const-string v31, "sys.dvr.remotecap.front"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v31, "sys.dvr.remotecap.back"

    const-string v32, ""

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    const-string v34, "vring"

    const/16 v35, 0x64

    invoke-virtual/range {v31 .. v35}, Lcom/car/systemfunc/SystemEventHandler;->progressReport(JLjava/lang/String;I)V

    goto/16 :goto_8

    :cond_24
    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v31

    if-eqz v31, :cond_25

    const-string v31, "CarSvc_SystemEventHandler"

    const-string v32, "capture path is full, no space now"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_25
    new-instance v19, Landroid/content/IntentFilter;

    const-string v31, "com.car.camera.snapshot.callback"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v31

    new-instance v32, Lcom/car/systemfunc/SystemEventHandler$3$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/car/systemfunc/SystemEventHandler$3$1;-><init>(Lcom/car/systemfunc/SystemEventHandler$3;Lorg/json/JSONObject;Ljava/lang/Object;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v25, Landroid/content/Intent;

    const-string v31, "com.car.camera.snapshot"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v31, "camid"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v31, "starttime"

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v31, "endtime"

    long-to-int v0, v12

    move/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v31, "compress"

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v31, "picture"

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v31, "seqid"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->val$relayid:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/SystemEventHandler$3;->this$0:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/car/systemfunc/SystemEventHandler;->access$000(Lcom/car/systemfunc/SystemEventHandler;)Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    monitor-enter v30
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-wide/32 v32, 0x493e0

    :try_start_7
    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit v30

    goto/16 :goto_c

    :catchall_1
    move-exception v31

    monitor-exit v30
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v31
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_1
    move-exception v11

    :try_start_9
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_c
.end method
