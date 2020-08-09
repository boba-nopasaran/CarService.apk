.class public Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;
.super Lcom/autonavi/amap/mapcore/message/GestureMapMessage;
.source "HoverGestureMapMessage.java"


# instance fields
.field public angle_delta:F


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->angle_delta:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->angle_delta:F

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 5

    const/high16 v1, 0x42820000    # 65.0f

    const/4 v0, 0x0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraHeaderAngle()F

    move-result v3

    iget v4, p0, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->angle_delta:F

    add-float/2addr v3, v4

    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    return-void

    :cond_0
    cmpl-float v0, v3, v1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraHeaderAngle()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    cmpl-float v0, v3, v2

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraHeaderAngle()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method
