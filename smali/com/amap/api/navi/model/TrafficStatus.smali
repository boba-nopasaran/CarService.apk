.class public Lcom/amap/api/navi/model/TrafficStatus;
.super Lcom/autonavi/ae/route/model/TmcBarItem;
.source "TrafficStatus.java"


# instance fields
.field public trafficStatus:Lcom/amap/api/navi/model/AMapTrafficStatus;


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/route/model/TmcBarItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/ae/route/model/TmcBarItem;-><init>()V

    iget v0, p1, Lcom/autonavi/ae/route/model/TmcBarItem;->status:I

    iput v0, p0, Lcom/amap/api/navi/model/TrafficStatus;->status:I

    iget v0, p1, Lcom/autonavi/ae/route/model/TmcBarItem;->length:I

    iput v0, p0, Lcom/amap/api/navi/model/TrafficStatus;->length:I

    new-instance v0, Lcom/amap/api/navi/model/AMapTrafficStatus;

    invoke-direct {v0, p1}, Lcom/amap/api/navi/model/AMapTrafficStatus;-><init>(Lcom/autonavi/ae/route/model/TmcBarItem;)V

    iput-object v0, p0, Lcom/amap/api/navi/model/TrafficStatus;->trafficStatus:Lcom/amap/api/navi/model/AMapTrafficStatus;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/TrafficStatus;->length:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/TrafficStatus;->status:I

    return v0
.end method

.method setLength(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/navi/model/TrafficStatus;->length:I

    iget-object v0, p0, Lcom/amap/api/navi/model/TrafficStatus;->trafficStatus:Lcom/amap/api/navi/model/AMapTrafficStatus;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapTrafficStatus;->setLength(I)V

    return-void
.end method

.method setStatus(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/navi/model/TrafficStatus;->status:I

    iget-object v0, p0, Lcom/amap/api/navi/model/TrafficStatus;->trafficStatus:Lcom/amap/api/navi/model/AMapTrafficStatus;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapTrafficStatus;->setStatus(I)V

    return-void
.end method
