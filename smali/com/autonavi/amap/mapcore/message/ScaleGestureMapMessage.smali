.class public Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;
.super Lcom/autonavi/amap/mapcore/message/GestureMapMessage;
.source "ScaleGestureMapMessage.java"


# instance fields
.field public pivot_x:I

.field public pivot_y:I

.field public scale_delta:F


# direct methods
.method public constructor <init>(IFII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->scale_delta:F

    iput v1, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_x:I

    iput v1, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_y:I

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->scale_delta:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_x:I

    iput p4, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_y:I

    return-void
.end method

.method private setMapZoomer(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 2

    iget v0, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->scale_delta:F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->isGestureScaleByMapCenter:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->setMapZoomer(Lcom/autonavi/ae/gmap/GLMapState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_x:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->pivot_y:I

    iget-boolean v3, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->isUseAnchor:Z

    if-eqz v3, :cond_5

    iget v2, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->anchorX:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->anchorY:I

    move v3, v2

    move v2, v1

    :goto_1
    if-gtz v3, :cond_2

    if-lez v2, :cond_4

    :cond_2
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->setMapZoomer(Lcom/autonavi/ae/gmap/GLMapState;)V

    if-gtz v3, :cond_3

    if-lez v2, :cond_0

    :cond_3
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v2, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v2, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    mul-int/lit8 v1, v1, 0x2

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    move v3, v2

    move v2, v1

    goto :goto_1
.end method
