.class public Lcom/autonavi/tbt/TrafficFacilityInfo;
.super Ljava/lang/Object;
.source "TrafficFacilityInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public boardcastType:I

.field public coor_X:D

.field public coor_Y:D

.field public distance:I

.field public limitSpeed:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->coor_X:D

    iput-wide v0, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->coor_Y:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->boardcastType:I

    iput v2, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->distance:I

    iput v2, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->limitSpeed:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getCoorX()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->coor_X:D

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getCoorY()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->coor_Y:D

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getBroadcastType()I

    move-result v0

    iput v0, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->boardcastType:I

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getDistance()I

    move-result v0

    iput v0, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->distance:I

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getLimitSpeed()I

    move-result v0

    iput v0, p0, Lcom/autonavi/tbt/TrafficFacilityInfo;->limitSpeed:I

    return-void
.end method
