.class Lcom/car/httpserver/SelfTest$5;
.super Ljava/lang/Object;
.source "SelfTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/SelfTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/SelfTest;


# direct methods
.method constructor <init>(Lcom/car/httpserver/SelfTest;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v10, v13, v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v11, v13, v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v13, v14

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v13, v10, v11

    if-ltz v13, :cond_6

    cmpl-float v13, v10, v12

    if-ltz v13, :cond_6

    move v8, v10

    move v10, v12

    move v12, v8

    :cond_0
    :goto_0
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v14}, Lcom/car/httpserver/SelfTest;->access$500(Lcom/car/httpserver/SelfTest;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v15}, Lcom/car/httpserver/SelfTest;->access$600(Lcom/car/httpserver/SelfTest;)F

    move-result v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v15}, Lcom/car/httpserver/SelfTest;->access$700(Lcom/car/httpserver/SelfTest;)F

    move-result v15

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_1

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v14}, Lcom/car/httpserver/SelfTest;->access$500(Lcom/car/httpserver/SelfTest;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v15}, Lcom/car/httpserver/SelfTest;->access$800(Lcom/car/httpserver/SelfTest;)F

    move-result v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v15}, Lcom/car/httpserver/SelfTest;->access$700(Lcom/car/httpserver/SelfTest;)F

    move-result v15

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v13}, Lcom/car/httpserver/SelfTest;->access$500(Lcom/car/httpserver/SelfTest;)F

    move-result v13

    sub-float v13, v12, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v14}, Lcom/car/httpserver/SelfTest;->access$500(Lcom/car/httpserver/SelfTest;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v15}, Lcom/car/httpserver/SelfTest;->access$900(Lcom/car/httpserver/SelfTest;)F

    move-result v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v15}, Lcom/car/httpserver/SelfTest;->access$700(Lcom/car/httpserver/SelfTest;)F

    move-result v15

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    iget-wide v14, v13, Lcom/car/httpserver/SelfTest;->mTimeCalculation:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Lcom/car/httpserver/SelfTest;->mTimeCalculation:J

    :cond_2
    :goto_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v13, "f"

    const-string v14, "report"

    invoke-virtual {v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "x"

    float-to-double v14, v10

    invoke-virtual {v5, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v13, "y"

    float-to-double v14, v11

    invoke-virtual {v5, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v13, "z"

    float-to-double v14, v12

    invoke-virtual {v5, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v13, "passed"

    invoke-virtual {v5, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "gsensor"

    invoke-virtual {v6, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v13}, Lcom/car/httpserver/SelfTest;->access$400(Lcom/car/httpserver/SelfTest;)Lcom/car/httpserver/CarWebSocketServer;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v13}, Lcom/car/httpserver/SelfTest;->access$400(Lcom/car/httpserver/SelfTest;)Lcom/car/httpserver/CarWebSocketServer;

    move-result-object v13

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    iget-boolean v13, v13, Lcom/car/httpserver/SelfTest;->mEverFound:Z

    if-eqz v13, :cond_5

    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v13, "f"

    const-string v14, "report"

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "passed"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v13, "bluetooth"

    invoke-virtual {v7, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v13}, Lcom/car/httpserver/SelfTest;->access$400(Lcom/car/httpserver/SelfTest;)Lcom/car/httpserver/CarWebSocketServer;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v13}, Lcom/car/httpserver/SelfTest;->access$400(Lcom/car/httpserver/SelfTest;)Lcom/car/httpserver/CarWebSocketServer;

    move-result-object v13

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    move-object v6, v7

    :cond_5
    :goto_3
    return-void

    :cond_6
    cmpl-float v13, v11, v10

    if-ltz v13, :cond_0

    cmpl-float v13, v11, v12

    if-ltz v13, :cond_0

    move v8, v11

    move v11, v12

    move v12, v8

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    iget-wide v0, v13, Lcom/car/httpserver/SelfTest;->mTimeCalculation:J

    move-wide/from16 v16, v0

    sub-long v2, v14, v16

    const-wide/16 v14, 0x1388

    cmp-long v13, v2, v14

    if-lez v13, :cond_2

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    iget-wide v14, v13, Lcom/car/httpserver/SelfTest;->mTimeCalculation:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Lcom/car/httpserver/SelfTest;->mTimeCalculation:J

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/SelfTest$5;->this$0:Lcom/car/httpserver/SelfTest;

    iget-wide v0, v13, Lcom/car/httpserver/SelfTest;->mTimeCalculation:J

    move-wide/from16 v16, v0

    sub-long v2, v14, v16

    const-wide/16 v14, 0x1388

    cmp-long v13, v2, v14

    if-lez v13, :cond_2

    const/4 v9, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v4

    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v6, v7

    goto :goto_4
.end method
