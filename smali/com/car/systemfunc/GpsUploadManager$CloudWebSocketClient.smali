.class Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "GpsUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/GpsUploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloudWebSocketClient"
.end annotation


# instance fields
.field private mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

.field final synthetic this$0:Lcom/car/systemfunc/GpsUploadManager;


# direct methods
.method public constructor <init>(Lcom/car/systemfunc/GpsUploadManager;Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    invoke-direct {p0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v0, v0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClose code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remote="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lcom/car/systemfunc/GpsUploadManager;->access$200(Lcom/car/systemfunc/GpsUploadManager;Ljava/lang/Exception;I)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v0, v0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    const-string v1, "onError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v2, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    const/4 v1, 0x2

    invoke-static {v0, v2, v1}, Lcom/car/systemfunc/GpsUploadManager;->access$200(Lcom/car/systemfunc/GpsUploadManager;Ljava/lang/Exception;I)V

    return-void
.end method

.method public onFragment(Lorg/java_websocket/framing/Framedata;)V
    .locals 10

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v2

    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFragment, fin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",opcode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq v2, v5, :cond_0

    sget-object v5, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq v2, v5, :cond_0

    sget-object v5, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v2, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    if-nez v5, :cond_2

    new-instance v5, Lcom/car/systemfunc/GpsUploadManager$FragementData;

    invoke-direct {v5, p1, v2}, Lcom/car/systemfunc/GpsUploadManager$FragementData;-><init>(Lorg/java_websocket/framing/Framedata;Lorg/java_websocket/framing/Framedata$Opcode;)V

    iput-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    :goto_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager$FragementData;->msgType:Lorg/java_websocket/framing/Framedata$Opcode;

    sget-object v6, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v5, v6, :cond_3

    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    invoke-static {v5}, Lcom/car/systemfunc/GpsUploadManager$FragementData;->access$100(Lcom/car/systemfunc/GpsUploadManager$FragementData;)Lorg/java_websocket/framing/Framedata;

    move-result-object v5

    invoke-interface {v5, p1}, Lorg/java_websocket/framing/Framedata;->append(Lorg/java_websocket/framing/Framedata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    const-string v6, "append(frame) error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager$FragementData;->msgType:Lorg/java_websocket/framing/Framedata$Opcode;

    sget-object v6, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    invoke-static {v6}, Lcom/car/systemfunc/GpsUploadManager$FragementData;->access$100(Lcom/car/systemfunc/GpsUploadManager$FragementData;)Lorg/java_websocket/framing/Framedata;

    move-result-object v6

    invoke-interface {v6}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v5}, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->onMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPendingFrame.msgType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v7, v7, Lcom/car/systemfunc/GpsUploadManager$FragementData;->msgType:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Error??????"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager$FragementData;->msgType:Lorg/java_websocket/framing/Framedata$Opcode;

    sget-object v6, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager$FragementData;->jso:Lorg/json/JSONObject;

    if-nez v5, :cond_6

    :cond_6
    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager$FragementData;->jso:Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager$FragementData;->jso:Lorg/json/JSONObject;

    const-string v6, "size"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    invoke-static {v5}, Lcom/car/systemfunc/GpsUploadManager$FragementData;->access$100(Lcom/car/systemfunc/GpsUploadManager$FragementData;)Lorg/java_websocket/framing/Framedata;

    move-result-object v5

    invoke-interface {v5}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v5, v5, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    const-string v6, "miss size field for fragment data"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x80000

    :cond_7
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v6, v8

    int-to-double v8, v4

    div-double/2addr v6, v8

    double-to-int v3, v6

    const/16 v5, 0x64

    if-lt v3, v5, :cond_1

    goto/16 :goto_2
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v2, v2, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessage :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v2, v2, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessage bad json: message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v0, v0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    const-string v1, "onMessage bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 2

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    iget-object v0, v0, Lcom/car/systemfunc/GpsUploadManager;->TAG:Ljava/lang/String;

    const-string v1, "onOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->mPendingFrame:Lcom/car/systemfunc/GpsUploadManager$FragementData;

    iget-object v0, p0, Lcom/car/systemfunc/GpsUploadManager$CloudWebSocketClient;->this$0:Lcom/car/systemfunc/GpsUploadManager;

    invoke-static {v0}, Lcom/car/systemfunc/GpsUploadManager;->access$000(Lcom/car/systemfunc/GpsUploadManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
