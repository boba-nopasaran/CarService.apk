.class Lcom/car/cloud/WebSocketUtil$9$1$1;
.super Ljava/lang/Thread;
.source "WebSocketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil$9$1;->cloudReply(ILorg/json/JSONObject;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/car/cloud/WebSocketUtil$9$1;

.field final synthetic val$binary:[B

.field final synthetic val$jso:Lorg/json/JSONObject;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil$9$1;Lorg/json/JSONObject;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->this$2:Lcom/car/cloud/WebSocketUtil$9$1;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$jso:Lorg/json/JSONObject;

    iput p3, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$progress:I

    iput-object p4, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$binary:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$jso:Lorg/json/JSONObject;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->this$2:Lcom/car/cloud/WebSocketUtil$9$1;

    iget-object v2, v2, Lcom/car/cloud/WebSocketUtil$9$1;->this$1:Lcom/car/cloud/WebSocketUtil$9;

    iget-object v2, v2, Lcom/car/cloud/WebSocketUtil$9;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2, v1}, Lcom/car/cloud/WebSocketUtil;->access$900(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/cloud/TraceCacheManager;->instance()Lcom/car/cloud/TraceCacheManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->this$2:Lcom/car/cloud/WebSocketUtil$9$1;

    iget-object v4, v4, Lcom/car/cloud/WebSocketUtil$9$1;->this$1:Lcom/car/cloud/WebSocketUtil$9;

    iget-object v4, v4, Lcom/car/cloud/WebSocketUtil$9;->val$serial:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->this$2:Lcom/car/cloud/WebSocketUtil$9$1;

    iget-object v4, v4, Lcom/car/cloud/WebSocketUtil$9$1;->this$1:Lcom/car/cloud/WebSocketUtil$9;

    iget-object v4, v4, Lcom/car/cloud/WebSocketUtil$9;->val$date:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/car/cloud/TraceCacheManager;->putTraceToCache(Ljava/lang/String;[B)Z

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->this$2:Lcom/car/cloud/WebSocketUtil$9$1;

    iget-object v2, v2, Lcom/car/cloud/WebSocketUtil$9$1;->this$1:Lcom/car/cloud/WebSocketUtil$9;

    iget-object v2, v2, Lcom/car/cloud/WebSocketUtil$9;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->this$2:Lcom/car/cloud/WebSocketUtil$9$1;

    iget-object v3, v3, Lcom/car/cloud/WebSocketUtil$9$1;->this$1:Lcom/car/cloud/WebSocketUtil$9;

    iget-object v3, v3, Lcom/car/cloud/WebSocketUtil$9;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    iget v4, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$progress:I

    iget-object v5, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$jso:Lorg/json/JSONObject;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/car/cloud/WebSocketUtil;->access$800(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->this$2:Lcom/car/cloud/WebSocketUtil$9$1;

    iget-object v2, v2, Lcom/car/cloud/WebSocketUtil$9$1;->this$1:Lcom/car/cloud/WebSocketUtil$9;

    iget-object v2, v2, Lcom/car/cloud/WebSocketUtil$9;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->this$2:Lcom/car/cloud/WebSocketUtil$9$1;

    iget-object v3, v3, Lcom/car/cloud/WebSocketUtil$9$1;->this$1:Lcom/car/cloud/WebSocketUtil$9;

    iget-object v3, v3, Lcom/car/cloud/WebSocketUtil$9;->val$h:Lcom/car/cloud/WebSocketUtil$ReplyHandler;

    iget v4, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$progress:I

    iget-object v5, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$jso:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil$9$1$1;->val$binary:[B

    invoke-static {v2, v3, v4, v5, v6}, Lcom/car/cloud/WebSocketUtil;->access$800(Lcom/car/cloud/WebSocketUtil;Lcom/car/cloud/WebSocketUtil$ReplyHandler;ILorg/json/JSONObject;[B)V

    goto :goto_0
.end method
