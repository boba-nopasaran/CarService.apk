.class public Lcom/amap/api/navi/model/AMapNaviPath;
.super Ljava/lang/Object;
.source "AMapNaviPath.java"


# instance fields
.field private allLength:I

.field private allTime:I

.field private bounds:Lcom/amap/api/maps/model/LatLngBounds;

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

.field private center:Lcom/amap/api/navi/model/NaviLatLng;

.field private endPoi:Lcom/amap/api/navi/model/NaviLatLng;

.field private labels:Ljava/lang/String;

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

.field private mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviStep;",
            ">;"
        }
    .end annotation
.end field

.field private restrictionInfo:Lcom/amap/api/navi/model/AMapRestrictionInfo;

.field private startPoi:Lcom/amap/api/navi/model/NaviLatLng;

.field private stepsCount:I

.field private strategy:I

.field private tollCost:I

.field private trafficStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapTrafficStatus;",
            ">;"
        }
    .end annotation
.end field

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

.field public wayPointIndex:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->wayPointIndex:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->trafficStatuses:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->tollCost:I

    return-void
.end method


# virtual methods
.method public getAllCameras()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->cameras:Ljava/util/List;

    return-object v0
.end method

.method public getAllLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->allLength:I

    return v0
.end method

.method public getAllTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->allTime:I

    return v0
.end method

.method public getBoundsForPath()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getCenterForPath()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->center:Lcom/amap/api/navi/model/NaviLatLng;

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

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->list:Ljava/util/List;

    return-object v0
.end method

.method public getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->endPoi:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getLabels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->labels:Ljava/lang/String;

    return-object v0
.end method

.method public getRestrictionInfo()Lcom/amap/api/navi/model/AMapRestrictionInfo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->restrictionInfo:Lcom/amap/api/navi/model/AMapRestrictionInfo;

    return-object v0
.end method

.method public getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->startPoi:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method getStep(I)Lcom/amap/api/navi/model/AMapNaviStep;
    .locals 1

    const/4 v0, 0x0

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

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->mSteps:Ljava/util/List;

    return-object v0
.end method

.method public getStepsCount()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->stepsCount:I

    return v0
.end method

.method public getStrategy()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->strategy:I

    return v0
.end method

.method public getTollCost()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->tollCost:I

    return v0
.end method

.method public getTrafficStatuses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapTrafficStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->trafficStatuses:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->wayPoi:Ljava/util/List;

    return-object v0
.end method

.method public getWayPointIndex()[I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviPath;->wayPointIndex:[I

    return-object v0
.end method

.method setAllLength(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->allLength:I

    return-void
.end method

.method setAllTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->allTime:I

    return-void
.end method

.method setBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    return-void
.end method

.method public setCameras(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviCameraInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->cameras:Ljava/util/List;

    return-void
.end method

.method setCenter(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->center:Lcom/amap/api/navi/model/NaviLatLng;

    return-void
.end method

.method setEndPoint(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->endPoi:Lcom/amap/api/navi/model/NaviLatLng;

    return-void
.end method

.method public setLabels(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->labels:Ljava/lang/String;

    return-void
.end method

.method setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->list:Ljava/util/List;

    return-void
.end method

.method public setRestrictionInfo(Lcom/amap/api/navi/model/AMapRestrictionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->restrictionInfo:Lcom/amap/api/navi/model/AMapRestrictionInfo;

    return-void
.end method

.method setStartPoint(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->startPoi:Lcom/amap/api/navi/model/NaviLatLng;

    return-void
.end method

.method setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviStep;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->mSteps:Ljava/util/List;

    return-void
.end method

.method setStepsCount(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->stepsCount:I

    return-void
.end method

.method setStrategy(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->strategy:I

    return-void
.end method

.method setTollCost(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->tollCost:I

    return-void
.end method

.method public setTrafficStatus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapTrafficStatus;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->trafficStatuses:Ljava/util/List;

    return-void
.end method

.method setWayPoint(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviPath;->wayPoi:Ljava/util/List;

    return-void
.end method
