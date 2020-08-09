.class public final Lcom/aispeech/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/a/a$a;
    }
.end annotation


# static fields
.field public static final a:I

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private e:Lcom/aispeech/AISampleRate;

.field private f:I

.field private g:I

.field private volatile h:Landroid/media/AudioRecord;

.field private i:Ljava/util/concurrent/Semaphore;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:J

.field private volatile l:Ljava/lang/Boolean;

.field private m:Ljava/util/concurrent/locks/Lock;

.field private n:Ljava/util/concurrent/locks/Lock;

.field private o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/aispeech/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    sget v2, Lcom/aispeech/c/b;->a:I

    sput v2, Lcom/aispeech/a/a;->a:I

    sput v1, Lcom/aispeech/a/a;->b:I

    sput v0, Lcom/aispeech/a/a;->c:I

    sget v2, Lcom/aispeech/a/a;->a:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    :goto_0
    sput v0, Lcom/aispeech/a/a;->d:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/aispeech/AISampleRate;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/aispeech/a/a;->f:I

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/aispeech/a/a;->i:Ljava/util/concurrent/Semaphore;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/a/a;->l:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/aispeech/a/a;->m:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/aispeech/a/a;->n:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/a/a;->p:Ljava/util/Queue;

    iput v1, p0, Lcom/aispeech/a/a;->q:I

    iput-boolean v1, p0, Lcom/aispeech/a/a;->r:Z

    iput-boolean v1, p0, Lcom/aispeech/a/a;->s:Z

    iput-object p1, p0, Lcom/aispeech/a/a;->e:Lcom/aispeech/AISampleRate;

    iput p3, p0, Lcom/aispeech/a/a;->g:I

    iput p2, p0, Lcom/aispeech/a/a;->f:I

    invoke-direct {p0}, Lcom/aispeech/a/a;->h()V

    return-void
.end method

.method private a(J[BIZ)V
    .locals 5

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/a/d;

    if-eqz p5, :cond_1

    invoke-interface {v0}, Lcom/aispeech/a/d;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocalWakeupDnnParams"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aispeech/a/d;->a(J[BI)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/aispeech/AIError;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/a/d;

    invoke-interface {v0, p1}, Lcom/aispeech/a/d;->a(Lcom/aispeech/AIError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aispeech/a/a;J)V
    .locals 11

    iget-object v0, p0, Lcom/aispeech/a/a;->e:Lcom/aispeech/AISampleRate;

    iget v1, p0, Lcom/aispeech/a/a;->f:I

    invoke-virtual {v0}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v0

    sget v2, Lcom/aispeech/a/a;->d:I

    mul-int/2addr v2, v0

    sget v3, Lcom/aispeech/a/a;->c:I

    mul-int/2addr v2, v3

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AIAudioRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[SampleRate = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ReadBufferSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v7, v0, [B

    iget v1, p0, Lcom/aispeech/a/a;->g:I

    sget v2, Lcom/aispeech/a/a;->d:I

    iget-object v3, p0, Lcom/aispeech/a/a;->e:Lcom/aispeech/AISampleRate;

    invoke-virtual {v3}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v3

    mul-int/2addr v2, v3

    sget v3, Lcom/aispeech/a/a;->c:I

    mul-int/2addr v2, v3

    mul-int/2addr v1, v2

    int-to-long v2, v1

    const-string v1, "AIAudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MAX Record Size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "AIAudioRecorder"

    const-string v2, "AIAudioRecord.read()..."

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/aispeech/a/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v8

    if-lez v8, :cond_3

    new-array v1, v8, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v7, v2, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/aispeech/a/a;->n:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v2, p0, Lcom/aispeech/a/a;->r:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->getOneShotCacheTime()I

    move-result v2

    iget v3, p0, Lcom/aispeech/a/a;->f:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/aispeech/a/a;->q:I

    iget-object v2, p0, Lcom/aispeech/a/a;->p:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    iget v3, p0, Lcom/aispeech/a/a;->q:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/aispeech/a/a;->p:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/aispeech/a/a;->p:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v1, p0, Lcom/aispeech/a/a;->s:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aispeech/a/a;->s:Z

    iget-object v1, p0, Lcom/aispeech/a/a;->p:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/aispeech/a/a;->a(J[BIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "stop end."

    invoke-direct {p0, v0}, Lcom/aispeech/a/a;->a(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v7

    move v5, v8

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/aispeech/a/a;->a(J[BIZ)V

    iget-object v1, p0, Lcom/aispeech/a/a;->n:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "stop end."

    invoke-direct {p0, v1}, Lcom/aispeech/a/a;->a(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_3
    const-string v1, "AIAudioRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recorder error read size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_4
    const-string v0, "stop end."

    invoke-direct {p0, v0}, Lcom/aispeech/a/a;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/a/a;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const-string v0, "SpeechEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Semaphore release : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/aispeech/a/a;->d:I

    return v0
.end method

.method public static g()I
    .locals 1

    sget v0, Lcom/aispeech/a/a;->c:I

    return v0
.end method

.method private h()V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/aispeech/a/a;->e:Lcom/aispeech/AISampleRate;

    invoke-virtual {v2}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v0

    sget v1, Lcom/aispeech/a/a;->a:I

    sget v3, Lcom/aispeech/a/a;->c:I

    invoke-static {v0, v1, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    shl-int/lit8 v1, v3, 0x1

    if-le v3, v1, :cond_5

    shl-int/lit8 v0, v1, 0x2

    if-lt v0, v3, :cond_5

    mul-int/lit8 v1, v3, 0x2

    if-ge v0, v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_1
    const-string v1, "AIAudioRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MinBufferSize = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", BufferSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v0, "AIAudioRecorder"

    const-string v1, "recorder.new() "

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/aispeech/a/a;->a:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AUDIO_CHANNEL : stero  channel_num: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/aispeech/a/a;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Landroid/media/AudioRecord;

    sget v1, Lcom/aispeech/a/a;->b:I

    invoke-virtual {v2}, Lcom/aispeech/AISampleRate;->getValue()I

    move-result v2

    sget v3, Lcom/aispeech/a/a;->a:I

    sget v4, Lcom/aispeech/a/a;->c:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    const-string v1, "AIAudioRecorder"

    const-string v2, "recorder.new() end"

    invoke-static {v1, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-ne v1, v7, :cond_2

    :goto_3
    iput-object v0, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new Instance end, recorder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    if-nez v0, :cond_3

    new-instance v0, Lcom/aispeech/AIError;

    const v1, 0x114f5

    const-string v2, "\u65e0\u6cd5\u83b7\u53d6\u5f55\u97f3\u8bbe\u5907!"

    invoke-direct {v0, v1, v2}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/aispeech/AIError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/aispeech/AIError;->printStackTrace()V

    const/4 v1, 0x4

    if-ge v6, v1, :cond_4

    const-wide/16 v0, 0x28

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_1
    :try_start_2
    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AUDIO_CHANNEL : mono channel_num: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/aispeech/a/a;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recorder.new() retry count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/aispeech/AIError; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v7}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/a/a;->j:Ljava/util/concurrent/ExecutorService;

    :goto_5
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_4
    invoke-direct {p0, v0}, Lcom/aispeech/a/a;->a(Lcom/aispeech/AIError;)V

    goto :goto_5

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method private i()Z
    .locals 6

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    const-string v0, "AIAudioRecorder"

    const-string v3, "recorder.startRecording()"

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    new-instance v0, Lcom/aispeech/AIError;

    const v3, 0x114f7

    const-string v4, "\u5f55\u97f3\u5931\u8d25!"

    invoke-direct {v0, v3, v4}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/aispeech/AIError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/aispeech/AIError;->printStackTrace()V

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    const-wide/16 v4, 0x28

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-wide v4, p0, Lcom/aispeech/a/a;->k:J

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/a/d;

    invoke-interface {v0, v4, v5}, Lcom/aispeech/a/d;->a(J)V

    goto :goto_2

    :cond_1
    const-string v0, "AIAudioRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recorder.start() retry count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/aispeech/AIError; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x1

    :goto_3
    return v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/aispeech/a/a;->a(Lcom/aispeech/AIError;)V

    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/a/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/aispeech/a/d;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/aispeech/a/d;)J
    .locals 4

    const-string v0, "AIAudioRecorder"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerListener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/aispeech/a/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AIAudioRecorder"

    const-string v1, "AudioRecorder has been started!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/aispeech/a/a;->k:J

    invoke-interface {p1, v0, v1}, Lcom/aispeech/a/d;->a(J)V

    :cond_1
    iget-object v0, p0, Lcom/aispeech/a/a;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-wide v0, p0, Lcom/aispeech/a/a;->k:J

    :goto_0
    return-wide v0

    :cond_2
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/aispeech/common/Util;->generateRandom(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/a/a;->k:J

    invoke-direct {p0}, Lcom/aispeech/a/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/a/a;->l:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/aispeech/a/a;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/aispeech/a/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aispeech/a/a$a;

    iget-wide v2, p0, Lcom/aispeech/a/a;->k:J

    invoke-direct {v1, p0, v2, v3}, Lcom/aispeech/a/a$a;-><init>(Lcom/aispeech/a/a;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/aispeech/a/a;->k:J

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AIAudioRecorder"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AIAudioRecorder"

    const-string v1, "clearListener"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0, v2}, Lcom/aispeech/a/a;->c(Lcom/aispeech/a/d;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v2, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    :cond_0
    const-string v0, "AIAudioRecorder"

    const-string v1, "Release AIAudioRecord, AudioRecord = null"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "startCachingData"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/a/a;->r:Z

    return-void
.end method

.method public final c(Lcom/aispeech/a/d;)V
    .locals 4

    const-string v0, "AIAudioRecorder"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/aispeech/a/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIAudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aispeech/a/a;->m:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const-string v0, "AIAudioRecorder"

    const-string v1, "the listener has been unRegistered"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "AIAudioRecorder"

    const-string v1, "stop recorder"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/a/a;->l:Ljava/lang/Boolean;

    const-string v0, "stop start."

    :try_start_0
    iget-object v1, p0, Lcom/aispeech/a/a;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    const-string v1, "SpeechEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Semaphore acquire : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "AIAudioRecorder"

    const-string v1, "AudioRecord.stop() before"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "AIAudioRecorder"

    const-string v1, "AudioRecord.stop() end"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v0, "AIAudioRecorder"

    const-string v1, "AudioRecorder has been stopped!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    const-string v0, "AIAudioRecorder"

    const-string v1, "startSendCachingData"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/a/a;->n:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/a/a;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/a/a;->s:Z

    iget-object v0, p0, Lcom/aispeech/a/a;->n:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final e()Lcom/aispeech/AISampleRate;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/a/a;->e:Lcom/aispeech/AISampleRate;

    return-object v0
.end method
