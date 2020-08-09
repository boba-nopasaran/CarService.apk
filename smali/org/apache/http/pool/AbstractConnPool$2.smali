.class Lorg/apache/http/pool/AbstractConnPool$2;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/http/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final entryRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/http/pool/AbstractConnPool;

.field final synthetic val$callback:Lorg/apache/http/concurrent/FutureCallback;

.field final synthetic val$route:Ljava/lang/Object;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/http/pool/AbstractConnPool;Lorg/apache/http/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iput-object p2, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    iput-object p3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool$2;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entryRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool$2;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-static {v1}, Lorg/apache/http/pool/AbstractConnPool;->access$000(Lorg/apache/http/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-static {v1}, Lorg/apache/http/pool/AbstractConnPool;->access$100(Lorg/apache/http/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-static {v1}, Lorg/apache/http/pool/AbstractConnPool;->access$000(Lorg/apache/http/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    :cond_0
    :goto_0
    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-static {v1}, Lorg/apache/http/pool/AbstractConnPool;->access$000(Lorg/apache/http/pool/AbstractConnPool;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/pool/AbstractConnPool$2;->get()Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/pool/AbstractConnPool$2;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/http/pool/PoolEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/http/pool/AbstractConnPool$2;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/pool/PoolEntry;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/pool/PoolEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iget-object v2, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$route:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$state:Ljava/lang/Object;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lorg/apache/http/pool/AbstractConnPool;->access$200(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Future;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v9

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-static {v1}, Lorg/apache/http/pool/AbstractConnPool;->access$300(Lorg/apache/http/pool/AbstractConnPool;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v9}, Lorg/apache/http/pool/PoolEntry;->getUpdated()J

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-static {v1}, Lorg/apache/http/pool/AbstractConnPool;->access$300(Lorg/apache/http/pool/AbstractConnPool;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-virtual {v1, v9}, Lorg/apache/http/pool/AbstractConnPool;->validate(Lorg/apache/http/pool/PoolEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v9}, Lorg/apache/http/pool/PoolEntry;->close()V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lorg/apache/http/pool/AbstractConnPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_1
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1, v8}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v8}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->entryRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    invoke-virtual {v1, v9}, Lorg/apache/http/pool/AbstractConnPool;->onLease(Lorg/apache/http/pool/PoolEntry;)V

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool$2;->val$callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1, v9}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v9

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool$2;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool$2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
