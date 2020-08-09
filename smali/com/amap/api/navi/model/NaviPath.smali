.class public Lcom/amap/api/navi/model/NaviPath;
.super Ljava/lang/Object;
.source "NaviPath.java"


# instance fields
.field private allLength:I

.field private allTime:I

.field public amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

.field public bounds:Lcom/amap/api/maps/model/LatLngBounds;

.field private cameras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviCameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field public center:Lcom/amap/api/navi/model/NaviLatLng;

.field private endPoi:Lcom/amap/api/navi/model/NaviLatLng;

.field private guideList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviGuide;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private listStep:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviStep;",
            ">;"
        }
    .end annotation
.end field

.field private maxCoordForPath:Lcom/amap/api/navi/model/NaviLatLng;

.field private minCoordForPath:Lcom/amap/api/navi/model/NaviLatLng;

.field private startPoi:Lcom/amap/api/navi/model/NaviLatLng;

.field private stepsCount:I

.field private strategy:I

.field private tollCost:I

.field private wayPoi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-direct {v0}, Lcom/amap/api/navi/model/AMapNaviPath;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    new-instance v0, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->maxCoordForPath:Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v0, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-direct {v0, v4, v5, v4, v5}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->minCoordForPath:Lcom/amap/api/navi/model/NaviLatLng;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/navi/model/NaviPath;->tollCost:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->guideList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviPath;->allLength:I

    return v0
.end method

.method public getAllTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviPath;->allTime:I

    return v0
.end method

.method public getBoundsForPath()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getCameras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviCameraInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->cameras:Ljava/util/List;

    return-object v0
.end method

.method public getCenterForPath()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->center:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getCoordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->list:Ljava/util/List;

    return-object v0
.end method

.method public getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->endPoi:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getGuideList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviGuide;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->guideList:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/model/NaviPath;->id:J

    return-wide v0
.end method

.method public getMaxCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->maxCoordForPath:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getMinCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->minCoordForPath:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->startPoi:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviStep;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->listStep:Ljava/util/List;

    return-object v0
.end method

.method public getStepsCount()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviPath;->stepsCount:I

    return v0
.end method

.method public getStrategy()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviPath;->strategy:I

    return v0
.end method

.method public getTollCost()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviPath;->tollCost:I

    return v0
.end method

.method public getWayPoint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->wayPoi:Ljava/util/List;

    return-object v0
.end method

.method public setAllLength(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/navi/model/NaviPath;->allLength:I

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setAllLength(I)V

    return-void
.end method

.method public setAllTime(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/navi/model/NaviPath;->allTime:I

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setAllTime(I)V

    return-void
.end method

.method public setBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviPath;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    return-void
.end method

.method public setCameras(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviCameraInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviPath;->cameras:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setCameras(Ljava/util/List;)V

    return-void
.end method

.method public setCenter(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviPath;->center:Lcom/amap/api/navi/model/NaviLatLng;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setCenter(Lcom/amap/api/navi/model/NaviLatLng;)V

    return-void
.end method

.method public setEndPoint(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviPath;->endPoi:Lcom/amap/api/navi/model/NaviLatLng;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setEndPoint(Lcom/amap/api/navi/model/NaviLatLng;)V

    return-void
.end method

.method public setGuideList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviGuide;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->guideList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->guideList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/model/NaviPath;->id:J

    return-void
.end method

.method public setLabels(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setLabels(Ljava/lang/String;)V

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviPath;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setList(Ljava/util/List;)V

    return-void
.end method

.method public setListStep(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviStep;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviPath;->listStep:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setSteps(Ljava/util/List;)V

    return-void
.end method

.method public setRestrictionInfo(Lcom/autonavi/ae/route/model/RestrictionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    new-instance v1, Lcom/amap/api/navi/model/AMapRestrictionInfo;

    invoke-direct {v1, p1}, Lcom/amap/api/navi/model/AMapRestrictionInfo;-><init>(Lcom/autonavi/ae/route/model/RestrictionInfo;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviPath;->setRestrictionInfo(Lcom/amap/api/navi/model/AMapRestrictionInfo;)V

    return-void
.end method

.method public setStartPoint(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviPath;->startPoi:Lcom/amap/api/navi/model/NaviLatLng;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setStartPoint(Lcom/amap/api/navi/model/NaviLatLng;)V

    return-void
.end method

.method public setStepsCount(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/navi/model/NaviPath;->stepsCount:I

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setStepsCount(I)V

    return-void
.end method

.method public setStrategy(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/navi/model/NaviPath;->strategy:I

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setStrategy(I)V

    return-void
.end method

.method public setTollCost(I)V
    .locals 2

    iput p1, p0, Lcom/amap/api/navi/model/NaviPath;->tollCost:I

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    iget v1, p0, Lcom/amap/api/navi/model/NaviPath;->tollCost:I

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviPath;->setTollCost(I)V

    return-void
.end method

.method public setTrafficStatus(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapTrafficStatus;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setTrafficStatus(Ljava/util/List;)V

    return-void
.end method

.method public setWayPoint(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviPath;->wayPoi:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/model/AMapNaviPath;->setWayPoint(Ljava/util/List;)V

    return-void
.end method
