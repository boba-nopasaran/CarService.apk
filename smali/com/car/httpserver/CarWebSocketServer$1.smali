.class Lcom/car/httpserver/CarWebSocketServer$1;
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

    iput-object p1, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7}, Lcom/car/httpserver/CarWebSocketServer;->access$000(Lcom/car/httpserver/CarWebSocketServer;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/car/httpserver/Util;->getTTSMute(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v6, :cond_2

    :goto_0
    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7}, Lcom/car/httpserver/CarWebSocketServer;->access$000(Lcom/car/httpserver/CarWebSocketServer;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/car/httpserver/Util;->getWakeupSensity(Landroid/content/Context;)I

    move-result v5

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7}, Lcom/car/httpserver/CarWebSocketServer;->access$100(Lcom/car/httpserver/CarWebSocketServer;)Z

    move-result v7

    if-eq v6, v7, :cond_0

    if-nez p1, :cond_0

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7, v6}, Lcom/car/httpserver/CarWebSocketServer;->access$102(Lcom/car/httpserver/CarWebSocketServer;Z)Z

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "action"

    const-string v8, "get"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "Setting.Status.Voice.Prompt"

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8}, Lcom/car/httpserver/CarWebSocketServer;->access$100(Lcom/car/httpserver/CarWebSocketServer;)Z

    move-result v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "list"

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jso.toString() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7}, Lcom/car/httpserver/CarWebSocketServer;->access$200(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7}, Lcom/car/httpserver/CarWebSocketServer;->access$200(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/WebSocket;

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v9}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7}, Lcom/car/httpserver/CarWebSocketServer;->access$300(Lcom/car/httpserver/CarWebSocketServer;)I

    move-result v7

    if-eq v5, v7, :cond_1

    if-nez p1, :cond_1

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7, v5}, Lcom/car/httpserver/CarWebSocketServer;->access$302(Lcom/car/httpserver/CarWebSocketServer;I)I

    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "action"

    const-string v8, "get"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "Setting.Status.Wake.Up"

    iget-object v8, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v8}, Lcom/car/httpserver/CarWebSocketServer;->access$300(Lcom/car/httpserver/CarWebSocketServer;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "list"

    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "CarSvc_CarWebSocketServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jso.toString() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7}, Lcom/car/httpserver/CarWebSocketServer;->access$200(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v7, p0, Lcom/car/httpserver/CarWebSocketServer$1;->this$0:Lcom/car/httpserver/CarWebSocketServer;

    invoke-static {v7}, Lcom/car/httpserver/CarWebSocketServer;->access$200(Lcom/car/httpserver/CarWebSocketServer;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/WebSocket;

    invoke-static {}, Lcom/car/httpserver/HttpRequestManager;->instance()Lcom/car/httpserver/HttpRequestManager;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v9}, Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v7
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :cond_4
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4
.end method
