.class Lcom/car/cloud/WebSocketUtil$11;
.super Lcom/car/cloud/WebSocketUtil$ReplyHandler;
.source "WebSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->sendWSTextMsg(Ljava/lang/String;Lorg/json/JSONObject;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$11;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$11;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-direct {p0}, Lcom/car/cloud/WebSocketUtil$ReplyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudReply(ILorg/json/JSONObject;[B)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "ret"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil$11;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$11;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/car/cloud/WebSocketUtil;->access$800(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    :cond_1
    return-void
.end method
