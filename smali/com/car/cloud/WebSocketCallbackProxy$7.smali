.class Lcom/car/cloud/WebSocketCallbackProxy$7;
.super Ljava/lang/Object;
.source "WebSocketCallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketCallbackProxy;->onReceiveMsg(Lcom/car/cloud/Type$MsgInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketCallbackProxy;

.field final synthetic val$_mi:Lcom/car/cloud/Type$MsgInfo;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketCallbackProxy;Lcom/car/cloud/Type$MsgInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketCallbackProxy$7;->this$0:Lcom/car/cloud/WebSocketCallbackProxy;

    iput-object p2, p0, Lcom/car/cloud/WebSocketCallbackProxy$7;->val$_mi:Lcom/car/cloud/Type$MsgInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v3, p0, Lcom/car/cloud/WebSocketCallbackProxy$7;->this$0:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-static {v3}, Lcom/car/cloud/WebSocketCallbackProxy;->access$000(Lcom/car/cloud/WebSocketCallbackProxy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/WebSocketCallback;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/car/cloud/WebSocketCallbackProxy$7;->val$_mi:Lcom/car/cloud/Type$MsgInfo;

    invoke-interface {v0, v3}, Lcom/car/cloud/WebSocketCallback;->onReceiveMsg(Lcom/car/cloud/Type$MsgInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method
