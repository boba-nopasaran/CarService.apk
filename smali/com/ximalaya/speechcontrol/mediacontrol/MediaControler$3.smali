.class Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsStartBuffering()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAdsStopBuffering()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCompletePlayAds()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStartGetAdsInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
