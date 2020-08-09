.class Lcom/car/cloud/WebSocketCallbackProxy$10;
.super Ljava/lang/Object;
.source "WebSocketCallbackProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketCallbackProxy;->onPickupInfo(DDLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketCallbackProxy;

.field final synthetic val$_lat:D

.field final synthetic val$_lng:D

.field final synthetic val$_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketCallbackProxy;DDLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketCallbackProxy$10;->this$0:Lcom/car/cloud/WebSocketCallbackProxy;

    iput-wide p2, p0, Lcom/car/cloud/WebSocketCallbackProxy$10;->val$_lng:D

    iput-wide p4, p0, Lcom/car/cloud/WebSocketCallbackProxy$10;->val$_lat:D

    iput-object p6, p0, Lcom/car/cloud/WebSocketCallbackProxy$10;->val$_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v2, p0, Lcom/car/cloud/WebSocketCallbackProxy$10;->this$0:Lcom/car/cloud/WebSocketCallbackProxy;

    invoke-static {v2}, Lcom/car/cloud/WebSocketCallbackProxy;->access$000(Lcom/car/cloud/WebSocketCallbackProxy;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/WebSocketCallback;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/car/cloud/WebSocketCallbackProxy$10;->val$_lng:D

    iget-wide v4, p0, Lcom/car/cloud/WebSocketCallbackProxy$10;->val$_lat:D

    iget-object v6, p0, Lcom/car/cloud/WebSocketCallbackProxy$10;->val$_name:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/car/cloud/WebSocketCallback;->onPickupInfo(DDLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
