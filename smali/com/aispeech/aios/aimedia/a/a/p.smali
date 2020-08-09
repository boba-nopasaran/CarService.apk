.class Lcom/aispeech/aios/aimedia/a/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;


# instance fields
.field final synthetic a:Lcom/aispeech/aios/aimedia/a/a/k;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/aimedia/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/aimedia/a/a/p;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(I)V
    .locals 0

    return-void
.end method

.method public onBufferingStart()V
    .locals 0

    return-void
.end method

.method public onBufferingStop()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPause()V
    .locals 0

    return-void
.end method

.method public onPlayProgress(II)V
    .locals 0

    return-void
.end method

.method public onPlayStart()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/p;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->B(Lcom/aispeech/aios/aimedia/a/a/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/p;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->C(Lcom/aispeech/aios/aimedia/a/a/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/p;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->B(Lcom/aispeech/aios/aimedia/a/a/k;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/p;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/a/k;->b(Lcom/aispeech/aios/aimedia/a/a/k;Z)Z

    :cond_1
    :goto_0
    const-string v0, "AIOS-AIMedia-XimalayaProxy-Ting"

    const-string v1, "code pause !"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/p;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-virtual {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->g()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/p;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0}, Lcom/aispeech/aios/aimedia/a/a/k;->C(Lcom/aispeech/aios/aimedia/a/a/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/aimedia/a/a/p;->a:Lcom/aispeech/aios/aimedia/a/a/k;

    invoke-static {v0, v1}, Lcom/aispeech/aios/aimedia/a/a/k;->c(Lcom/aispeech/aios/aimedia/a/a/k;Z)Z

    goto :goto_0
.end method

.method public onPlayStop()V
    .locals 0

    return-void
.end method

.method public onSoundPlayComplete()V
    .locals 0

    return-void
.end method

.method public onSoundPrepared()V
    .locals 0

    return-void
.end method

.method public onSoundSwitch(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V
    .locals 0

    return-void
.end method
