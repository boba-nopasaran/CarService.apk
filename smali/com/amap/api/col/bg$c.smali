.class Lcom/amap/api/col/bg$c;
.super Lcom/amap/api/col/bm;
.source "TileOverlayDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/bm",
        "<",
        "Lcom/amap/api/mapcore/k;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/amap/api/col/bg$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/bg;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/col/bg;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/bg$c;->a:Lcom/amap/api/col/bg;

    invoke-direct {p0}, Lcom/amap/api/col/bm;-><init>()V

    iput-boolean p2, p0, Lcom/amap/api/col/bg$c;->f:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/amap/api/mapcore/k;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/bg$c;->a([Lcom/amap/api/mapcore/k;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lcom/amap/api/mapcore/k;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amap/api/mapcore/k;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/col/bg$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->getMapWidth()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v2}, Lcom/amap/api/mapcore/k;->getMapHeight()I

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v3}, Lcom/amap/api/mapcore/k;->f()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/amap/api/col/bg$c;->e:I

    if-lez v1, :cond_0

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/amap/api/col/bg$c;->a:Lcom/amap/api/col/bg;

    iget v4, p0, Lcom/amap/api/col/bg$c;->e:I

    invoke-static {v3, v4, v1, v2}, Lcom/amap/api/col/bg;->a(Lcom/amap/api/col/bg;III)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/bg$c;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/col/bg$b;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg$c;->a:Lcom/amap/api/col/bg;

    iget v1, p0, Lcom/amap/api/col/bg$c;->e:I

    iget-boolean v2, p0, Lcom/amap/api/col/bg$c;->f:Z

    invoke-static {v0, p1, v1, v2}, Lcom/amap/api/col/bg;->a(Lcom/amap/api/col/bg;Ljava/util/List;IZ)Z

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
