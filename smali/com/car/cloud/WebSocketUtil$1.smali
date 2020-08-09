.class Lcom/car/cloud/WebSocketUtil$1;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->getBondList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2}, Lcom/car/cloud/WebSocketUtil;->access$000(Lcom/car/cloud/WebSocketUtil;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2}, Lcom/car/cloud/WebSocketUtil;->access$100(Lcom/car/cloud/WebSocketUtil;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v3}, Lcom/car/cloud/WebSocketUtil;->access$200(Lcom/car/cloud/WebSocketUtil;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/cloud/CloudMsgProviderUtils;->getAllUserList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2}, Lcom/car/cloud/WebSocketUtil;->access$300(Lcom/car/cloud/WebSocketUtil;)Lcom/car/cloud/WebSocketCallbackProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/car/cloud/WebSocketCallbackProxy;->onUserBondlist(Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2}, Lcom/car/cloud/WebSocketUtil;->access$000(Lcom/car/cloud/WebSocketUtil;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2}, Lcom/car/cloud/WebSocketUtil;->access$100(Lcom/car/cloud/WebSocketUtil;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v3}, Lcom/car/cloud/WebSocketUtil;->access$200(Lcom/car/cloud/WebSocketUtil;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/cloud/CloudMsgProviderUtils;->getAllDeviceList(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/car/cloud/WebSocketUtil$1;->this$0:Lcom/car/cloud/WebSocketUtil;

    invoke-static {v2}, Lcom/car/cloud/WebSocketUtil;->access$300(Lcom/car/cloud/WebSocketUtil;)Lcom/car/cloud/WebSocketCallbackProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/car/cloud/WebSocketCallbackProxy;->onDeviceBondlist(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
