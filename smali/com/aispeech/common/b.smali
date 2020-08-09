.class public final Lcom/aispeech/common/b;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/aispeech/common/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/aispeech/common/b;->a:Lcom/aispeech/common/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/aispeech/d;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/e;

    invoke-direct {v0}, Lcom/aispeech/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/aispeech/common/b;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/aispeech/common/b;
    .locals 4

    const-class v1, Lcom/aispeech/common/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "AIHandlerThread"

    const-string v2, "AIHandlerThread getInstance"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/aispeech/common/b;->a:Lcom/aispeech/common/b;

    if-nez v0, :cond_0

    const-string v0, "AIHandlerThread"

    const-string v2, "mInstance is null , new AIHandlerThread"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aispeech/common/b;

    const-string v2, "SDK Thread"

    invoke-direct {v0, v2}, Lcom/aispeech/common/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aispeech/common/b;->a:Lcom/aispeech/common/b;

    :cond_0
    sget-object v0, Lcom/aispeech/common/b;->a:Lcom/aispeech/common/b;

    invoke-virtual {v0}, Lcom/aispeech/common/b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/aispeech/common/b;->a:Lcom/aispeech/common/b;

    invoke-virtual {v0}, Lcom/aispeech/common/b;->start()V

    const-string v0, "AIHandlerThread"

    const-string v2, "AIHandlerThread , start thread"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/aispeech/common/b;->a:Lcom/aispeech/common/b;

    invoke-virtual {v0}, Lcom/aispeech/common/b;->getLooper()Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "AIHandlerThread"

    const-string v2, "mInstance.getLooper() is null sleep 50ms"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_3
    const-string v0, "AIHandlerThread"

    const-string v2, "AIHandlerThread started"

    invoke-static {v0, v2}, Lcom/aispeech/common/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/aispeech/common/b;->a:Lcom/aispeech/common/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0
.end method
