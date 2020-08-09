.class public Lcom/amap/api/col/e;
.super Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
.source "CameraZoomMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 0

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    iget v1, p0, Lcom/amap/api/col/e;->amount:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/e;->zoom:F

    iget-object v0, p0, Lcom/amap/api/col/e;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/col/e;->zoom:F

    invoke-static {v0, v1}, Lcom/amap/api/col/ch;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/e;->zoom:F

    invoke-virtual {p0, p1}, Lcom/amap/api/col/e;->normalChange(Lcom/autonavi/ae/gmap/GLMapState;)V

    return-void
.end method
