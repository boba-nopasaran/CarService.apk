.class Lcom/car/voice/cmd/Music$3;
.super Landroid/os/Handler;
.source "Music.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/voice/cmd/Music;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/voice/cmd/Music;


# direct methods
.method constructor <init>(Lcom/car/voice/cmd/Music;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/16 v13, 0xb

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x2

    const-string v7, "CarSvc_Music"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recv request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", service="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v9}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v13}, Lcom/car/voice/cmd/Music$3;->removeMessages(I)V

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v5, v11, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v7}, Lcom/car/voice/VoiceUI;->isUIShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget v7, v7, Lcom/car/voice/cmd/Music;->mCurReqId:I

    iget-object v8, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v8, v8, Lcom/car/voice/cmd/Music;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    invoke-virtual {v8}, Lcom/car/voice/VoiceEngineFactory;->getCurReqId()I

    move-result v8

    if-ne v7, v8, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6b4c\u66f2\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"\u7f13\u51b2\u5df2\u5b8c\u6210"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v13, v3, Landroid/os/Message;->what:I

    iput v11, v3, Landroid/os/Message;->arg1:I

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v3, v8, v9}, Lcom/car/voice/cmd/Music$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [J

    move-object v1, v7

    check-cast v1, [J

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-virtual {v7, v1}, Lcom/car/voice/cmd/Music;->doPlay([J)V

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v7}, Lcom/car/voice/VoiceUI;->dismissUI()V

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v9, v9, Lcom/car/voice/cmd/Music;->mDefaultProcess:Lcom/car/voice/RecDefaultProcess;

    invoke-virtual {v7, v12, v8, v9}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    const/16 v8, 0x8

    iput v8, v7, Lcom/car/voice/cmd/Music;->mMsgId:I

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mEngineFactory:Lcom/car/voice/VoiceEngineFactory;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-virtual {v7, v10, v8, v9}, Lcom/car/voice/VoiceEngineFactory;->startRecognize(ILjava/lang/String;Lcom/car/common/VoiceRecognizerCallback;)Z

    goto/16 :goto_0

    :pswitch_4
    :try_start_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    const-string v8, "\u6b63\u5728\u5207\u5230\u4e0b\u4e00\u9996"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    invoke-static {}, Lcom/car/voice/cmd/Music;->access$200()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "EXTRA"

    const-string v8, "MEDIA_NEXT"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "kuwo_key"

    const-string v8, "auto"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v7}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_5
    :try_start_2
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    const-string v8, "\u6b63\u5728\u5207\u5230\u4e0a\u4e00\u9996"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    invoke-static {}, Lcom/car/voice/cmd/Music;->access$200()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->prev()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v7, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "EXTRA"

    const-string v8, "MEDIA_PRE"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "kuwo_key"

    const-string v8, "auto"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v7}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :pswitch_6
    :try_start_4
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    const-string v8, "\u5f00\u59cb\u64ad\u653e\u97f3\u4e50"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    invoke-static {}, Lcom/car/voice/cmd/Music;->access$200()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    sget v7, Lcom/car/voice/cmd/Music;->mKwStatus:I

    if-eqz v7, :cond_4

    sget v7, Lcom/car/voice/cmd/Music;->mKwStatus:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v7, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "auto_play"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "kuwo_key"

    const-string v8, "auto"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v7}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v7}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->playKuwoMusic(Landroid/content/Context;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :pswitch_7
    :try_start_6
    invoke-static {}, Lcom/car/voice/cmd/Music;->access$200()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v7, "CarSvc_Music"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pause music: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v9}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->pause()V

    new-instance v2, Landroid/content/Intent;

    const-string v7, "action_stop_music"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v7}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    const-string v8, "\u97f3\u4e50\u5df2\u7ecf\u505c\u6b62"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_7
    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    iget-object v7, v7, Lcom/car/voice/cmd/Music;->mVoiceUI:Lcom/car/voice/VoiceUI;

    invoke-interface {v7}, Lcom/car/voice/VoiceUI;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->pauseKuwoMusic(Landroid/content/Context;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :pswitch_8
    :try_start_8
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    const-string v8, "\u5355\u66f2\u5faa\u73af"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_9
    :try_start_9
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    const-string v8, "\u5faa\u73af\u64ad\u653e"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_a
    :try_start_a
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    const-string v8, "\u968f\u673a\u64ad\u653e"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_b
    :try_start_b
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v7

    const-string v8, "\u987a\u5e8f\u64ad\u653e"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/cmd/Music$3;->this$0:Lcom/car/voice/cmd/Music;

    invoke-static {v7}, Lcom/car/voice/cmd/Music;->access$000(Lcom/car/voice/cmd/Music;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
