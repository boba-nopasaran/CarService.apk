.class public final Lcom/maploc/d;
.super Ljava/lang/Object;
.source "MapGPSLocation.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/location/LocationManager;

.field volatile c:J

.field volatile d:Z

.field e:Z

.field volatile f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

.field g:Lcom/amap/api/maps/CoordinateConverter;

.field h:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maploc/d;->c:J

    iput-boolean v2, p0, Lcom/maploc/d;->d:Z

    iput-boolean v2, p0, Lcom/maploc/d;->e:Z

    iput-object v3, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    iput-object v3, p0, Lcom/maploc/d;->g:Lcom/amap/api/maps/CoordinateConverter;

    new-instance v0, Lcom/maploc/d$1;

    invoke-direct {v0, p0}, Lcom/maploc/d$1;-><init>(Lcom/maploc/d;)V

    iput-object v0, p0, Lcom/maploc/d;->h:Landroid/location/LocationListener;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/maploc/d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/maploc/d;->g:Lcom/amap/api/maps/CoordinateConverter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maploc/d;->g:Lcom/amap/api/maps/CoordinateConverter;

    :cond_2
    iget-object v0, p0, Lcom/maploc/d;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maploc/d;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/maploc/d;->b:Landroid/location/LocationManager;

    goto :goto_0
.end method

.method private e()V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/maploc/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/maploc/d;->b:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "force_xtra_injection"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/maploc/d;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x320

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/maploc/d;->h:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MAPGPSLocation"

    const-string v2, "requestLocationUpdates"

    invoke-static {v0, v1, v2}, Lcom/maploc/v;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maploc/d;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maploc/d;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/maploc/d;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/maploc/d;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maploc/d;->e:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maploc/d;->e:Z

    invoke-direct {p0}, Lcom/maploc/d;->f()V

    iget-object v0, p0, Lcom/maploc/d;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/maploc/d;->h:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maploc/d;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/maploc/d;->h:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/maploc/d;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/maploc/y;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/maploc/d;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;
    .locals 8

    iget-object v0, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    iget-object v1, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/maploc/d;->g:Lcom/amap/api/maps/CoordinateConverter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/maploc/v;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/maploc/d;->g:Lcom/amap/api/maps/CoordinateConverter;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v4

    iget-object v3, p0, Lcom/maploc/d;->f:Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/CoordinateConverter;->coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v1

    sget-object v2, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/CoordinateConverter;->convert()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLatitude(D)V

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
