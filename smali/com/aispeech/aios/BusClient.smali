.class public Lcom/aispeech/aios/BusClient;
.super Ljava/lang/Object;
.source "BusClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/aios/BusClient$Log;,
        Lcom/aispeech/aios/BusClient$Multipart;,
        Lcom/aispeech/aios/BusClient$RPCResult;,
        Lcom/aispeech/aios/BusClient$TimerItem;,
        Lcom/aispeech/aios/BusClient$XSocket;,
        Lcom/aispeech/aios/BusClient$ErrorHandler;,
        Lcom/aispeech/aios/BusClient$Handler;,
        Lcom/aispeech/aios/BusClient$RPCResultThread;
    }
.end annotation


# static fields
.field public static DEFAULT_BUS_SERVER:Ljava/lang/String;

.field public static DEFAULT_LOGLEVEL:I

.field public static TAG:Ljava/lang/String;

.field public static TAG_HIGHFREQ:Ljava/lang/String;

.field private static final timeoutWatcher:Ljava/util/Timer;


# instance fields
.field private acallFutures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/aispeech/aios/BusClient$RPCResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private acallRPCResult:Lcom/aispeech/aios/BusClient$RPCResult;

.field private errorHandler:Lcom/aispeech/aios/BusClient$ErrorHandler;

.field getOnCallWatch:Ljava/lang/Runnable;

.field private keepaliveLatest:J

.field private keepaliveRunnable:Ljava/lang/Runnable;

.field private log:Z

.field private name:Ljava/lang/String;

.field onCallResult:Ljava/lang/Runnable;

.field onCallWatchTimerHandler:J

.field private receivedDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/aispeech/aios/BusClient$Multipart;",
            ">;"
        }
    .end annotation
.end field

.field private receivedRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/aispeech/aios/BusClient$Multipart;",
            ">;"
        }
    .end annotation
.end field

.field private result:Lcom/aispeech/aios/BusClient$RPCResult;

.field private rpcResultThread:Lcom/aispeech/aios/BusClient$RPCResultThread;

.field private running:Z

.field private runningException:Ljava/lang/Exception;

.field private sock:Lcom/aispeech/aios/BusClient$XSocket;

.field private subtopics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/Thread;

.field private timerInc:J

.field private timerItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/aispeech/aios/BusClient$TimerItem;",
            ">;"
        }
    .end annotation
.end field

.field private timerItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/aispeech/aios/BusClient$TimerItem;",
            ">;"
        }
    .end annotation
.end field

.field private timerMinTimeout:J

.field private timerTimeoutItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/BusClient$TimerItem;",
            ">;"
        }
    .end annotation
.end field

.field private tmpargs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private watchMultipart:Lcom/aispeech/aios/BusClient$Multipart;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AIN-BusClient "

    sput-object v0, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    const-string v0, "AIHF-BusClient "

    sput-object v0, Lcom/aispeech/aios/BusClient;->TAG_HIGHFREQ:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    const-string v0, "127.0.0.1:50001"

    sput-object v0, Lcom/aispeech/aios/BusClient;->DEFAULT_BUS_SERVER:Ljava/lang/String;

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/aispeech/aios/BusClient;->timeoutWatcher:Ljava/util/Timer;

    :try_start_0
    const-string v0, "java.net.perferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "java.net.perferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BusClient;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/aispeech/aios/BusClient;->DEFAULT_BUS_SERVER:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/aispeech/aios/BusClient;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/aispeech/aios/BusClient;->DEFAULT_BUS_SERVER:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/aispeech/aios/BusClient;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/aispeech/aios/BusClient;->running:Z

    iput-object v6, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    iput-object v6, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    iput-boolean v3, p0, Lcom/aispeech/aios/BusClient;->log:Z

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->receivedRequestQueue:Ljava/util/Queue;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->receivedDataQueue:Ljava/util/Queue;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/aispeech/aios/BusClient;->timerInc:J

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->acallFutures:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->subtopics:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    iput-object v6, p0, Lcom/aispeech/aios/BusClient;->acallRPCResult:Lcom/aispeech/aios/BusClient$RPCResult;

    iput-object v6, p0, Lcom/aispeech/aios/BusClient;->result:Lcom/aispeech/aios/BusClient$RPCResult;

    iput-object v6, p0, Lcom/aispeech/aios/BusClient;->rpcResultThread:Lcom/aispeech/aios/BusClient$RPCResultThread;

    iput-object v6, p0, Lcom/aispeech/aios/BusClient;->errorHandler:Lcom/aispeech/aios/BusClient$ErrorHandler;

    iput-object v6, p0, Lcom/aispeech/aios/BusClient;->watchMultipart:Lcom/aispeech/aios/BusClient$Multipart;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/aispeech/aios/BusClient;->onCallWatchTimerHandler:J

    new-instance v3, Lcom/aispeech/aios/BusClient$5;

    invoke-direct {v3, p0}, Lcom/aispeech/aios/BusClient$5;-><init>(Lcom/aispeech/aios/BusClient;)V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->getOnCallWatch:Ljava/lang/Runnable;

    new-instance v3, Lcom/aispeech/aios/BusClient$6;

    invoke-direct {v3, p0}, Lcom/aispeech/aios/BusClient$6;-><init>(Lcom/aispeech/aios/BusClient;)V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->onCallResult:Ljava/lang/Runnable;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->timerTimeoutItems:Ljava/util/List;

    new-instance v3, Lcom/aispeech/aios/BusClient$7;

    invoke-direct {v3, p0}, Lcom/aispeech/aios/BusClient$7;-><init>(Lcom/aispeech/aios/BusClient;)V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->timerItemComparator:Ljava/util/Comparator;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->thread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    :goto_0
    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    new-instance v3, Lcom/aispeech/aios/BusClient$XSocket;

    iget-object v4, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-direct {v3, v4, p3}, Lcom/aispeech/aios/BusClient$XSocket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    new-instance v2, Lcom/aispeech/aios/BusClient$1;

    invoke-direct {v2, p0}, Lcom/aispeech/aios/BusClient$1;-><init>(Lcom/aispeech/aios/BusClient;)V

    sget-object v3, Lcom/aispeech/aios/BusClient;->timeoutWatcher:Ljava/util/Timer;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :try_start_0
    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v3, p2}, Lcom/aispeech/aios/BusClient$XSocket;->connect(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "/bus/join"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    iget-object v3, v1, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/aispeech/aios/BusClient;->delete()V

    new-instance v3, Ljava/lang/RuntimeException;

    iget-object v4, v1, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v3, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tcreate failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/aios/BusClient$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/aispeech/aios/BusClient;->delete()V

    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    throw v3

    :cond_0
    const-string v3, "????"

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bus.event"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    sget-object v3, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tcreated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/aios/BusClient$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "unavailable"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method static synthetic access$000(Lcom/aispeech/aios/BusClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$XSocket;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->result:Lcom/aispeech/aios/BusClient$RPCResult;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$RPCResult;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient;->result:Lcom/aispeech/aios/BusClient$RPCResult;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$ErrorHandler;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->errorHandler:Lcom/aispeech/aios/BusClient$ErrorHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$Multipart;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->watchMultipart:Lcom/aispeech/aios/BusClient$Multipart;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/aispeech/aios/BusClient;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->acallFutures:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->acallRPCResult:Lcom/aispeech/aios/BusClient$RPCResult;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/aispeech/aios/BusClient;->call(Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    invoke-static {}, Lcom/aispeech/aios/BusClient;->monotonicTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/aispeech/aios/BusClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/aios/BusClient;->keepaliveLatest:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/aispeech/aios/BusClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/BusClient;->running:Z

    return p1
.end method

.method static synthetic access$702(Lcom/aispeech/aios/BusClient;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic access$800(Lcom/aispeech/aios/BusClient;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->keepaliveRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private call(Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-boolean v4, p0, Lcom/aispeech/aios/BusClient;->running:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    const-string v5, "bus client is not running"

    invoke-static {v4, v5}, Lcom/aispeech/aios/BusClient$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/aispeech/aios/BusClient$RPCResult;

    const-string v5, "bus client is not running"

    invoke-direct {v4, v10, v5}, Lcom/aispeech/aios/BusClient$RPCResult;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v4

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, p0, Lcom/aispeech/aios/BusClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_0
    iget-object v4, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v4, p1}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V

    :goto_1
    iget-object v4, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v4}, Lcom/aispeech/aios/BusClient$XSocket;->receiveMultipart()Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "publish"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/aispeech/aios/BusClient;->receivedDataQueue:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-boolean v9, p0, Lcom/aispeech/aios/BusClient;->running:Z

    iput-object v0, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    new-instance v4, Lcom/aispeech/aios/BusClient$RPCResult;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Lcom/aispeech/aios/BusClient$RPCResult;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v4, "response"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/aispeech/aios/BusClient$RPCResult;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/aispeech/aios/BusClient$Multipart;->get(I)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/aispeech/aios/BusClient$RPCResult;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "request"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/aispeech/aios/BusClient;->receivedRequestQueue:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v4, "keepalive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/aispeech/aios/BusClient;->monotonicTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aispeech/aios/BusClient;->keepaliveLatest:J

    iget-object v4, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    new-instance v5, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v5}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "keepalive-ack"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected protocol. multipart:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/aispeech/aios/BusClient$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/aispeech/aios/BusClient$3;

    invoke-direct {v4, p0, p1}, Lcom/aispeech/aios/BusClient$3;-><init>(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$Multipart;)V

    invoke-direct {v1, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aispeech/aios/BusClient$RPCResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v4, Lcom/aispeech/aios/BusClient$RPCResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timer future get error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Lcom/aispeech/aios/BusClient$RPCResult;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static monotonicTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public varargs acall(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/aispeech/aios/BusClient$RPCResult;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lcom/aispeech/aios/BusClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "acall() can not be called in bus thread"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/aispeech/aios/BusClient$9;

    invoke-direct {v3, p0, v0}, Lcom/aispeech/aios/BusClient$9;-><init>(Lcom/aispeech/aios/BusClient;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->acallFutures:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v2

    iget-object v3, v2, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/aispeech/aios/BusClient;->acallRPCResult:Lcom/aispeech/aios/BusClient$RPCResult;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    :cond_1
    return-object v1
.end method

.method public call(Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v0}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "request"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BusClient;->call(Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/util/List;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aispeech/aios/BusClient$RPCResult;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v0}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "request"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aispeech/aios/BusClient$Multipart;->a(Ljava/util/List;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BusClient;->call(Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v0}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "request"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BusClient;->call(Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;[[B)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v0}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "request"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aispeech/aios/BusClient$Multipart;->a([[B)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aispeech/aios/BusClient;->call(Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/aispeech/aios/BusClient;->running:Z

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->receivedDataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->receivedRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v1}, Lcom/aispeech/aios/BusClient$XSocket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tdeleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/aios/BusClient$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v1}, Lcom/aispeech/aios/BusClient$XSocket;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    iput-object v4, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore runtime exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/aios/BusClient$Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iput-object v4, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    goto :goto_0

    :catchall_1
    move-exception v1

    iput-object v4, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DUMP OF CLIENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

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

    const-string v1, "running: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aispeech/aios/BusClient;->running:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runningErr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socket connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v1}, Lcom/aispeech/aios/BusClient$XSocket;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socket bufsize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient$XSocket;->access$300(Lcom/aispeech/aios/BusClient$XSocket;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pending RPC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->receivedRequestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pending Topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->receivedDataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pending Timer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribed Topics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient;->subtopics:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public declared-synchronized hasTimer(J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aispeech/aios/BusClient$TimerItem;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1500(Lcom/aispeech/aios/BusClient$TimerItem;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized hasTimer(Ljava/lang/Runnable;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aispeech/aios/BusClient$TimerItem;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1000(Lcom/aispeech/aios/BusClient$TimerItem;)Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public interrupt()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/BusClient;->running:Z

    new-instance v0, Lcom/aispeech/aios/BusClient$8;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/BusClient$8;-><init>(Lcom/aispeech/aios/BusClient;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    return-void
.end method

.method public declared-synchronized killTimer(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aispeech/aios/BusClient$TimerItem;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1500(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized killTimer(Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aispeech/aios/BusClient$TimerItem;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1000(Lcom/aispeech/aios/BusClient$TimerItem;)Ljava/lang/Runnable;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public publish(Lcom/aispeech/aios/BusClient$Multipart;)V
    .locals 4

    iget-boolean v1, p0, Lcom/aispeech/aios/BusClient;->running:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    const-string v2, "bus client is not running"

    invoke-static {v1, v2}, Lcom/aispeech/aios/BusClient$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/BusClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v1, p1}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aispeech/aios/BusClient;->running:Z

    iput-object v0, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/aispeech/aios/BusClient$2;

    invoke-direct {v1, p0, p1}, Lcom/aispeech/aios/BusClient$2;-><init>(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$Multipart;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    goto :goto_0
.end method

.method public publish(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v0}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "publish"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aispeech/aios/BusClient;->publish(Lcom/aispeech/aios/BusClient$Multipart;)V

    return-void
.end method

.method public varargs publish(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v0}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "publish"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aispeech/aios/BusClient;->publish(Lcom/aispeech/aios/BusClient$Multipart;)V

    return-void
.end method

.method public varargs publish(Ljava/lang/String;[[B)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v0}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "publish"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aispeech/aios/BusClient$Multipart;->a([[B)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aispeech/aios/BusClient;->publish(Lcom/aispeech/aios/BusClient$Multipart;)V

    return-void
.end method

.method public setErrorHandler(Lcom/aispeech/aios/BusClient$ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient;->errorHandler:Lcom/aispeech/aios/BusClient$ErrorHandler;

    return-void
.end method

.method public declared-synchronized setTimer(Ljava/lang/Runnable;J)J
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/aispeech/aios/BusClient;->running:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    const-string v1, "bus client is not running"

    invoke-static {v0, v1}, Lcom/aispeech/aios/BusClient$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, -0x1

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aispeech/aios/BusClient;->monotonicTime()J

    move-result-wide v0

    add-long/2addr p2, v0

    iget-wide v0, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    iput-wide p2, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    :cond_1
    iget-object v6, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    new-instance v0, Lcom/aispeech/aios/BusClient$TimerItem;

    iget-wide v2, p0, Lcom/aispeech/aios/BusClient;->timerInc:J

    const-wide/16 v4, 0x1

    add-long v1, v2, v4

    iput-wide v1, p0, Lcom/aispeech/aios/BusClient;->timerInc:J

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/aispeech/aios/BusClient$TimerItem;-><init>(JLjava/lang/Runnable;J)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v0}, Lcom/aispeech/aios/BusClient$XSocket;->wakeup()V

    :cond_2
    iget-wide v0, p0, Lcom/aispeech/aios/BusClient;->timerInc:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public spin(Lcom/aispeech/aios/BusClient$Handler;)V
    .locals 14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iget-object v10, p0, Lcom/aispeech/aios/BusClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "not thread safe"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    invoke-static {}, Lcom/aispeech/aios/BusClient;->monotonicTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/aispeech/aios/BusClient;->keepaliveLatest:J

    new-instance v9, Lcom/aispeech/aios/BusClient$4;

    invoke-direct {v9, p0}, Lcom/aispeech/aios/BusClient$4;-><init>(Lcom/aispeech/aios/BusClient;)V

    iput-object v9, p0, Lcom/aispeech/aios/BusClient;->keepaliveRunnable:Ljava/lang/Runnable;

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->keepaliveRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xbb8

    invoke-virtual {p0, v9, v10, v11}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v9, p0, Lcom/aispeech/aios/BusClient;->running:Z

    if-eqz v9, :cond_6

    :goto_1
    invoke-static {}, Lcom/aispeech/aios/BusClient;->monotonicTime()J

    move-result-wide v6

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v9}, Lcom/aispeech/aios/BusClient$XSocket;->isReadable()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-lez v9, :cond_7

    iget-wide v10, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    cmp-long v9, v6, v10

    if-ltz v9, :cond_7

    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->receivedRequestQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/aispeech/aios/BusClient;->running:Z

    if-eqz v9, :cond_3

    iget-wide v10, p0, Lcom/aispeech/aios/BusClient;->onCallWatchTimerHandler:J

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->receivedRequestQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aispeech/aios/BusClient$Multipart;

    iput-object v4, p0, Lcom/aispeech/aios/BusClient;->watchMultipart:Lcom/aispeech/aios/BusClient$Multipart;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/aispeech/aios/BusClient$Multipart;->get(I)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/exit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_d

    :try_start_1
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    new-instance v10, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v10}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "response"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, p0, Lcom/aispeech/aios/BusClient;->running:Z

    sget-object v9, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\texit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/aispeech/aios/BusClient$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->receivedDataQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/aispeech/aios/BusClient;->running:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v9}, Lcom/aispeech/aios/BusClient$XSocket;->isReadable()Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_4
    invoke-static {}, Lcom/aispeech/aios/BusClient;->monotonicTime()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    cmp-long v9, v10, v6

    if-gtz v9, :cond_1

    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->timerTimeoutItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aispeech/aios/BusClient$TimerItem;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient$TimerItem;->access$900(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v10

    cmp-long v9, v10, v6

    if-gtz v9, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->timerTimeoutItems:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/aispeech/aios/BusClient;->running:Z

    iput-object v0, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    :cond_6
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    if-eqz v9, :cond_19

    new-instance v9, Ljava/lang/RuntimeException;

    iget-object v10, p0, Lcom/aispeech/aios/BusClient;->runningException:Ljava/lang/Exception;

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    :cond_7
    :try_start_5
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->receivedRequestQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->receivedDataQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    iget-object v10, p0, Lcom/aispeech/aios/BusClient;->timerItems:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-lez v10, :cond_9

    iget-wide v10, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    sub-long/2addr v10, v6

    :goto_6
    invoke-virtual {v9, v10, v11}, Lcom/aispeech/aios/BusClient$XSocket;->waitReadable(J)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_8
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    invoke-virtual {v9}, Lcom/aispeech/aios/BusClient$XSocket;->receiveMultipart()Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "publish"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->receivedDataQueue:Ljava/util/Queue;

    invoke-interface {v9, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    const-wide/16 v10, -0x1

    goto :goto_6

    :cond_a
    const-string v9, "request"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->receivedRequestQueue:Ljava/util/Queue;

    invoke-interface {v9, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    const-string v9, "keepalive"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/aispeech/aios/BusClient;->monotonicTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/aispeech/aios/BusClient;->keepaliveLatest:J

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    new-instance v10, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v10}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "keepalive-ack"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V

    goto/16 :goto_1

    :cond_c
    sget-object v9, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected protocol. multipart:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/aispeech/aios/BusClient$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    if-nez p1, :cond_e

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->sock:Lcom/aispeech/aios/BusClient$XSocket;

    new-instance v10, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v10}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "response"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "not implement"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V

    goto/16 :goto_2

    :cond_e
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->getOnCallWatch:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1388

    invoke-virtual {p0, v9, v10, v11}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/aispeech/aios/BusClient;->onCallWatchTimerHandler:J

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->rpcResultThread:Lcom/aispeech/aios/BusClient$RPCResultThread;

    if-nez v9, :cond_f

    new-instance v9, Lcom/aispeech/aios/BusClient$RPCResultThread;

    invoke-direct {v9, p0, v4, p1}, Lcom/aispeech/aios/BusClient$RPCResultThread;-><init>(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$Multipart;Lcom/aispeech/aios/BusClient$Handler;)V

    iput-object v9, p0, Lcom/aispeech/aios/BusClient;->rpcResultThread:Lcom/aispeech/aios/BusClient$RPCResultThread;

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->rpcResultThread:Lcom/aispeech/aios/BusClient$RPCResultThread;

    invoke-virtual {v9}, Lcom/aispeech/aios/BusClient$RPCResultThread;->start()V

    goto/16 :goto_2

    :cond_f
    iget-object v10, p0, Lcom/aispeech/aios/BusClient;->rpcResultThread:Lcom/aispeech/aios/BusClient$RPCResultThread;

    monitor-enter v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->rpcResultThread:Lcom/aispeech/aios/BusClient$RPCResultThread;

    invoke-virtual {v9, v4}, Lcom/aispeech/aios/BusClient$RPCResultThread;->setMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->rpcResultThread:Lcom/aispeech/aios/BusClient$RPCResultThread;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10

    goto/16 :goto_2

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v9

    :cond_10
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->receivedDataQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aispeech/aios/BusClient$Multipart;

    if-eqz p1, :cond_3

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->acallFutures:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_11

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->acallFutures:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->acallFutures:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/FutureTask;

    new-instance v9, Lcom/aispeech/aios/BusClient$RPCResult;

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Lcom/aispeech/aios/BusClient$Multipart;->get(I)[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/aispeech/aios/BusClient$RPCResult;-><init>([B)V

    iput-object v9, p0, Lcom/aispeech/aios/BusClient;->acallRPCResult:Lcom/aispeech/aios/BusClient$RPCResult;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    goto/16 :goto_4

    :cond_11
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->subtopics:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v4}, Lcom/aispeech/aios/BusClient$Multipart;->size()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lcom/aispeech/aios/BusClient$Multipart;->toArray(II)[[B

    move-result-object v10

    invoke-interface {p1, v9, v10}, Lcom/aispeech/aios/BusClient$Handler;->onMessage(Ljava/lang/String;[[B)V

    :cond_12
    :goto_7
    sget v9, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    const/4 v10, 0x1

    if-gt v9, v10, :cond_3

    const-string v9, "vad.speech"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "vad.volume"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "pcm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    :cond_13
    sget-object v9, Lcom/aispeech/aios/BusClient;->TAG_HIGHFREQ:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t-\thandle\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/aispeech/aios/BusClient$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_14
    sget v9, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    const/4 v10, 0x1

    if-gt v9, v10, :cond_12

    sget-object v9, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tdiscard unsubscribing topic: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/aispeech/aios/BusClient$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    sget-object v9, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/aispeech/aios/BusClient;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\t-\thandle\t\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/aispeech/aios/BusClient$Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4

    :cond_16
    :try_start_8
    invoke-static {v3}, Lcom/aispeech/aios/BusClient$TimerItem;->access$900(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    invoke-static {v3}, Lcom/aispeech/aios/BusClient$TimerItem;->access$900(Lcom/aispeech/aios/BusClient$TimerItem;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/aispeech/aios/BusClient;->timerMinTimeout:J

    goto/16 :goto_5

    :cond_17
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->timerTimeoutItems:Ljava/util/List;

    iget-object v10, p0, Lcom/aispeech/aios/BusClient;->timerItemComparator:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->timerTimeoutItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    iget-boolean v9, p0, Lcom/aispeech/aios/BusClient;->running:Z

    if-eqz v9, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aispeech/aios/BusClient$TimerItem;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient$TimerItem;->access$1000(Lcom/aispeech/aios/BusClient$TimerItem;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto :goto_8

    :cond_18
    iget-object v9, p0, Lcom/aispeech/aios/BusClient;->timerTimeoutItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :cond_19
    return-void

    :catch_1
    move-exception v9

    goto/16 :goto_3
.end method

.method public varargs subscribe([Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->subtopics:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->subtopics:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "/bus/subscribe"

    iget-object v2, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;Ljava/util/List;)Lcom/aispeech/aios/BusClient$RPCResult;

    :cond_2
    return-void
.end method

.method public varargs unsubscribe([Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->subtopics:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->subtopics:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "/bus/unsubscribe"

    iget-object v2, p0, Lcom/aispeech/aios/BusClient;->tmpargs:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;Ljava/util/List;)Lcom/aispeech/aios/BusClient$RPCResult;

    :cond_2
    return-void
.end method
