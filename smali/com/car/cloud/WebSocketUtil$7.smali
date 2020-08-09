.class Lcom/car/cloud/WebSocketUtil$7;
.super Lcom/car/cloud/WebSocketUtil$ReplyHandler;
.source "WebSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->sendAppointmnetMsg(Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

.field final synthetic val$mi:Lcom/car/cloud/Type$MsgInfo;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$7;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$7;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iput-object p3, p0, Lcom/car/cloud/WebSocketUtil$7;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudReply(ILorg/json/JSONObject;[B)V
    .locals 4

    const/4 v0, -0x1

    if-nez p2, :cond_1

    :goto_0
    if-nez v0, :cond_2

    const-string v1, "CarSvc_WebSocketUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendAppointMsg ok:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$7;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-object v3, v3, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$7;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$7;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$7;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil;->access$800(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "ret"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "CarSvc_WebSocketUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendAppointMsg failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$7;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-object v3, v3, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
