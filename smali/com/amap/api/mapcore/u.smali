.class public Lcom/amap/api/mapcore/u;
.super Ljava/lang/Object;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/u$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/col/ay;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amap/api/mapcore/u$a;

.field c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/amap/api/col/bg;

.field e:[F

.field private f:Lcom/amap/api/mapcore/k;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V
    .locals 3

    const/16 v1, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/amap/api/mapcore/u$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/u$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/u;->b:Lcom/amap/api/mapcore/u$a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/u;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/u;->e:[F

    iput-object p2, p0, Lcom/amap/api/mapcore/u;->f:Lcom/amap/api/mapcore/k;

    iput-object p1, p0, Lcom/amap/api/mapcore/u;->g:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/mapcore/u$1;

    invoke-direct {v0, p0, v1, v1}, Lcom/amap/api/mapcore/u$1;-><init>(Lcom/amap/api/mapcore/u;II)V

    new-instance v1, Lcom/amap/api/maps/model/TileOverlayOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/TileOverlayOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/TileOverlayOptions;->tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;

    move-result-object v0

    const/high16 v1, 0xa00000

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/TileOverlayOptions;->memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    const/16 v1, 0x5000

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/TileOverlayOptions;->diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;

    new-instance v1, Lcom/amap/api/col/bg;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/amap/api/col/bg;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/u;Z)V

    iput-object v1, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/mapcore/k;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->f:Lcom/amap/api/mapcore/k;

    return-object v0
.end method

.method public a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/amap/api/col/bg;

    invoke-direct {v1, p1, p0}, Lcom/amap/api/col/bg;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/u;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/u;->a(Lcom/amap/api/col/ay;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->f:Lcom/amap/api/mapcore/k;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    new-instance v0, Lcom/amap/api/maps/model/TileOverlay;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/TileOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/amap/api/col/ay;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/u;->b(Lcom/amap/api/col/ay;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/u;->d()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    :try_start_0
    sget v0, Lcom/amap/api/mapcore/g;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->f:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-boolean v0, v0, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->f:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/bg;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/ay;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amap/api/col/ay;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/col/ay;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TileOverlayView"

    const-string v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/u;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/ch;->c(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/u;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget v0, Lcom/amap/api/mapcore/g;->c:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->a()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/ay;

    invoke-interface {v0}, Lcom/amap/api/col/ay;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/amap/api/col/ay;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/bg;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/ay;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/col/ay;->b(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Lcom/amap/api/col/ay;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/ay;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/col/ay;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->b:Lcom/amap/api/mapcore/u$a;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/amap/api/mapcore/u;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Lcom/amap/api/col/ay;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->g:Landroid/content/Context;

    return-object v0
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/u;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->remove()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/u;->d:Lcom/amap/api/col/bg;

    return-void
.end method

.method public g()[F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->f:Lcom/amap/api/mapcore/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/u;->f:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->t()[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/u;->e:[F

    goto :goto_0
.end method
