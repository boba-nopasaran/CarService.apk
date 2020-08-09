.class Lcom/car/httpserver/CarWebSocketServer$2;
.super Landroid/database/ContentObserver;
.source "CarWebSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/CarWebSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/CarWebSocketServer;


# direct methods
.method constructor <init>(Lcom/car/httpserver/CarWebSocketServer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11

    if-nez p1, :cond_0

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8}, Lcom/car/httpserver/CarWebSocketServer;->access$000(Lcom/car/httpserver/CarWebSocketServer;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/car/httpserver/Util;->getBrightnessCurrent(Landroid/content/Context;)I

    move-result v7

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8}, Lcom/car/httpserver/CarWebSocketServer;->access$400(Lcom/car/httpserver/CarWebSocketServer;)I

    move-result v8

    if-eq v7, v8, :cond_0

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8, v7}, Lcom/car/httpserver/CarWebSocketServer;->access$402(Lcom/car/httpserver/CarWebSocketServer;I)I

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "action"

    const-string v9, "get"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8}, Lcom/car/httpserver/CarWebSocketServer;->access$000(Lcom/car/httpserver/CarWebSocketServer;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/car/httpserver/Util;->getBrightnessMin(Landroid/content/Context;)I

    move-result v6

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8}, Lcom/car/httpserver/CarWebSocketServer;->access$000(Lcom/car/httpserver/CarWebSocketServer;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/car/httpserver/Util;->getBrightnessMax(Landroid/content/Context;)I

    move-result v5

    const-string v8, "Setting.Status.Brightness"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "min:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",max:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",current:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v10}, Lcom/car/httpserver/CarWebSocketServer;->access$400(Lcom/car/httpserver/CarWebSocketServer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "list"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "CarSvc_CarWebSocketServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "jso.toString() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8}, Lcom/car/httpserver/CarWebSocketServer;->access$200(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/List;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$2;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8}, Lcom/car/httpserver/CarWebSocketServer;->access$200(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/WebSocket;

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
