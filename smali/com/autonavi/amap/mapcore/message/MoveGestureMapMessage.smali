.class public Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;
.super Lcom/autonavi/amap/mapcore/message/GestureMapMessage;
.source "MoveGestureMapMessage.java"


# instance fields
.field public touch_delta_x:F

.field public touch_delta_y:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;-><init>(I)V

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_x:F

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_y:F

    iput p2, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_x:F

    iput p3, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_y:F

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 4

    iget v0, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_x:F

    float-to-int v0, v0

    iget v1, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->touch_delta_y:F

    float-to-int v1, v1

    iget v2, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->width:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->height:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    int-to-float v0, v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v1, v1

    sub-float v1, v3, v1

    float-to-int v1, v1

    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v0, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGlCenter(FF)V

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    return-void
.end method
