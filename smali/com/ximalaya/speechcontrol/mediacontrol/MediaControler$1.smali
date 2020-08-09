.class Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "MediaControler"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$002(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v1

    iput-object v1, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;

    invoke-direct {v1, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getMainDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getMainDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registeMainDataSupportCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCustomDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCustomDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registeCustomDataCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;)V

    :cond_2
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$700(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getServiceBindSuccessCallBack()Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getServiceBindSuccessCallBack()Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;->success()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$800(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$900(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v0, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->startPlay()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0, v4}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$902(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$002(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$902(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$202(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    const-string v0, "MediaControler"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
