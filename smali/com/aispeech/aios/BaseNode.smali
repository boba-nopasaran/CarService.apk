.class public abstract Lcom/aispeech/aios/BaseNode;
.super Ljava/lang/Object;
.source "BaseNode.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/aispeech/aios/BusClient$Handler;


# static fields
.field private static androidUtilLog:Ljava/lang/reflect/Method;


# instance fields
.field protected bc:Lcom/aispeech/aios/BusClient;

.field private name:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private stickyMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/aispeech/aios/BusClient$Multipart;",
            ">;"
        }
    .end annotation
.end field

.field private stickyRunnable:Ljava/lang/Runnable;

.field private volatile stickyTimer:J

.field private stoppingSem:Ljava/util/concurrent/Semaphore;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "idle"

    iput-object v1, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/aispeech/aios/BaseNode;->stoppingSem:Ljava/util/concurrent/Semaphore;

    iput-object v4, p0, Lcom/aispeech/aios/BaseNode;->stickyMessages:Ljava/util/Queue;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/aispeech/aios/BaseNode;->stickyTimer:J

    iput-object v4, p0, Lcom/aispeech/aios/BaseNode;->stickyRunnable:Ljava/lang/Runnable;

    :try_start_0
    const-string v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "i"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/aispeech/aios/BaseNode;->androidUtilLog:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/aispeech/aios/BaseNode;J)J
    .locals 1

    iput-wide p1, p0, Lcom/aispeech/aios/BaseNode;->stickyTimer:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/aispeech/aios/BaseNode;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aispeech/aios/BaseNode;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyMessages:Ljava/util/Queue;

    return-object v0
.end method

.method private declared-synchronized handleSticky()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyMessages:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lcom/aispeech/aios/BaseNode$1;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/BaseNode$1;-><init>(Lcom/aispeech/aios/BaseNode;)V

    iput-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/aispeech/aios/BaseNode;->stickyTimer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    iget-object v1, p0, Lcom/aispeech/aios/BaseNode;->stickyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/aios/BaseNode;->stickyTimer:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/aispeech/aios/BaseNode;->androidUtilLog:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    sget v0, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/aispeech/aios/BaseNode;->androidUtilLog:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aios."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onBusEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v2, "dump"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "all"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "---------------------------------------------"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aispeech/aios/BaseNode;->dump(Ljava/io/PrintWriter;)V

    const-string v2, "---------------------------------------------"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v0, p1}, Lcom/aispeech/aios/BusClient;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DUMP OF NODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stickyMessages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyMessages:Ljava/util/Queue;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyMessages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getBufferSize()I
    .locals 1

    const/high16 v0, 0x10000

    return v0
.end method

.method public final declared-synchronized getBusClient()Lcom/aispeech/aios/BusClient;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public final declared-synchronized isRunning()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    const-string v1, "busy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
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

.method public onCreate()V
    .locals 1

    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onExit()V
    .locals 1

    const-string v0, "onExit"

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onJoin()V
    .locals 1

    const-string v0, "onJoin"

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V

    return-void
.end method

.method public varargs onMessage(Ljava/lang/String;[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "onMessage"

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V

    const-string v0, "bus.event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p2

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    aget-object v2, p2, v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lcom/aispeech/aios/BaseNode;->onBusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs publish(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v0, p1, p2}, Lcom/aispeech/aios/BusClient;->publish(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " publish failed !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs declared-synchronized publishSticky(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyMessages:Ljava/util/Queue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyMessages:Ljava/util/Queue;

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stickyMessages:Ljava/util/Queue;

    new-instance v1, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v1}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "publish"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/aispeech/aios/BaseNode;->handleSticky()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->onCreate()V

    const/4 v2, 0x0

    :goto_0
    if-lez v2, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->stoppingSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0xbb8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->onExit()V

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v5}, Lcom/aispeech/aios/BusClient;->delete()V

    iput-object v9, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->onDestroy()V

    const-string v5, "wait"

    iput-object v5, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    return-void

    :cond_1
    :try_start_1
    new-instance v5, Lcom/aispeech/aios/BusClient;

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->getBufferSize()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/aispeech/aios/BusClient;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->onJoin()V

    invoke-direct {p0}, Lcom/aispeech/aios/BaseNode;->handleSticky()V

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v5, p0}, Lcom/aispeech/aios/BusClient;->spin(Lcom/aispeech/aios/BusClient$Handler;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->onExit()V

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v5}, Lcom/aispeech/aios/BusClient;->delete()V

    iput-object v9, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->onExit()V

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v5}, Lcom/aispeech/aios/BusClient;->delete()V

    iput-object v9, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I will be back in 3s, on error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/StringWriter;->close()V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->onExit()V

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v5}, Lcom/aispeech/aios/BusClient;->delete()V

    iput-object v9, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->onExit()V

    iget-object v6, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v6}, Lcom/aispeech/aios/BusClient;->delete()V

    iput-object v9, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    :cond_3
    throw v5

    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public final declared-synchronized start()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "????"

    :goto_0
    iput-object v0, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try to start \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" node, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BaseNode;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    const-string v1, "wait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->stop()Z

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "busy"

    iput-object v0, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/aispeech/aios/BaseNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aispeech/aios/BaseNode;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;

    const-string v1, "wait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v0}, Lcom/aispeech/aios/BusClient;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->stoppingSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->thread:Ljava/lang/Thread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    iget-object v0, p0, Lcom/aispeech/aios/BaseNode;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string v0, "idle"

    iput-object v0, p0, Lcom/aispeech/aios/BaseNode;->state:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
