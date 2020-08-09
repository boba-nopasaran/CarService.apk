.class Lcom/car/httpserver/NetworkBroadcaster$1;
.super Landroid/os/Handler;
.source "NetworkBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NetworkBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/httpserver/NetworkBroadcaster;


# direct methods
.method constructor <init>(Lcom/car/httpserver/NetworkBroadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NetworkBroadcaster$1;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v2, 0x64

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/car/httpserver/NetworkBroadcaster$1;->removeMessages(I)V

    :try_start_0
    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster$1;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-virtual {v1}, Lcom/car/httpserver/NetworkBroadcaster;->createSocketAndStart()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster$1;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    iget-object v1, v1, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastStatusNotify:Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster$1;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    iget-object v1, v1, Lcom/car/httpserver/NetworkBroadcaster;->mBroadcastStatusNotify:Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/car/httpserver/NetworkBroadcaster$BroadcastStatusNotify;->onBroadcastReady(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster$1;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-virtual {v1}, Lcom/car/httpserver/NetworkBroadcaster;->isWifiNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/car/httpserver/NetworkBroadcaster$1;->this$0:Lcom/car/httpserver/NetworkBroadcaster;

    invoke-virtual {v1}, Lcom/car/httpserver/NetworkBroadcaster;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/car/httpserver/NetworkBroadcaster$1;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
