.class public Lcom/amap/api/mapcore/offlinemap/a;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/offlinemap/a$a;,
        Lcom/amap/api/mapcore/offlinemap/a$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static d:Ljava/lang/String;

.field private static volatile k:Lcom/amap/api/mapcore/offlinemap/a;


# instance fields
.field c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore/offlinemap/CityObject;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/amap/api/mapcore/offlinemap/a$b;

.field public f:Lcom/amap/api/mapcore/offlinemap/e;

.field g:Lcom/amap/api/mapcore/offlinemap/g;

.field h:Lcom/amap/api/mapcore/offlinemap/d;

.field private i:Landroid/content/Context;

.field private j:Z

.field private l:Lcom/amap/api/mapcore/offlinemap/a$a;

.field private m:Lcom/amap/api/mapcore/offlinemap/j;

.field private n:Lcom/amap/api/col/m;

.field private o:Ljava/util/concurrent/ExecutorService;

.field private p:Ljava/util/concurrent/ExecutorService;

.field private q:Ljava/util/concurrent/ExecutorService;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore/offlinemap/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/mapcore/offlinemap/a;->b:Z

    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore/offlinemap/a;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/amap/api/mapcore/offlinemap/a;->j:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->o:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->p:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->q:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->h:Lcom/amap/api/mapcore/offlinemap/d;

    iput-boolean v2, p0, Lcom/amap/api/mapcore/offlinemap/a;->r:Z

    iput-object p1, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/offlinemap/a;)Lcom/amap/api/col/m;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->n:Lcom/amap/api/col/m;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/offlinemap/a;Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/offlinemap/a;->h(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/mapcore/offlinemap/a;
    .locals 3

    sget-object v0, Lcom/amap/api/mapcore/offlinemap/a;->k:Lcom/amap/api/mapcore/offlinemap/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/amap/api/mapcore/offlinemap/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/offlinemap/a;->k:Lcom/amap/api/mapcore/offlinemap/a;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/amap/api/mapcore/offlinemap/a;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/offlinemap/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/mapcore/offlinemap/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore/offlinemap/a;->k:Lcom/amap/api/mapcore/offlinemap/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/offlinemap/a;->k:Lcom/amap/api/mapcore/offlinemap/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/amap/api/mapcore/offlinemap/CityObject;Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->g:Lcom/amap/api/mapcore/offlinemap/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/offlinemap/g;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/offlinemap/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->g:Lcom/amap/api/mapcore/offlinemap/g;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->p:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->p:Ljava/util/concurrent/ExecutorService;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/offlinemap/a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/mapcore/offlinemap/a$2;-><init>(Lcom/amap/api/mapcore/offlinemap/a;Lcom/amap/api/mapcore/offlinemap/CityObject;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "requestDelete"

    const-string v2, "removeExcecRunnable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/offlinemap/a;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/offlinemap/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/offlinemap/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/offlinemap/a;->j:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/offlinemap/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore/offlinemap/a;->j()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/offlinemap/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/offlinemap/a;)Lcom/amap/api/mapcore/offlinemap/a$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/offlinemap/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->j:Z

    return v0
.end method

.method private f(Lcom/amap/api/mapcore/offlinemap/CityObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore/offlinemap/a;->j()V

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->q:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->q:Ljava/util/concurrent/ExecutorService;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->q:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/offlinemap/a$3;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/offlinemap/a$3;-><init>(Lcom/amap/api/mapcore/offlinemap/a;Lcom/amap/api/mapcore/offlinemap/CityObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "startDownload"

    const-string v2, "downloadExcecRunnable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    :try_start_0
    const-string v0, "000001"

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->n:Lcom/amap/api/col/m;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/m;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/offlinemap/a;->n:Lcom/amap/api/col/m;

    invoke-virtual {v2, v0}, Lcom/amap/api/col/m;->c(Ljava/lang/String;)V

    const-string v0, "100000"

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/offlinemap/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->n:Lcom/amap/api/col/m;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/m;->a(Lcom/amap/api/mapcore/offlinemap/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "changeBadCase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/col/u;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/offlinemap/e;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/offlinemap/CityObject;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getPinyin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/ch;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/ch;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "offlinemapv4.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    const-string v2, "offlinemapv4.png"

    invoke-static {v0, v2}, Lcom/amap/api/col/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/offlinemap/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    const-string v1, "MapDownloadManager"

    const-string v2, "paseJson io"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/amap/api/col/u;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private i(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/offlinemap/CityObject;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 6

    const/4 v5, 0x7

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->n:Lcom/amap/api/col/m;

    invoke-virtual {v0}, Lcom/amap/api/col/m;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/offlinemap/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/k;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    iget v2, v0, Lcom/amap/api/mapcore/offlinemap/k;->l:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/amap/api/mapcore/offlinemap/k;->l:I

    if-eq v2, v5, :cond_1

    iget v2, v0, Lcom/amap/api/mapcore/offlinemap/k;->l:I

    if-ltz v2, :cond_1

    const/4 v2, 0x3

    iput v2, v0, Lcom/amap/api/mapcore/offlinemap/k;->l:I

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/offlinemap/a;->h(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/k;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v4, Lcom/amap/api/mapcore/offlinemap/a;->d:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/amap/api/mapcore/offlinemap/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->a(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setVersion(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/amap/api/mapcore/offlinemap/a;->n:Lcom/amap/api/col/m;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/col/m;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    iget v3, v0, Lcom/amap/api/mapcore/offlinemap/k;->l:I

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/offlinemap/CityObject;->a(I)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/k;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setCompleteCode(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/offlinemap/e;->a(Lcom/amap/api/mapcore/offlinemap/CityObject;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/ch;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/m;->a(Landroid/content/Context;)Lcom/amap/api/col/m;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->n:Lcom/amap/api/col/m;

    invoke-direct {p0}, Lcom/amap/api/mapcore/offlinemap/a;->g()V

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/offlinemap/a$b;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/offlinemap/a$b;-><init>(Lcom/amap/api/mapcore/offlinemap/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    new-instance v0, Lcom/amap/api/mapcore/offlinemap/e;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/offlinemap/e;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amap/api/mapcore/offlinemap/j;->a(I)Lcom/amap/api/mapcore/offlinemap/j;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->m:Lcom/amap/api/mapcore/offlinemap/j;

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/ch;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/offlinemap/a;->a:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/offlinemap/a;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/amap/api/mapcore/offlinemap/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Lcom/amap/api/mapcore/offlinemap/CityObject;

    iget-object v5, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/amap/api/mapcore/offlinemap/d;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/offlinemap/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->h:Lcom/amap/api/mapcore/offlinemap/d;

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->h:Lcom/amap/api/mapcore/offlinemap/d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/d;->start()V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/offlinemap/CityObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/offlinemap/a;->a(Lcom/amap/api/mapcore/offlinemap/CityObject;Z)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/offlinemap/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/offlinemap/a$a;->b(Lcom/amap/api/mapcore/offlinemap/CityObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->o:Ljava/util/concurrent/ExecutorService;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/offlinemap/a$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/offlinemap/a$1;-><init>(Lcom/amap/api/mapcore/offlinemap/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "checkUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/offlinemap/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/amap/api/mapcore/offlinemap/a;->i()V

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    invoke-interface {v0}, Lcom/amap/api/mapcore/offlinemap/a$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "verifyCallBack"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore/offlinemap/h;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/offlinemap/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/offlinemap/h;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/h;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/offlinemap/e;->a(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/offlinemap/CityObject;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getPinyin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    sget-object v6, Lcom/amap/api/mapcore/offlinemap/a;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    sget-object v6, Lcom/amap/api/mapcore/offlinemap/a;->d:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/amap/api/mapcore/offlinemap/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/amap/api/mapcore/offlinemap/CityObject;->j()V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setCity(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getAdcode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setAdcode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setSize(J)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setCode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getJianpin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setJianpin(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getPinyin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/offlinemap/CityObject;->setPinyin(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public b(Lcom/amap/api/mapcore/offlinemap/CityObject;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->m:Lcom/amap/api/mapcore/offlinemap/j;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/offlinemap/j;->a(Lcom/amap/api/mapcore/offlinemap/i;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    :try_end_0
    .catch Lcom/amap/api/col/ee; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/col/ee;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/offlinemap/a;->h(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/offlinemap/CityObject;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->c()Lcom/amap/api/col/aa;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/mapcore/offlinemap/CityObject;->c:Lcom/amap/api/col/aa;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->c()Lcom/amap/api/col/aa;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/mapcore/offlinemap/CityObject;->b:Lcom/amap/api/col/aa;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->f()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lcom/amap/api/mapcore/offlinemap/CityObject;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/offlinemap/e;->a(Lcom/amap/api/mapcore/offlinemap/CityObject;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/a$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/offlinemap/a$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/offlinemap/a;->h(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/offlinemap/a$a;->c(Lcom/amap/api/mapcore/offlinemap/CityObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "remove"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/offlinemap/a;->d(Lcom/amap/api/mapcore/offlinemap/CityObject;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/offlinemap/a;->a(Lcom/amap/api/mapcore/offlinemap/CityObject;Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/offlinemap/CityObject;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->c()Lcom/amap/api/col/aa;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/mapcore/offlinemap/CityObject;->c:Lcom/amap/api/col/aa;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/CityObject;->g()V

    :cond_1
    return-void
.end method

.method public d(Lcom/amap/api/mapcore/offlinemap/CityObject;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->m:Lcom/amap/api/mapcore/offlinemap/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/offlinemap/j;->a(Lcom/amap/api/mapcore/offlinemap/i;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/offlinemap/a;->h(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/offlinemap/a;->f(Lcom/amap/api/mapcore/offlinemap/CityObject;)V

    return-void
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->o:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->o:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->q:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->h:Lcom/amap/api/mapcore/offlinemap/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->h:Lcom/amap/api/mapcore/offlinemap/d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/d;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->h:Lcom/amap/api/mapcore/offlinemap/d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/d;->interrupt()V

    :cond_2
    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->h:Lcom/amap/api/mapcore/offlinemap/d;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/offlinemap/a$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/a;->e:Lcom/amap/api/mapcore/offlinemap/a$b;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->m:Lcom/amap/api/mapcore/offlinemap/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->m:Lcom/amap/api/mapcore/offlinemap/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/j;->b()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->f:Lcom/amap/api/mapcore/offlinemap/e;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/offlinemap/e;->g()V

    :cond_6
    sput-object v1, Lcom/amap/api/mapcore/offlinemap/a;->k:Lcom/amap/api/mapcore/offlinemap/a;

    sput-boolean v2, Lcom/amap/api/mapcore/offlinemap/a;->b:Z

    iput-boolean v2, p0, Lcom/amap/api/mapcore/offlinemap/a;->j:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/offlinemap/a;->f()V

    return-void
.end method

.method public e(Lcom/amap/api/mapcore/offlinemap/CityObject;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->m:Lcom/amap/api/mapcore/offlinemap/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/offlinemap/j;->b(Lcom/amap/api/mapcore/offlinemap/i;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/offlinemap/a;->i(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/offlinemap/a;->f(Lcom/amap/api/mapcore/offlinemap/CityObject;)V

    return-void

    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/offlinemap/a;->h(Ljava/lang/String;)Lcom/amap/api/mapcore/offlinemap/CityObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/mapcore/offlinemap/CityObject;->getAdcode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/a;->l:Lcom/amap/api/mapcore/offlinemap/a$a;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
