.class public Lcom/amap/api/mapcore/offlinemap/f;
.super Lcom/amap/api/col/gv;
.source "OfflineMapDownloadTask.java"

# interfaces
.implements Lcom/amap/api/col/r$a;


# instance fields
.field private a:Lcom/amap/api/col/r;

.field private b:Lcom/amap/api/col/t;

.field private c:Lcom/amap/api/col/v;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Bundle;

.field private f:Lcom/amap/api/maps/AMap;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/col/v;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/gv;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->e:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->g:Z

    iput-object p1, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    iput-object p2, p0, Lcom/amap/api/mapcore/offlinemap/f;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/v;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/offlinemap/f;-><init>(Lcom/amap/api/col/v;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/amap/api/mapcore/offlinemap/f;->f:Lcom/amap/api/maps/AMap;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/ch;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    invoke-interface {v0}, Lcom/amap/api/col/v;->A()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/amap/api/col/s;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    invoke-interface {v1}, Lcom/amap/api/col/v;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/amap/api/mapcore/offlinemap/f;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    invoke-interface {v3}, Lcom/amap/api/col/v;->z()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/col/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/amap/api/col/r;

    iget-object v2, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    invoke-interface {v2}, Lcom/amap/api/col/v;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/offlinemap/f;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amap/api/col/r;-><init>(Lcom/amap/api/col/s;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/w;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/f;->a:Lcom/amap/api/col/r;

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->a:Lcom/amap/api/col/r;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/r;->a(Lcom/amap/api/col/r$a;)V

    new-instance v0, Lcom/amap/api/col/t;

    iget-object v1, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    iget-object v2, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/t;-><init>(Lcom/amap/api/col/q;Lcom/amap/api/col/p;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->b:Lcom/amap/api/col/t;

    iget-boolean v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->a:Lcom/amap/api/col/r;

    invoke-virtual {v0}, Lcom/amap/api/col/r;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    invoke-interface {v0}, Lcom/amap/api/col/v;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->c:Lcom/amap/api/col/v;

    sget-object v1, Lcom/amap/api/col/w$a;->c:Lcom/amap/api/col/w$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/v;->a(Lcom/amap/api/col/w$a;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/offlinemap/f;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->g:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->a:Lcom/amap/api/col/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->a:Lcom/amap/api/col/r;

    invoke-virtual {v0}, Lcom/amap/api/col/r;->c()V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->b:Lcom/amap/api/col/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->b:Lcom/amap/api/col/t;

    invoke-virtual {v0}, Lcom/amap/api/col/t;->a()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/offlinemap/f;->e()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/f;->f:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iput-object v1, p0, Lcom/amap/api/mapcore/offlinemap/f;->e:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->b:Lcom/amap/api/col/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/offlinemap/f;->b:Lcom/amap/api/col/t;

    invoke-virtual {v0}, Lcom/amap/api/col/t;->b()V

    :cond_0
    return-void
.end method
