.class public Lcom/amap/api/col/ec;
.super Ljava/lang/Object;
.source "TraceManager.java"

# interfaces
.implements Lcom/amap/api/trace/LBSTraceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/ec$b;,
        Lcom/amap/api/col/ec$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/col/ec$b;

.field private c:Lcom/amap/api/trace/TraceListener;

.field private d:Lcom/amap/api/maps/CoordinateConverter;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ec;->a:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/col/ec$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/ec$b;-><init>(Lcom/amap/api/col/ec;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/ec;->b:Lcom/amap/api/col/ec$b;

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter;

    iget-object v1, p0, Lcom/amap/api/col/ec;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/ec;->d:Lcom/amap/api/maps/CoordinateConverter;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ec;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ec;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/ec;)Lcom/amap/api/col/ec$b;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ec;->b:Lcom/amap/api/col/ec$b;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/ec;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ec;->d:Lcom/amap/api/maps/CoordinateConverter;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/ec;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ec;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/col/ec;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ec;->f:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/col/ec;)Lcom/amap/api/trace/TraceListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ec;->c:Lcom/amap/api/trace/TraceListener;

    return-object v0
.end method


# virtual methods
.method public queryProcessedTrace(ILjava/util/List;ILcom/amap/api/trace/TraceListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/trace/TraceLocation;",
            ">;I",
            "Lcom/amap/api/trace/TraceListener;",
            ")V"
        }
    .end annotation

    iput-object p4, p0, Lcom/amap/api/col/ec;->c:Lcom/amap/api/trace/TraceListener;

    :try_start_0
    new-instance v0, Lcom/amap/api/col/ec$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/col/ec$a;-><init>(Lcom/amap/api/col/ec;ILjava/util/List;I)V

    iget-object v1, p0, Lcom/amap/api/col/ec;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
