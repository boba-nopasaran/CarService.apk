.class Lcom/car/httpserver/HttpRequestManager$1;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/httpserver/HttpRequestManager;->requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/HttpRequestManager;

.field final synthetic val$conn:Lorg/java_websocket/WebSocket;

.field final synthetic val$send:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/httpserver/HttpRequestManager;Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/HttpRequestManager$1;->this$0:Lcom/car/httpserver/HttpRequestManager;

    iput-object p2, p0, Lcom/car/httpserver/HttpRequestManager$1;->val$conn:Lorg/java_websocket/WebSocket;

    iput-object p3, p0, Lcom/car/httpserver/HttpRequestManager$1;->val$send:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/car/httpserver/HttpRequestManager$1;->val$conn:Lorg/java_websocket/WebSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/httpserver/HttpRequestManager$1;->val$conn:Lorg/java_websocket/WebSocket;

    invoke-interface {v1}, Lorg/java_websocket/WebSocket;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/car/httpserver/HttpRequestManager$1;->val$conn:Lorg/java_websocket/WebSocket;

    iget-object v2, p0, Lcom/car/httpserver/HttpRequestManager$1;->val$send:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/channels/NotYetConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/java_websocket/exceptions/WebsocketNotConnectedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_HttpRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotYetConnectedException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/httpserver/HttpRequestManager$1;->val$conn:Lorg/java_websocket/WebSocket;

    invoke-interface {v1}, Lorg/java_websocket/WebSocket;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
