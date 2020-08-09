.class public abstract Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field private static final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v2, 0x5

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs myexec([Ljava/lang/Object;)Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;

    goto :goto_0
.end method
