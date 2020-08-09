.class Lcom/car/cloud/WebSocketUtil$8;
.super Lcom/car/cloud/WebSocketUtil$ReplyHandler;
.source "WebSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->sendTextMsg(Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

.field final synthetic val$mi:Lcom/car/cloud/Type$MsgInfo;

.field final synthetic val$rowId:J


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/Type$MsgInfo;JLcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$8;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$8;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iput-wide p3, p0, Lcom/car/cloud/WebSocketUtil$8;->val$rowId:J

    iput-object p5, p0, Lcom/car/cloud/WebSocketUtil$8;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudReply(ILorg/json/JSONObject;[B)V
    .locals 6

    const/4 v1, -0x1

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    const-string v1, "CarSvc_WebSocketUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendMsg ok:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$8;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-object v3, v3, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$8;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v1}, Lcom/car/cloud/WebSocketUtil;->access$100(Lcom/car/cloud/WebSocketUtil;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$8;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2}, Lcom/car/cloud/WebSocketUtil;->access$500(Lcom/car/cloud/WebSocketUtil;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v4, p0, Lcom/car/cloud/WebSocketUtil$8;->val$rowId:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v5, v3}, Lcom/car/cloud/CloudMsgProviderUtils;->updateMsgSentdone(Landroid/content/Context;Landroid/net/Uri;JI)I

    :goto_1
    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$8;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$8;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$8;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil;->access$800(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "ret"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v2, "CarSvc_WebSocketUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendMsg failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$8;->val$mi:Lcom/car/cloud/Type$MsgInfo;

    iget-object v4, v4, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$8;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2}, Lcom/car/cloud/WebSocketUtil;->access$100(Lcom/car/cloud/WebSocketUtil;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$8;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v3}, Lcom/car/cloud/WebSocketUtil;->access$500(Lcom/car/cloud/WebSocketUtil;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, p0, Lcom/car/cloud/WebSocketUtil$8;->val$rowId:J

    invoke-static {v2, v3, v4, v5, v1}, Lcom/car/cloud/CloudMsgProviderUtils;->updateMsgSentdone(Landroid/content/Context;Landroid/net/Uri;JI)I

    goto :goto_1
.end method
