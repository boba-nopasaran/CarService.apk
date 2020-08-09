.class Lcom/car/httpserver/SelfTest$3;
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

    iput-object p1, p0, Lcom/car/httpserver/SelfTest$3;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    const/4 v8, 0x1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v3, v6, v7

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v6, v8

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v5, v6, v7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "f"

    const-string v7, "report"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "x"

    float-to-double v8, v3

    invoke-virtual {v1, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "y"

    float-to-double v8, v4

    invoke-virtual {v1, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "z"

    float-to-double v8, v5

    invoke-virtual {v1, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "passed"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "magsensor"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/car/httpserver/SelfTest$3;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v6}, Lcom/car/httpserver/SelfTest;->access$400(Lcom/car/httpserver/SelfTest;)Lcom/car/httpserver/CarWebSocketServer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/httpserver/SelfTest$3;->this$0:Lcom/car/httpserver/SelfTest;

    invoke-static {v6}, Lcom/car/httpserver/SelfTest;->access$400(Lcom/car/httpserver/SelfTest;)Lcom/car/httpserver/CarWebSocketServer;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
