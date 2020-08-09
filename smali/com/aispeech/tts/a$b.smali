.class final Lcom/aispeech/tts/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/tts/a;


# direct methods
.method constructor <init>(Lcom/aispeech/tts/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/a$b;->a:Lcom/aispeech/tts/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 2

    const-string v0, "AIAudioTrack"

    const-string v1, "on marker reached"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 5

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iget-object v1, p0, Lcom/aispeech/tts/a$b;->a:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->a(Lcom/aispeech/tts/a;)I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/aispeech/tts/a$b;->a:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->b(Lcom/aispeech/tts/a;)I

    move-result v1

    iget-object v2, p0, Lcom/aispeech/tts/a$b;->a:Lcom/aispeech/tts/a;

    invoke-static {v2}, Lcom/aispeech/tts/a;->a(Lcom/aispeech/tts/a;)I

    move-result v2

    iget-object v3, p0, Lcom/aispeech/tts/a$b;->a:Lcom/aispeech/tts/a;

    invoke-static {v3}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/2addr v1, v2

    const-string v2, "AIAudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "on Tick: (currentFrame="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDataFeedEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aispeech/tts/a$b;->a:Lcom/aispeech/tts/a;

    invoke-static {v4}, Lcom/aispeech/tts/a;->d(Lcom/aispeech/tts/a;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/tts/a$b;->a:Lcom/aispeech/tts/a;

    invoke-static {v2}, Lcom/aispeech/tts/a;->e(Lcom/aispeech/tts/a;)Lcom/aispeech/a/c;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x32

    mul-int/lit8 v1, v1, 0x32

    iget-object v3, p0, Lcom/aispeech/tts/a$b;->a:Lcom/aispeech/tts/a;

    invoke-static {v3}, Lcom/aispeech/tts/a;->d(Lcom/aispeech/tts/a;)Z

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/aispeech/a/c;->a(IIZ)V

    :cond_0
    return-void
.end method
