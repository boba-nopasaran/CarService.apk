.class public Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;
.super Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;
.source "AMapNaviTrafficFacilityInfo.java"


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;-><init>()V

    iget v0, p1, Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;->type:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->type:I

    iget-wide v0, p1, Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;->longitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->longitude:D

    iget-wide v0, p1, Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;->latitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->latitude:D

    iget v0, p1, Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;->distance:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->distance:I

    iget v0, p1, Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;->limitSpeed:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->limitSpeed:I

    return-void
.end method


# virtual methods
.method public getBroadcastType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->type:I

    return v0
.end method

.method public getCoorX()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->longitude:D

    return-wide v0
.end method

.method public getCoorY()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->latitude:D

    return-wide v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->distance:I

    return v0
.end method

.method public getLimitSpeed()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->limitSpeed:I

    return v0
.end method

.method public setBroadcastType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->type:I

    return-void
.end method

.method public setCoorX(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->longitude:D

    return-void
.end method

.method public setCoorY(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->latitude:D

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->distance:I

    return-void
.end method

.method public setLimitSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->limitSpeed:I

    return-void
.end method
