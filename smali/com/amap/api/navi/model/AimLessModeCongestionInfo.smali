.class public Lcom/amap/api/navi/model/AimLessModeCongestionInfo;
.super Ljava/lang/Object;
.source "AimLessModeCongestionInfo.java"


# instance fields
.field private final amapCongestionLinks:[Lcom/amap/api/navi/model/AMapCongestionLink;

.field private congestionStatus:I

.field private eventLat:D

.field private eventLon:D

.field private eventType:I

.field private length:I

.field private roadName:Ljava/lang/String;

.field private time:I


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->etaTime:I

    iput v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->time:I

    iget v0, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->length:I

    iput v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->length:I

    iget-object v0, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->roadName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->roadName:Ljava/lang/String;

    iget v0, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->congestionStatus:I

    iput v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->congestionStatus:I

    iget v0, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->eventType:I

    iput v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventType:I

    iget-wide v0, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->eventLon:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventLon:D

    iget-wide v0, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->eventLat:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventLat:D

    iget-object v0, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->linkDatas:[Lcom/autonavi/ae/guide/model/LinkLineStatus;

    array-length v0, v0

    new-array v0, v0, [Lcom/amap/api/navi/model/AMapCongestionLink;

    iput-object v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->amapCongestionLinks:[Lcom/amap/api/navi/model/AMapCongestionLink;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->amapCongestionLinks:[Lcom/amap/api/navi/model/AMapCongestionLink;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->amapCongestionLinks:[Lcom/amap/api/navi/model/AMapCongestionLink;

    new-instance v2, Lcom/amap/api/navi/model/AMapCongestionLink;

    iget-object v3, p1, Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;->linkDatas:[Lcom/autonavi/ae/guide/model/LinkLineStatus;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/amap/api/navi/model/AMapCongestionLink;-><init>(Lcom/autonavi/ae/guide/model/LinkLineStatus;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAmapCongestionLinks()[Lcom/amap/api/navi/model/AMapCongestionLink;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->amapCongestionLinks:[Lcom/amap/api/navi/model/AMapCongestionLink;

    return-object v0
.end method

.method public getCongestionStatus()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->congestionStatus:I

    return v0
.end method

.method public getEventLat()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventLat:D

    return-wide v0
.end method

.method public getEventLon()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventLon:D

    return-wide v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventType:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->length:I

    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->roadName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->time:I

    return v0
.end method

.method public setCongestionStatus(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->congestionStatus:I

    return-void
.end method

.method public setEventLat(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventLat:D

    return-void
.end method

.method public setEventLon(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventLon:D

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->eventType:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->length:I

    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->roadName:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->time:I

    return-void
.end method
