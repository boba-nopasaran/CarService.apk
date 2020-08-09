.class public Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;
.super Lcom/autonavi/amap/mapcore/message/GestureMapMessage;
.source "RotateGestureMapMessage.java"


# instance fields
.field public angle_delta:F

.field public pivot_x:I

.field public pivot_y:I


# direct methods
.method public constructor <init>(IFII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;-><init>(I)V

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_x:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_y:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->angle_delta:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->angle_delta:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_x:I

    iput p4, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_y:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 6

    const/4 v0, 0x0

    iget v2, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_x:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->pivot_y:I

    iget-boolean v3, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->isUseAnchor:Z

    if-eqz v3, :cond_4

    iget v2, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->anchorX:I

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->anchorY:I

    move v3, v2

    move v2, v1

    :goto_0
    if-gtz v3, :cond_0

    if-lez v2, :cond_3

    :cond_0
    new-instance v1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v5, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p1, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    :goto_1
    iget v4, p0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->angle_delta:F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v4}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    if-gtz v3, :cond_1

    if-lez v2, :cond_2

    :cond_1
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

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

    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    move v3, v2

    move v2, v1

    goto :goto_0
.end method
