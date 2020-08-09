.class public Lcom/amap/api/navi/model/AMapNaviCameraInfo;
.super Ljava/lang/Object;
.source "AMapNaviCameraInfo.java"


# instance fields
.field private cameraDistance:I

.field private cameraSpeed:I

.field private cameraType:I

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/guide/model/NaviCamera;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/autonavi/ae/guide/model/NaviCamera;->x:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->x:D

    iget-wide v0, p1, Lcom/autonavi/ae/guide/model/NaviCamera;->y:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->y:D

    iget v0, p1, Lcom/autonavi/ae/guide/model/NaviCamera;->cameraType:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraType:I

    iget v0, p1, Lcom/autonavi/ae/guide/model/NaviCamera;->cameraSpeed:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraSpeed:I

    iget v0, p1, Lcom/autonavi/ae/guide/model/NaviCamera;->cameraDistance:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraDistance:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/ae/route/model/RouteCamera;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/autonavi/ae/route/model/RouteCamera;->longitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->x:D

    iget-wide v0, p1, Lcom/autonavi/ae/route/model/RouteCamera;->latitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->y:D

    iget v0, p1, Lcom/autonavi/ae/route/model/RouteCamera;->cameraType:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraType:I

    iget v0, p1, Lcom/autonavi/ae/route/model/RouteCamera;->cameraSpeed:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraSpeed:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraDistance:I

    return-void
.end method


# virtual methods
.method public getCameraDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraDistance:I

    return v0
.end method

.method public getCameraSpeed()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraSpeed:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->cameraType:I

    return v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviCameraInfo;->y:D

    return-wide v0
.end method
