.class public Lcom/amap/api/mapcore/i;
.super Ljava/lang/Object;
.source "GLOverlayLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/i$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/k;

.field b:Lcom/amap/api/mapcore/i$a;

.field private c:I

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/col/at;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/i;->c:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/i;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/i;->f:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/mapcore/i$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/i$1;-><init>(Lcom/amap/api/mapcore/i;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/i;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/mapcore/i$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/i$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/i;->b:Lcom/amap/api/mapcore/i$a;

    iput-object p1, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/i;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/i;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method private a(Lcom/amap/api/col/at;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/i;->c()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/col/an;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/aj;

    iget-object v1, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    invoke-direct {v0, v1}, Lcom/amap/api/col/aj;-><init>(Lcom/amap/api/mapcore/k;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/aj;->setStrokeColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStart()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/aj;->a(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getPassed()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/aj;->b(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getEnd()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/aj;->c(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/aj;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/aj;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/ArcOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/aj;->setZIndex(F)V

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/col/at;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/col/ao;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/ak;

    iget-object v1, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    invoke-direct {v0, v1}, Lcom/amap/api/col/ak;-><init>(Lcom/amap/api/mapcore/k;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ak;->setFillColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getCenter()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ak;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ak;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ak;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ak;->setZIndex(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ak;->setStrokeColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CircleOptions;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/ak;->setRadius(D)V

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/col/at;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/col/ap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/am;

    iget-object v1, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    invoke-direct {v0, v1}, Lcom/amap/api/col/am;-><init>(Lcom/amap/api/mapcore/k;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/am;->a(FF)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/am;->setDimensions(FF)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->setImage(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->setPositionFromBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->setTransparency(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/GroundOverlayOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->setZIndex(F)V

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/col/at;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/col/as;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/bb;

    iget-object v1, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    invoke-direct {v0, v1}, Lcom/amap/api/col/bb;-><init>(Lcom/amap/api/mapcore/k;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getTopColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bb;->setTopColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bb;->setPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bb;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bb;->setWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/NavigateArrowOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bb;->setZIndex(F)V

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/col/at;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/col/at;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/at;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amap/api/col/at;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/amap/api/col/aw;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/amap/api/col/aw;

    move-object v2, v0

    invoke-interface {v2, p1}, Lcom/amap/api/col/aw;->a(Lcom/amap/api/maps/model/LatLng;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/col/av;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/bc;

    iget-object v1, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    invoke-direct {v0, v1}, Lcom/amap/api/col/bc;-><init>(Lcom/amap/api/mapcore/k;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bc;->setFillColor(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bc;->setPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bc;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bc;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bc;->setZIndex(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bc;->setStrokeColor(I)V

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/col/at;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/col/aw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/bd;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/bd;-><init>(Lcom/amap/api/mapcore/i;Lcom/amap/api/maps/model/PolylineOptions;)V

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/i;->a(Lcom/amap/api/col/at;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/i;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/amap/api/mapcore/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-array v2, v4, [I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/at;

    :try_start_0
    invoke-interface {v0}, Lcom/amap/api/col/at;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x14

    if-le v1, v3, :cond_3

    invoke-interface {v0}, Lcom/amap/api/col/at;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/amap/api/col/at;->getZIndex()F

    move-result v3

    int-to-float v4, p2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-interface {v0}, Lcom/amap/api/col/at;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "GLOverlayLayer"

    const-string v4, "draw"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/amap/api/col/at;->getZIndex()F

    move-result v3

    int-to-float v4, p2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-interface {v0}, Lcom/amap/api/col/at;->c()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/amap/api/col/at;->getZIndex()F

    move-result v3

    int-to-float v4, p2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-interface {v0}, Lcom/amap/api/col/at;->c()V

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lcom/amap/api/col/at;->getZIndex()F

    move-result v3

    int-to-float v4, p2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-interface {v0}, Lcom/amap/api/col/at;->c()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/at;

    invoke-interface {v0}, Lcom/amap/api/col/at;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "GLOverlayLayer"

    const-string v2, "destory"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLOverlayLayer destory erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/i;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/i;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/at;

    invoke-interface {v0}, Lcom/amap/api/col/at;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "GLOverlayLayer"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLOverlayLayer clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Ljava/lang/String;)Lcom/amap/api/col/at;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/at;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/col/at;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/i;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/i;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/i;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/amap/api/mapcore/k;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    return-object v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/i;->c(Ljava/lang/String;)Lcom/amap/api/col/at;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()[F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/i;->a:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->t()[F

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    goto :goto_0
.end method
