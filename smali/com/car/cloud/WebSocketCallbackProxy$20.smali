.class Lcom/car/cloud/WebSocketCallbackProxy$20;
.super Ljava/lang/Object;
.source "WebSocketCallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketCallbackProxy;->onOnlinePreviewRequest(Ljava/lang/String;JLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketCallbackProxy;

.field final synthetic val$_action:I

.field final synthetic val$_camid:I

.field final synthetic val$_relayid:J

.field final synthetic val$_unionId:Ljava/lang/String;

.field final synthetic val$_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketCallbackProxy;Ljava/lang/String;JLjava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->this$0:Lcom/car/cloud/WebSocketCallbackProxy;

    iput-object p2, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_unionId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_relayid:J

    iput-object p5, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_url:Ljava/lang/String;

    iput p6, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_action:I

    iput p7, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_camid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->this$0:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-static {v1}, Lcom/car/cloud/WebSocketCallbackProxy;->access$000(Lcom/car/cloud/WebSocketCallbackProxy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/WebSocketCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_unionId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_relayid:J

    iget-object v4, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_url:Ljava/lang/String;

    iget v5, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_action:I

    iget v6, p0, Lcom/car/cloud/WebSocketCallbackProxy$20;->val$_camid:I

    invoke-interface/range {v0 .. v6}, Lcom/car/cloud/WebSocketCallback;->onOnlinePreviewRequest(Ljava/lang/String;JLjava/lang/String;II)V

    goto :goto_0

    :cond_1
    return-void
.end method
