.class Lcom/car/cloud/WebSocketUtil$9;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->getGpsData(Ljava/lang/String;Ljava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

.field final synthetic val$serial:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Ljava/lang/String;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$9;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$9;->val$serial:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/cloud/WebSocketUtil$9;->val$date:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/cloud/WebSocketUtil$9;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/car/cloud/TraceCacheManager;->instance()Lcom/car/cloud/TraceCacheManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/car/cloud/WebSocketUtil$9;->val$serial:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/cloud/WebSocketUtil$9;->val$date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/cloud/TraceCacheManager;->getTraceByKey(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "CarSvc_WebSocketUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find local gps data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/cloud/WebSocketUtil$9;->val$date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "gpslist"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sn"

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$9;->val$serial:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "day"

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$9;->val$date:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$9;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$9;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    const/16 v5, 0x64

    invoke-static {v3, v4, v5, v1, v2}, Lcom/car/cloud/WebSocketUtil;->access$800(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "CarSvc_WebSocketUtil"

    const-string v4, "getGpsData err"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v3, "CarSvc_WebSocketUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ask remote gps data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/cloud/WebSocketUtil$9;->val$date:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "sn"

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$9;->val$serial:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "day"

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$9;->val$date:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "spurl"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$9;->this$0:Lcom/car/cloud/WebSocketUtil;

    const-string v4, "gpslist"

    new-instance v5, Lcom/car/cloud/WebSocketUtil$9$1;

    invoke-direct {v5, p0}, Lcom/car/cloud/WebSocketUtil$9$1;-><init>(Lcom/car/cloud/WebSocketUtil$9;)V

    invoke-static {v3, v4, v1, v5}, Lcom/car/cloud/WebSocketUtil;->access$1000(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "CarSvc_WebSocketUtil"

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
