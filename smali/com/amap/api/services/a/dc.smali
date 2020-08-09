.class public Lcom/amap/api/services/a/dc;
.super Lcom/amap/api/services/a/cx;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/dc$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/services/a/dc;


# instance fields
.field private b:Lcom/amap/api/services/a/dl;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ZI)V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/services/a/cx;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/services/a/dl;->a(I)Lcom/amap/api/services/a/dl;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/dc;->b:Lcom/amap/api/services/a/dl;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/a/dc$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/dc$a;-><init>(Landroid/os/Looper;Lcom/amap/api/services/a/dc$1;)V

    iput-object v0, p0, Lcom/amap/api/services/a/dc;->c:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/amap/api/services/a/dc$a;

    invoke-direct {v0}, Lcom/amap/api/services/a/dc$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/dc;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetManger"

    const-string v2, "NetManger1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bo;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Z)Lcom/amap/api/services/a/dc;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/amap/api/services/a/dc;->a(ZI)Lcom/amap/api/services/a/dc;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/services/a/dc;
    .locals 3

    const-class v1, Lcom/amap/api/services/a/dc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/dc;->a:Lcom/amap/api/services/a/dc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/a/dc;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/dc;-><init>(ZI)V

    sput-object v0, Lcom/amap/api/services/a/dc;->a:Lcom/amap/api/services/a/dc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/services/a/dc;->a:Lcom/amap/api/services/a/dc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    :try_start_2
    sget-object v0, Lcom/amap/api/services/a/dc;->a:Lcom/amap/api/services/a/dc;

    iget-object v0, v0, Lcom/amap/api/services/a/dc;->b:Lcom/amap/api/services/a/dl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/services/a/dc;->a:Lcom/amap/api/services/a/dc;

    invoke-static {p1}, Lcom/amap/api/services/a/dl;->a(I)Lcom/amap/api/services/a/dl;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/a/dc;->b:Lcom/amap/api/services/a/dl;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/amap/api/services/a/ay;Lcom/amap/api/services/a/de;)V
    .locals 2

    new-instance v0, Lcom/amap/api/services/a/dg;

    invoke-direct {v0}, Lcom/amap/api/services/a/dg;-><init>()V

    iput-object p1, v0, Lcom/amap/api/services/a/dg;->a:Lcom/amap/api/services/a/ay;

    iput-object p2, v0, Lcom/amap/api/services/a/dg;->b:Lcom/amap/api/services/a/de;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/services/a/dc;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/dc;Lcom/amap/api/services/a/ay;Lcom/amap/api/services/a/de;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/dc;->a(Lcom/amap/api/services/a/ay;Lcom/amap/api/services/a/de;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/dc;Lcom/amap/api/services/a/df;Lcom/amap/api/services/a/de;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/dc;->a(Lcom/amap/api/services/a/df;Lcom/amap/api/services/a/de;)V

    return-void
.end method

.method private a(Lcom/amap/api/services/a/df;Lcom/amap/api/services/a/de;)V
    .locals 2

    iget-object v0, p1, Lcom/amap/api/services/a/df;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/amap/api/services/a/df;->a:[B

    invoke-interface {p2, v0, v1}, Lcom/amap/api/services/a/de;->a(Ljava/util/Map;[B)V

    new-instance v0, Lcom/amap/api/services/a/dg;

    invoke-direct {v0}, Lcom/amap/api/services/a/dg;-><init>()V

    iput-object p2, v0, Lcom/amap/api/services/a/dg;->b:Lcom/amap/api/services/a/de;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/services/a/dc;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/services/a/dd;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/ay;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/dc;->a(Lcom/amap/api/services/a/dd;Z)Lcom/amap/api/services/a/df;
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/services/a/df;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/amap/api/services/a/bo;->a()Lcom/amap/api/services/a/bo;

    move-result-object v1

    const-string v2, "NetManager"

    const-string v3, "makeSyncPostRequest"

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/services/a/bo;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/a/ay;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/amap/api/services/a/dd;Z)Lcom/amap/api/services/a/df;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/ay;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/dc;->b(Lcom/amap/api/services/a/dd;)V

    iget-object v0, p1, Lcom/amap/api/services/a/dd;->h:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/amap/api/services/a/da;

    iget v2, p1, Lcom/amap/api/services/a/dd;->f:I

    iget v3, p1, Lcom/amap/api/services/a/dd;->g:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/services/a/da;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p1}, Lcom/amap/api/services/a/dd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/a/dd;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/services/a/dd;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/services/a/da;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/services/a/df;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/amap/api/services/a/dd;->h:Ljava/net/Proxy;
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/services/a/ay;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ay;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/amap/api/services/a/dd;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/ay;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/dc;->b(Lcom/amap/api/services/a/dd;Z)Lcom/amap/api/services/a/df;
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/services/a/df;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/ay;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/amap/api/services/a/dd;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/ay;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/dc;->b(Lcom/amap/api/services/a/dd;Z)Lcom/amap/api/services/a/df;
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/services/a/df;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/services/a/ay;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
