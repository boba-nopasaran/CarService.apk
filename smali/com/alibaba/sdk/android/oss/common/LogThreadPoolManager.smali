.class public Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;
.super Ljava/lang/Object;
.source "LogThreadPoolManager.java"


# static fields
.field private static final PERIOD_TASK_QOS:I = 0x3e8

.field private static final SIZE_CACHE_QUEUE:I = 0xc8

.field private static final SIZE_CORE_POOL:I = 0x1

.field private static final SIZE_MAX_POOL:I = 0x1

.field private static final SIZE_WORK_QUEUE:I = 0x1f4

.field private static final TIME_KEEP_ALIVE:I = 0x1388

.field private static sThreadPoolManager:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;


# instance fields
.field private final mAccessBufferThread:Ljava/lang/Runnable;

.field private final mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field protected final mTaskHandler:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final mTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->sThreadPoolManager:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    const/4 v9, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mTaskQueue:Ljava/util/Queue;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$1;-><init>(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager$2;-><init>(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mAccessBufferThread:Ljava/lang/Runnable;

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mAccessBufferThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mTaskHandler:Ljava/util/concurrent/ScheduledFuture;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x1f4

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move v2, v9

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mTaskQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->hasMoreAcquire()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private hasMoreAcquire()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->sThreadPoolManager:Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;

    return-object v0
.end method


# virtual methods
.method public addExecuteTask(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "work queue size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/LogThreadPoolManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
