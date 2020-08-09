.class public final Lcom/aispeech/tts/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/aispeech/tts/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/aispeech/tts/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final a()Lcom/aispeech/tts/f;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/tts/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/tts/f;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/aispeech/tts/f;)V
    .locals 2

    instance-of v0, p1, Lcom/aispeech/tts/h;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aispeech/tts/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/aispeech/common/WavFileWriter;->removeWaveHeader([B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aispeech/tts/f;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/aispeech/tts/g;->b:I

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aispeech/tts/g;->b:I

    :cond_0
    iget-object v0, p0, Lcom/aispeech/tts/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "SynthesizedBlockQueue"

    const-string v1, "clear all blocks"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/aispeech/tts/g;->b:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/aispeech/tts/g;->b:I

    return v0
.end method
