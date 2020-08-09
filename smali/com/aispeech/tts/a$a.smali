.class final Lcom/aispeech/tts/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile c:Ljava/lang/Boolean;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/util/concurrent/Semaphore;

.field private f:J

.field private synthetic g:Lcom/aispeech/tts/a;


# direct methods
.method public constructor <init>(Lcom/aispeech/tts/a;Ljava/util/concurrent/ExecutorService;J)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/aispeech/tts/a$a;->a:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/tts/a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/a$a;->c:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/aispeech/tts/a$a;->e:Ljava/util/concurrent/Semaphore;

    iput-object p2, p0, Lcom/aispeech/tts/a$a;->d:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lcom/aispeech/tts/a$a;->f:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const-string v0, "AIAudioTrack"

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


# virtual methods
.method public final a()V
    .locals 5

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->c:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/tts/a$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/tts/a$a;->a:Z

    invoke-virtual {p0}, Lcom/aispeech/tts/a$a;->c()V

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->f(Lcom/aispeech/tts/a;)Lcom/aispeech/tts/g;

    move-result-object v0

    new-instance v2, Lcom/aispeech/tts/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/aispeech/tts/h;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v0, v2}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    const-string v0, "stop start."
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "AIAudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Semaphore acquire : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->f(Lcom/aispeech/tts/a;)Lcom/aispeech/tts/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/g;->b()V

    :goto_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "AIAudioTrack"

    const-string v2, "task is not running"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->c:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/tts/a$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/a$a;->c:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "AIAudioTrack"

    const-string v1, "Feed Task begin!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->f(Lcom/aispeech/tts/a;)Lcom/aispeech/tts/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/g;->a()Lcom/aispeech/tts/f;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "AIAudioTrack"

    const-string v4, "one peek."

    invoke-static {v1, v4}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/aispeech/tts/f;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-boolean v0, p0, Lcom/aispeech/tts/a$a;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "AIAudioTrack"

    const-string v1, "detect stop flag , break"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->g(Lcom/aispeech/tts/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/a$a;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    :cond_2
    const-string v0, "feed task terminated."

    invoke-direct {p0, v0}, Lcom/aispeech/tts/a$a;->a(Ljava/lang/String;)V

    :goto_2
    const-string v0, "AIAudioTrack"

    const-string v1, "Feed Task terminated!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    iget-wide v4, p0, Lcom/aispeech/tts/a$a;->f:J

    invoke-static {v0, v4, v5}, Lcom/aispeech/tts/a;->a(Lcom/aispeech/tts/a;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/tts/a$a;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v0}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    :cond_4
    const-string v0, "feed task terminated."

    invoke-direct {p0, v0}, Lcom/aispeech/tts/a$a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/aispeech/tts/a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->h(Lcom/aispeech/tts/a;)V

    :cond_6
    invoke-virtual {v0}, Lcom/aispeech/tts/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v1, v3

    move v4, v3

    :goto_3
    iget-object v5, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v5}, Lcom/aispeech/tts/a;->i(Lcom/aispeech/tts/a;)I

    move-result v5

    add-int/2addr v1, v5

    array-length v5, v0

    if-le v1, v5, :cond_7

    array-length v1, v0

    :cond_7
    const-string v5, "AIAudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "write size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v5}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v5}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v5}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v5

    sub-int v6, v1, v4

    invoke-virtual {v5, v0, v4, v6}, Landroid/media/AudioTrack;->write([BII)I

    :cond_8
    iget-object v4, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v4}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    const-string v4, "AIAudioTrack"

    const-string v5, "Feed task has been Paused due to AudioTrack paused."

    invoke-static {v4, v5}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :try_start_5
    iget-boolean v4, p0, Lcom/aispeech/tts/a$a;->a:Z

    if-eqz v4, :cond_c

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->i(Lcom/aispeech/tts/a;)I

    move-result v1

    new-array v4, v1, [B

    move v1, v3

    :goto_4
    array-length v5, v4

    if-ge v1, v5, :cond_b

    const/4 v5, 0x0

    aput-byte v5, v4, v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/tts/a$a;->c:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    :cond_a
    const-string v1, "feed task terminated."

    invoke-direct {p0, v1}, Lcom/aispeech/tts/a$a;->a(Ljava/lang/String;)V

    throw v0

    :cond_b
    :try_start_8
    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v6}, Lcom/aispeech/tts/a;->i(Lcom/aispeech/tts/a;)I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->c(Lcom/aispeech/tts/a;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->g(Lcom/aispeech/tts/a;)V

    move v1, v2

    :goto_5
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->j(Lcom/aispeech/tts/a;)Lcom/aispeech/common/WavFileWriter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/tts/a$a;->g:Lcom/aispeech/tts/a;

    invoke-static {v1}, Lcom/aispeech/tts/a;->j(Lcom/aispeech/tts/a;)Lcom/aispeech/common/WavFileWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aispeech/common/WavFileWriter;->writeWavData([B)V

    goto/16 :goto_0

    :cond_c
    array-length v4, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-lt v1, v4, :cond_d

    move v1, v3

    goto :goto_5

    :cond_d
    move v4, v1

    goto/16 :goto_3
.end method
