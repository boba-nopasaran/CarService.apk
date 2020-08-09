.class final Lcom/aispeech/tts/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/tts/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private synthetic e:Lcom/aispeech/tts/b;


# direct methods
.method public constructor <init>(Lcom/aispeech/tts/b;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    const-string v0, "FeedTask Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/aispeech/tts/b$a;->a:Z

    iput-boolean v1, p0, Lcom/aispeech/tts/b$a;->b:Z

    iput-boolean v1, p0, Lcom/aispeech/tts/b$a;->c:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/aispeech/tts/b$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/tts/b$a;->b:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/tts/b$a;->a:Z

    iget-object v0, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->c(Lcom/aispeech/tts/b;)Lcom/aispeech/tts/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/g;->b()V

    iget-boolean v0, p0, Lcom/aispeech/tts/b$a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/tts/b$a;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/tts/b$a;->a:Z

    invoke-virtual {p0}, Lcom/aispeech/tts/b$a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final destroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/tts/b$a;->c:Z

    invoke-virtual {p0}, Lcom/aispeech/tts/b$a;->b()V

    iget-object v0, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->c(Lcom/aispeech/tts/b;)Lcom/aispeech/tts/g;

    move-result-object v0

    new-instance v1, Lcom/aispeech/tts/i;

    invoke-direct {v1, v2, v2}, Lcom/aispeech/tts/i;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/aispeech/tts/g;->a(Lcom/aispeech/tts/f;)V

    invoke-virtual {p0}, Lcom/aispeech/tts/b$a;->c()V

    return-void
.end method

.method public final run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "AIMediaPlayer"

    const-string v1, "Feed Task begin!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->c(Lcom/aispeech/tts/b;)Lcom/aispeech/tts/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/tts/g;->a()Lcom/aispeech/tts/f;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/aispeech/tts/f;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-virtual {v0}, Lcom/aispeech/tts/b;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;)Lcom/aispeech/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v1}, Lcom/aispeech/tts/b;->d(Lcom/aispeech/tts/b;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/aispeech/a/c;->a(J)V

    iget-object v0, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->e(Lcom/aispeech/tts/b;)Lcom/aispeech/common/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->e(Lcom/aispeech/tts/b;)Lcom/aispeech/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/common/a;->a()V

    :cond_1
    invoke-virtual {p0}, Lcom/aispeech/tts/b$a;->b()V

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/aispeech/tts/b$a;->c:Z

    if-eqz v0, :cond_9

    const-string v0, "AIMediaPlayer"

    const-string v1, "Feed Task terminated!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/aispeech/tts/b$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v0}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;)Lcom/aispeech/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/aispeech/a/c;->a()V

    :cond_5
    const/4 v0, 0x0

    instance-of v2, v1, Lcom/aispeech/tts/i;

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/aispeech/tts/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v1, v0}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;Ljava/io/File;)V

    iput-boolean v5, p0, Lcom/aispeech/tts/b$a;->b:Z

    iget-boolean v0, p0, Lcom/aispeech/tts/b$a;->b:Z

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_1
    const-string v0, "AIMediaPlayer"

    const-string v1, "Feed Task stopped for waiting play completion!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v0, "AIMediaPlayer"

    const-string v1, "Feed Task restared!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    instance-of v2, v1, Lcom/aispeech/tts/h;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/aispeech/tts/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v1}, Lcom/aispeech/tts/b;->e(Lcom/aispeech/tts/b;)Lcom/aispeech/common/a;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v1}, Lcom/aispeech/tts/b;->e(Lcom/aispeech/tts/b;)Lcom/aispeech/common/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aispeech/common/a;->a([B)V

    :cond_8
    iget-object v1, p0, Lcom/aispeech/tts/b$a;->e:Lcom/aispeech/tts/b;

    invoke-static {v1, v0}, Lcom/aispeech/tts/b;->a(Lcom/aispeech/tts/b;[B)Ljava/io/File;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, Lcom/aispeech/tts/b$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/tts/b$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-enter p0

    :try_start_4
    const-string v0, "AIMediaPlayer"

    const-string v1, "Feed Task stopped!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v0, "AIMediaPlayer"

    const-string v1, "Feed Task stared!"

    invoke-static {v0, v1}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    :try_start_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5
.end method
