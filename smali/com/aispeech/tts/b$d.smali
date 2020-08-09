.class final Lcom/aispeech/tts/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private synthetic a:Lcom/aispeech/tts/b;


# direct methods
.method constructor <init>(Lcom/aispeech/tts/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/tts/b$d;->a:Lcom/aispeech/tts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/tts/b$d;->a:Lcom/aispeech/tts/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;Z)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
