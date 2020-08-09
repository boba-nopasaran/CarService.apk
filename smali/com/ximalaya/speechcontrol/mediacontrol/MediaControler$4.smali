.class Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBufferingStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBufferingStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPlayPause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPlayProgress(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPlayStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPlayStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSoundPlayComplete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSoundPrepared()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSoundSwitch(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
