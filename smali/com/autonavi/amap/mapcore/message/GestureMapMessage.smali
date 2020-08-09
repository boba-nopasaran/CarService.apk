.class public abstract Lcom/autonavi/amap/mapcore/message/GestureMapMessage;
.super Lcom/autonavi/ae/gmap/MapMessage;
.source "GestureMapMessage.java"


# instance fields
.field public anchorX:I

.field public anchorY:I

.field public height:I

.field public isGestureScaleByMapCenter:Z

.field public isUseAnchor:Z

.field private state_:I

.field public width:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/MapMessage;-><init>()V

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->width:I

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->height:I

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isGestureScaleByMapCenter:Z

    iput-boolean v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isUseAnchor:Z

    iput v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->state_:I

    iput p1, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->state_:I

    return-void
.end method


# virtual methods
.method public getMapGestureState()I
    .locals 1

    iget v0, p0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->state_:I

    return v0
.end method

.method public abstract getType()I
.end method

.method public abstract runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V
.end method

.method protected win2geo(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    new-instance v0, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->win2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    iget v1, v0, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    iget v0, v0, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    invoke-virtual {p1, v1, v0, p4}, Lcom/autonavi/ae/gmap/GLMapState;->map2Geo(FFLcom/autonavi/amap/mapcore/IPoint;)V

    return-void
.end method
