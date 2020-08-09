.class final Lcom/aispeech/tts/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/tts/b;


# direct methods
.method constructor <init>(Lcom/aispeech/tts/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/b$b;->a:Lcom/aispeech/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/aispeech/tts/b$b;->a:Lcom/aispeech/tts/b;

    invoke-static {v1}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;)Lcom/aispeech/a/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v0, v2}, Lcom/aispeech/a/c;->a(IIZ)V

    iget-object v0, p0, Lcom/aispeech/tts/b$b;->a:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->b(Lcom/aispeech/tts/b;)Lcom/aispeech/tts/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/b$a;->a()V

    return-void
.end method
