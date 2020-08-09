.class final Lcom/aispeech/tts/b$e;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/tts/b;


# direct methods
.method private constructor <init>(Lcom/aispeech/tts/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/b$e;->a:Lcom/aispeech/tts/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aispeech/tts/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/tts/b$e;-><init>(Lcom/aispeech/tts/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/tts/b$e;->a:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->f(Lcom/aispeech/tts/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b$e;->a:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->f(Lcom/aispeech/tts/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/aispeech/tts/b$e;->a:Lcom/aispeech/tts/b;

    invoke-static {v1}, Lcom/aispeech/tts/b;->f(Lcom/aispeech/tts/b;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/aispeech/tts/b$e;->a:Lcom/aispeech/tts/b;

    invoke-static {v2}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;)Lcom/aispeech/a/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/aispeech/a/c;->a(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    iget-object v0, p0, Lcom/aispeech/tts/b$e;->a:Lcom/aispeech/tts/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;Z)Z

    goto :goto_0
.end method
