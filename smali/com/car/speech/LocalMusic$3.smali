.class Lcom/car/speech/LocalMusic$3;
.super Landroid/os/Handler;
.source "LocalMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/LocalMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/LocalMusic;


# direct methods
.method constructor <init>(Lcom/car/speech/LocalMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v3, "CarSvc_Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recv request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v5}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [J

    move-object v1, v3

    check-cast v1, [J

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-virtual {v3, v1}, Lcom/car/speech/LocalMusic;->doPlay([J)V

    goto :goto_0

    :pswitch_2
    :try_start_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u5207\u5230\u4e0b\u4e00\u9996"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    invoke-static {}, Lcom/car/speech/LocalMusic;->access$200()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EXTRA"

    const-string v4, "MEDIA_NEXT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "kuwo_key"

    const-string v4, "auto"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v3, v3, Lcom/car/speech/LocalMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_3
    :try_start_2
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u5207\u5230\u4e0a\u4e00\u9996"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    invoke-static {}, Lcom/car/speech/LocalMusic;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->prev()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "EXTRA"

    const-string v4, "MEDIA_PRE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "kuwo_key"

    const-string v4, "auto"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v3, v3, Lcom/car/speech/LocalMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :pswitch_4
    :try_start_4
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u5f00\u59cb\u64ad\u653e\u97f3\u4e50"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    invoke-static {}, Lcom/car/speech/LocalMusic;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    sget v3, Lcom/car/speech/LocalMusic;->mKwStatus:I

    if-eqz v3, :cond_4

    sget v3, Lcom/car/speech/LocalMusic;->mKwStatus:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "auto_play"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "kuwo_key"

    const-string v4, "auto"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v3, v3, Lcom/car/speech/LocalMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v3, v3, Lcom/car/speech/LocalMusic;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->playKuwoMusic(Landroid/content/Context;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :pswitch_5
    :try_start_6
    invoke-static {}, Lcom/car/speech/LocalMusic;->access$200()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, "CarSvc_Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pause music: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v5}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->pause()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_stop_music"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v3, v3, Lcom/car/speech/LocalMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u97f3\u4e50\u5df2\u7ecf\u505c\u6b62"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    iget-object v3, v3, Lcom/car/speech/LocalMusic;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->pauseKuwoMusic(Landroid/content/Context;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :pswitch_6
    :try_start_8
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u5355\u66f2\u5faa\u73af"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_7
    :try_start_9
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u5faa\u73af\u64ad\u653e"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/android/music/IMediaPlaybackService;->setRepeatMode(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_8
    :try_start_a
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u968f\u673a\u64ad\u653e"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_9
    :try_start_b
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u987a\u5e8f\u64ad\u653e"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/speech/LocalMusic$3;->this$0:Lcom/car/speech/LocalMusic;

    invoke-static {v3}, Lcom/car/speech/LocalMusic;->access$000(Lcom/car/speech/LocalMusic;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
