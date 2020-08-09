.class public Lcom/autonavi/ae/route/route/Route;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field private mPtr:J

.field public mRouteInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private tmcBarItem:[Lcom/autonavi/ae/route/model/TmcBarItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/route/route/Route;->mRouteInfo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/route/route/Route;->mRouteInfo:Ljava/util/Map;

    iput-wide p1, p0, Lcom/autonavi/ae/route/route/Route;->mPtr:J

    return-void
.end method

.method private native getTmcBar()[Lcom/autonavi/ae/route/model/TmcBarItem;
.end method

.method private native nativeGetSegment(I)Lcom/autonavi/ae/route/route/RouteSegment;
.end method

.method private native nativeUpdateTmcBar([Lcom/autonavi/ae/route/model/TmcBarItem;)I
.end method


# virtual methods
.method public native addRef()V
.end method

.method public native buildRarefyPoint()[D
.end method

.method public native buildRarefyPoint(IDD)[D
.end method

.method public native decreaseRefAndRelease()V
.end method

.method public native destroy()V
.end method

.method public native findCarToFootPoint()Lcom/autonavi/ae/route/model/GeoPoint;
.end method

.method public native getAbnormalSection(I)Lcom/autonavi/ae/route/model/AbnormalSec;
.end method

.method public native getAbnormalSectionCount()I
.end method

.method public native getAbnormalState()I
.end method

.method public native getAllCamera()[Lcom/autonavi/ae/route/model/RouteCamera;
.end method

.method public native getAllTrafficLight()[Lcom/autonavi/ae/route/model/GeoPoint;
.end method

.method public native getAlongRoadID(II)[J
.end method

.method public native getAvoidJamArea()Lcom/autonavi/ae/route/model/AvoidJamArea;
.end method

.method public native getBypassLimitedRoad()I
.end method

.method public native getCityAdcodeList()[I
.end method

.method public native getClosestPoint(DD)Lcom/autonavi/ae/route/model/GeoPoint;
.end method

.method public native getDiffToTMCRoute()I
.end method

.method public native getEndPoint()Lcom/autonavi/ae/route/model/GeoPoint;
.end method

.method public native getGroupSegmentList()[Lcom/autonavi/ae/route/model/GroupSegment;
.end method

.method public native getInRouteIncident()[Lcom/autonavi/ae/route/model/RouteIncident;
.end method

.method public native getJamInfoList()[Lcom/autonavi/ae/route/model/JamInfo;
.end method

.method public native getJamSegment()[Lcom/autonavi/ae/route/model/JamSegment;
.end method

.method public native getLineItems()[Lcom/autonavi/ae/route/model/LineItem;
.end method

.method public getLineItems([Lcom/autonavi/ae/route/model/TmcBarItem;)[Lcom/autonavi/ae/route/model/LineItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/route/route/Route;->tmcBarItem:[Lcom/autonavi/ae/route/model/TmcBarItem;

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/route/route/Route;->updateTmcBar([Lcom/autonavi/ae/route/model/TmcBarItem;)I

    invoke-virtual {p0}, Lcom/autonavi/ae/route/route/Route;->getNaviLineItems()[Lcom/autonavi/ae/route/model/LineItem;

    move-result-object v0

    return-object v0
.end method

.method public native getNaviID()Ljava/lang/String;
.end method

.method public native getNaviLineItems()[Lcom/autonavi/ae/route/model/LineItem;
.end method

.method public native getPathLabel()[Lcom/autonavi/ae/route/model/LabelInfo;
.end method

.method public native getRestAreas(II)[Lcom/autonavi/ae/route/model/RestAreaInfo;
.end method

.method public native getRestrictionInfo()Lcom/autonavi/ae/route/model/RestrictionInfo;
.end method

.method public native getRoute3D()Lcom/autonavi/ae/route/route/Route3D;
.end method

.method public native getRouteBound()[D
.end method

.method public getRouteId()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/route/route/Route;->mPtr:J

    return-wide v0
.end method

.method public native getRouteIncident()[Lcom/autonavi/ae/route/model/RouteIncident;
.end method

.method public native getRouteLength()I
.end method

.method public native getRouteStrategy()I
.end method

.method public native getRouteTime()I
.end method

.method public getSegment(I)Lcom/autonavi/ae/route/route/RouteSegment;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/ae/route/route/Route;->nativeGetSegment(I)Lcom/autonavi/ae/route/route/RouteSegment;

    move-result-object v0

    return-object v0
.end method

.method public native getSegmentCount()I
.end method

.method public native getStartPoint()Lcom/autonavi/ae/route/model/GeoPoint;
.end method

.method public native getTip()Lcom/autonavi/ae/route/model/TipInfo;
.end method

.method public getTmcBarItem()[Lcom/autonavi/ae/route/model/TmcBarItem;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/route/route/Route;->tmcBarItem:[Lcom/autonavi/ae/route/model/TmcBarItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/route/route/Route;->tmcBarItem:[Lcom/autonavi/ae/route/model/TmcBarItem;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/autonavi/ae/route/route/Route;->getTmcBar()[Lcom/autonavi/ae/route/model/TmcBarItem;

    move-result-object v0

    goto :goto_0
.end method

.method public native getTollCost()I
.end method

.method public native getTrafficLightNum()I
.end method

.method public native getVIAPoints()[Lcom/autonavi/ae/route/model/GeoPoint;
.end method

.method public native isOnline()Z
.end method

.method public native isTruckPath()Z
.end method

.method public native setTruckPathFlag(Z)V
.end method

.method public updateTmcBar([Lcom/autonavi/ae/route/model/TmcBarItem;)I
    .locals 1

    iput-object p1, p0, Lcom/autonavi/ae/route/route/Route;->tmcBarItem:[Lcom/autonavi/ae/route/model/TmcBarItem;

    invoke-direct {p0, p1}, Lcom/autonavi/ae/route/route/Route;->nativeUpdateTmcBar([Lcom/autonavi/ae/route/model/TmcBarItem;)I

    move-result v0

    return v0
.end method
