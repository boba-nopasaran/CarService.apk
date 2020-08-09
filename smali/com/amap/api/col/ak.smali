.class public Lcom/amap/api/col/ak;
.super Ljava/lang/Object;
.source "CircleDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/ao;


# static fields
.field private static n:F

.field private static o:I

.field private static p:I


# instance fields
.field private a:Lcom/amap/api/maps/model/LatLng;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/mapcore/k;

.field private j:Ljava/nio/FloatBuffer;

.field private k:I

.field private l:Z

.field private m:Lcom/autonavi/amap/mapcore/IPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x4c18dfc2    # 4.0075016E7f

    sput v0, Lcom/amap/api/col/ak;->n:F

    const/16 v0, 0x100

    sput v0, Lcom/amap/api/col/ak;->o:I

    const/16 v0, 0x14

    sput v0, Lcom/amap/api/col/ak;->p:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/k;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ak;->a:Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/ak;->b:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/col/ak;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/col/ak;->d:I

    iput v2, p0, Lcom/amap/api/col/ak;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/ak;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/ak;->g:Z

    iput v2, p0, Lcom/amap/api/col/ak;->k:I

    iput-boolean v2, p0, Lcom/amap/api/col/ak;->l:Z

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ak;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iput-object p1, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/ak;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CircleDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(D)F
    .locals 5

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sget v2, Lcom/amap/api/col/ak;->n:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    sget v2, Lcom/amap/api/col/ak;->o:I

    sget v3, Lcom/amap/api/col/ak;->p:I

    shl-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private b(D)D
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/ak;->a(D)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/ak;->l:Z

    iget-object v0, p0, Lcom/amap/api/col/ak;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    const/16 v0, 0x169

    new-array v1, v0, [Lcom/autonavi/amap/mapcore/FPoint;

    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    new-array v2, v0, [F

    iget-object v0, p0, Lcom/amap/api/col/ak;->a:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-direct {p0, v4, v5}, Lcom/amap/api/col/ak;->b(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/amap/api/col/ak;->b:D

    mul-double/2addr v4, v6

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v3

    new-instance v6, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/ak;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v7, p0, Lcom/amap/api/col/ak;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v7, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v3, v0, v7, v6}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v0, 0x0

    iget v7, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v7, v2, v0

    const/4 v0, 0x1

    iget v7, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v7, v2, v0

    const/4 v0, 0x2

    const/4 v7, 0x0

    aput v7, v2, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v7, 0x169

    if-ge v0, v7, :cond_0

    int-to-double v8, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    iget-object v7, p0, Lcom/amap/api/col/ak;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v7, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-double v12, v7

    add-double/2addr v10, v12

    double-to-int v7, v10

    iget-object v10, p0, Lcom/amap/api/col/ak;->m:Lcom/autonavi/amap/mapcore/IPoint;

    iget v10, v10, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-double v10, v10

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v3, v7, v8, v6}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    aput-object v6, v1, v0

    iget-object v9, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    invoke-interface {v9}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    iput v7, v6, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget-object v7, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    invoke-interface {v7}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v7

    sub-int v7, v8, v7

    int-to-float v7, v7

    iput v7, v6, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v7, v7, 0x3

    aget-object v8, v1, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v8, v2, v7

    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    aget-object v8, v1, v0

    iget v8, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v8, v2, v7

    add-int/lit8 v7, v0, 0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    aput v8, v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/amap/api/col/ak;->k:I

    invoke-static {v2}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/nio/FloatBuffer;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/amap/api/col/ak;->a:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/ak;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/ak;->b()Z

    iget-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/ak;->k:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/ak;->e:I

    iget v1, p0, Lcom/amap/api/col/ak;->d:I

    iget-object v2, p0, Lcom/amap/api/col/ak;->j:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/amap/api/col/ak;->c:F

    iget v4, p0, Lcom/amap/api/col/ak;->k:I

    iget-object v5, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    invoke-interface {v5}, Lcom/amap/api/mapcore/k;->t()[F

    move-result-object v5

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/br;->a(IILjava/nio/FloatBuffer;FI[FII)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/ak;->l:Z

    goto :goto_0
.end method

.method public contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/amap/api/col/ak;->b:D

    iget-object v2, p0, Lcom/amap/api/col/ak;->a:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v2, p1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->l:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/amap/api/col/ak;->a:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CircleDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "destroy erro"

    const-string v1, "CircleDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method e()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/ak;->k:I

    iget-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenter()Lcom/amap/api/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ak;->a:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/ak;->e:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ak;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    const-string v1, "Circle"

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ak;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/amap/api/col/ak;->b:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/ak;->d:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/ak;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/ak;->f:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->g:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setCenter(Lcom/amap/api/maps/model/LatLng;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/ak;->a:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v4, p0, Lcom/amap/api/col/ak;->m:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->e()V

    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/ak;->e:I

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setRadius(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-wide p1, p0, Lcom/amap/api/col/ak;->b:D

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->e()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/ak;->d:I

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/ak;->c:F

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/ak;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/ak;->f:F

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->e()V

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method
