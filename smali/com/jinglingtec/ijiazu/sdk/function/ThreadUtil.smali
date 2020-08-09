.class public Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyPool()V
    .locals 6

    sget-object v3, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    sput-object v3, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    :cond_1
    const-wide/16 v4, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_2
    const-string v3, "ThreadUtil"

    const-string v4, "Thread Pool terminated successfully, congratulations !"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public static getPool()Ljava/util/concurrent/ExecutorService;
    .locals 3

    sget-object v1, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    const-class v2, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    sget-object v1, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    sget-object v1, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v2, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;

    monitor-enter v2

    :try_start_2
    sget-object v1, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/jinglingtec/ijiazu/sdk/function/ThreadUtil;->threadPool:Ljava/util/concurrent/ExecutorService;

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
