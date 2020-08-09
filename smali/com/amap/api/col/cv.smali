.class public Lcom/amap/api/col/cv;
.super Ljava/lang/Object;
.source "MyRouteObserver.java"

# interfaces
.implements Lcom/autonavi/ae/route/observer/HttpInterface;
.implements Lcom/autonavi/ae/route/observer/PathRequestObserver;
.implements Lcom/autonavi/ae/route/observer/RouteObserver;


# instance fields
.field private final a:Lcom/amap/api/col/cr;

.field private b:Lcom/autonavi/ae/route/route/CalcRouteResult;

.field private c:[I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/navi/model/NaviPath;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/cr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cv;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cv;->e:Ljava/util/Map;

    new-instance v0, Lcom/amap/api/col/cv$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cv$1;-><init>(Lcom/amap/api/col/cv;)V

    iput-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/col/cv;->a:Lcom/amap/api/col/cr;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cv;)Lcom/amap/api/col/cr;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cv;->a:Lcom/amap/api/col/cr;

    return-object v0
.end method

.method private a(Lcom/autonavi/ae/route/route/Route;Ljava/util/List;)Lcom/amap/api/navi/model/NaviPath;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/ae/route/route/Route;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;)",
            "Lcom/amap/api/navi/model/NaviPath;"
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getPathLabel()[Lcom/autonavi/ae/route/model/LabelInfo;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    array-length v9, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v10, v7, v6

    iget-object v10, v10, Lcom/autonavi/ae/route/model/LabelInfo;->mContent:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getTmcBarItem()[Lcom/autonavi/ae/route/model/TmcBarItem;

    move-result-object v9

    array-length v10, v9

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v11, v9, v6

    new-instance v12, Lcom/amap/api/navi/model/AMapTrafficStatus;

    invoke-direct {v12, v11}, Lcom/amap/api/navi/model/AMapTrafficStatus;-><init>(Lcom/autonavi/ae/route/model/TmcBarItem;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getGroupSegmentList()[Lcom/autonavi/ae/route/model/GroupSegment;

    move-result-object v10

    array-length v11, v10

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v11, :cond_2

    aget-object v12, v10, v6

    new-instance v13, Lcom/amap/api/navi/model/NaviGuide;

    invoke-direct {v13}, Lcom/amap/api/navi/model/NaviGuide;-><init>()V

    iget v14, v12, Lcom/autonavi/ae/route/model/GroupSegment;->startSegId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/autonavi/ae/route/route/Route;->getSegment(I)Lcom/autonavi/ae/route/route/RouteSegment;

    move-result-object v14

    iget-object v15, v12, Lcom/autonavi/ae/route/model/GroupSegment;->groupName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Lcom/amap/api/navi/model/NaviGuide;->setName(Ljava/lang/String;)V

    iget v12, v12, Lcom/autonavi/ae/route/model/GroupSegment;->distance:I

    invoke-virtual {v13, v12}, Lcom/amap/api/navi/model/NaviGuide;->setLength(I)V

    invoke-virtual {v14}, Lcom/autonavi/ae/route/route/RouteSegment;->getSegTime()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/amap/api/navi/model/NaviGuide;->setTime(I)V

    new-instance v12, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-virtual {v14}, Lcom/autonavi/ae/route/route/RouteSegment;->getStartPoint()Lcom/autonavi/ae/route/model/GeoPoint;

    move-result-object v15

    invoke-virtual {v15}, Lcom/autonavi/ae/route/model/GeoPoint;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v14}, Lcom/autonavi/ae/route/route/RouteSegment;->getStartPoint()Lcom/autonavi/ae/route/model/GeoPoint;

    move-result-object v15

    invoke-virtual {v15}, Lcom/autonavi/ae/route/model/GeoPoint;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-virtual {v13, v12}, Lcom/amap/api/navi/model/NaviGuide;->setCoord(Lcom/amap/api/navi/model/NaviLatLng;)V

    invoke-virtual {v14}, Lcom/autonavi/ae/route/route/RouteSegment;->getMainAction()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/amap/api/navi/model/NaviGuide;->setIconType(I)V

    new-instance v12, Lcom/amap/api/navi/model/AMapNaviGuide;

    invoke-direct {v12, v13}, Lcom/amap/api/navi/model/AMapNaviGuide;-><init>(Lcom/amap/api/navi/model/NaviGuide;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getAllCamera()[Lcom/autonavi/ae/route/model/RouteCamera;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_3

    const/4 v6, 0x0

    :goto_3
    array-length v12, v10

    if-ge v6, v12, :cond_3

    new-instance v12, Lcom/amap/api/navi/model/AMapNaviCameraInfo;

    aget-object v13, v10, v6

    invoke-direct {v12, v13}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;-><init>(Lcom/autonavi/ae/route/model/RouteCamera;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    new-instance v6, Lcom/amap/api/navi/model/NaviPath;

    invoke-direct {v6}, Lcom/amap/api/navi/model/NaviPath;-><init>()V

    invoke-virtual {v6, v9}, Lcom/amap/api/navi/model/NaviPath;->setGuideList(Ljava/util/List;)V

    invoke-virtual {v6, v8}, Lcom/amap/api/navi/model/NaviPath;->setTrafficStatus(Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getRouteId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/amap/api/navi/model/NaviPath;->setId(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getRouteLength()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/amap/api/navi/model/NaviPath;->setAllLength(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getRouteTime()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/amap/api/navi/model/NaviPath;->setAllTime(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getSegmentCount()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/amap/api/navi/model/NaviPath;->setStepsCount(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getTollCost()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/amap/api/navi/model/NaviPath;->setTollCost(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getEndPoint()Lcom/autonavi/ae/route/model/GeoPoint;

    move-result-object v8

    new-instance v9, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-virtual {v8}, Lcom/autonavi/ae/route/model/GeoPoint;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v8}, Lcom/autonavi/ae/route/model/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-virtual {v6, v9}, Lcom/amap/api/navi/model/NaviPath;->setEndPoint(Lcom/amap/api/navi/model/NaviLatLng;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/amap/api/navi/model/NaviPath;->setWayPoint(Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getRouteStrategy()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/amap/api/navi/model/NaviPath;->setStrategy(I)V

    invoke-virtual {v6, v7}, Lcom/amap/api/navi/model/NaviPath;->setLabels(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getRestrictionInfo()Lcom/autonavi/ae/route/model/RestrictionInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/navi/model/NaviPath;->setRestrictionInfo(Lcom/autonavi/ae/route/model/RestrictionInfo;)V

    invoke-virtual {v6, v11}, Lcom/amap/api/navi/model/NaviPath;->setCameras(Ljava/util/List;)V

    const/4 v8, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getSegmentCount()I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move v10, v7

    :goto_4
    if-ge v10, v11, :cond_7

    new-instance v14, Lcom/amap/api/navi/model/AMapNaviStep;

    invoke-direct {v14}, Lcom/amap/api/navi/model/AMapNaviStep;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/autonavi/ae/route/route/Route;->getSegment(I)Lcom/autonavi/ae/route/route/RouteSegment;

    move-result-object v15

    invoke-virtual {v15}, Lcom/autonavi/ae/route/route/RouteSegment;->getSegChargeLength()I

    move-result v7

    invoke-virtual {v14, v7}, Lcom/amap/api/navi/model/AMapNaviStep;->setChargeLength(I)V

    invoke-virtual {v15}, Lcom/autonavi/ae/route/route/RouteSegment;->getSegTime()I

    move-result v7

    invoke-virtual {v14, v7}, Lcom/amap/api/navi/model/AMapNaviStep;->setTime(I)V

    invoke-virtual {v15}, Lcom/autonavi/ae/route/route/RouteSegment;->getSegCoor()[D

    move-result-object v9

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_4

    const/4 v7, 0x0

    :goto_5
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    new-instance v17, Lcom/amap/api/navi/model/NaviLatLng;

    add-int/lit8 v18, v7, 0x1

    aget-wide v18, v9, v18

    aget-wide v20, v9, v7

    invoke-direct/range {v17 .. v21}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x2

    goto :goto_5

    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/amap/api/navi/model/AMapNaviStep;->setCoords(Ljava/util/List;)V

    invoke-virtual {v15}, Lcom/autonavi/ae/route/route/RouteSegment;->getSegLength()I

    move-result v7

    invoke-virtual {v14, v7}, Lcom/amap/api/navi/model/AMapNaviStep;->setLength(I)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Lcom/autonavi/ae/route/route/RouteSegment;->getLinkCount()I

    move-result v17

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v14, v7}, Lcom/amap/api/navi/model/AMapNaviStep;->setStartIndex(I)V

    const/4 v7, 0x0

    move v9, v7

    :goto_6
    move/from16 v0, v17

    if-ge v9, v0, :cond_6

    invoke-virtual {v15, v9}, Lcom/autonavi/ae/route/route/RouteSegment;->getLink(I)Lcom/autonavi/ae/route/route/RouteLink;

    move-result-object v7

    new-instance v18, Lcom/amap/api/navi/model/AMapNaviLink;

    invoke-direct/range {v18 .. v18}, Lcom/amap/api/navi/model/AMapNaviLink;-><init>()V

    invoke-virtual {v7}, Lcom/autonavi/ae/route/route/RouteLink;->getLinkRoadClass()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/amap/api/navi/model/AMapNaviLink;->setRoadClass(I)V

    invoke-virtual {v7}, Lcom/autonavi/ae/route/route/RouteLink;->getLinkRoadName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/amap/api/navi/model/AMapNaviLink;->setRoadName(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/autonavi/ae/route/route/RouteLink;->haveTrafficLights()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/amap/api/navi/model/AMapNaviLink;->setTrafficLights(Z)V

    invoke-virtual {v7}, Lcom/autonavi/ae/route/route/RouteLink;->getLinkCoor()[D

    move-result-object v19

    const/4 v7, 0x0

    :goto_7
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v7, v0, :cond_5

    add-int/lit8 v20, v7, 0x1

    aget-wide v20, v19, v20

    aget-wide v22, v19, v7

    new-instance v24, Lcom/amap/api/navi/model/NaviLatLng;

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x2

    goto :goto_7

    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/amap/api/navi/model/AMapNaviLink;->setCoords(Ljava/util/List;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_6

    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/amap/api/navi/model/AMapNaviStep;->setLinks(Ljava/util/List;)V

    invoke-virtual {v14, v8}, Lcom/amap/api/navi/model/AMapNaviStep;->setEndIndex(I)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v6, v12}, Lcom/amap/api/navi/model/NaviPath;->setListStep(Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getStartPoint()Lcom/autonavi/ae/route/model/GeoPoint;

    move-result-object v7

    new-instance v8, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-virtual {v7}, Lcom/autonavi/ae/route/model/GeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7}, Lcom/autonavi/ae/route/model/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-direct {v8, v10, v11, v14, v15}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-virtual {v6, v8}, Lcom/amap/api/navi/model/NaviPath;->setStartPoint(Lcom/amap/api/navi/model/NaviLatLng;)V

    invoke-virtual {v6, v13}, Lcom/amap/api/navi/model/NaviPath;->setList(Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/route/route/Route;->getRouteBound()[D

    move-result-object v7

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v8

    new-instance v9, Lcom/amap/api/maps/model/LatLng;

    const/4 v10, 0x1

    aget-wide v10, v7, v10

    const/4 v12, 0x0

    aget-wide v12, v7, v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v8, v9}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v8

    new-instance v9, Lcom/amap/api/maps/model/LatLng;

    const/4 v10, 0x3

    aget-wide v10, v7, v10

    const/4 v12, 0x2

    aget-wide v12, v7, v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v8, v9}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/navi/model/NaviPath;->setBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    return-object v6

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v7, "WTBTControl"

    const-string v8, "initNaviPath()"

    invoke-static {v6, v7, v8}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_8
.end method

.method static synthetic b(Lcom/amap/api/col/cv;)[I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cv;->c:[I

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/cv;->e:Ljava/util/Map;

    return-object v0
.end method

.method protected a(Lcom/autonavi/ae/route/route/CalcRouteResult;[Lcom/autonavi/ae/route/model/RoutePoi;Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/amap/api/col/ct;->a([Lcom/autonavi/ae/route/model/RoutePoi;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/ae/route/route/CalcRouteResult;->getRouteCount()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/amap/api/col/cv;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/amap/api/col/cv;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    if-eqz p3, :cond_2

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/amap/api/col/cv;->c:[I

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/route/route/CalcRouteResult;->getRoute(I)Lcom/autonavi/ae/route/route/Route;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/amap/api/col/cv;->a(Lcom/autonavi/ae/route/route/Route;Ljava/util/List;)Lcom/amap/api/navi/model/NaviPath;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/cv;->c:[I

    add-int/lit8 v5, v0, 0xc

    aput v5, v4, v0

    iget-object v4, p0, Lcom/amap/api/col/cv;->e:Ljava/util/Map;

    add-int/lit8 v5, v0, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amap/api/navi/model/NaviPath;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/amap/api/col/cv;->d:Ljava/util/Map;

    add-int/lit8 v5, v0, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/col/cv;->c:[I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/route/route/CalcRouteResult;->getRoute(I)Lcom/autonavi/ae/route/route/Route;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/cv;->a(Lcom/autonavi/ae/route/route/Route;Ljava/util/List;)Lcom/amap/api/navi/model/NaviPath;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cv;->c:[I

    const/4 v2, 0x0

    const/16 v3, 0xc

    aput v3, v1, v2

    iget-object v1, p0, Lcom/amap/api/col/cv;->e:Ljava/util/Map;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviPath;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/col/cv;->d:Ljava/util/Map;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/navi/model/NaviPath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/cv;->d:Ljava/util/Map;

    return-object v0
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cv;->c:[I

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cv;->b:Lcom/autonavi/ae/route/route/CalcRouteResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cv;->b:Lcom/autonavi/ae/route/route/CalcRouteResult;

    invoke-virtual {v0}, Lcom/autonavi/ae/route/route/CalcRouteResult;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cv;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cv;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cv;->e:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cv;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method public onNewRoute(ILcom/autonavi/ae/route/route/CalcRouteResult;Ljava/lang/Object;Z)V
    .locals 3

    :try_start_0
    const-string v0, "ATest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewRoute,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/autonavi/ae/route/route/CalcRouteResult;->getRouteCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amap/api/col/cv;->b:Lcom/autonavi/ae/route/route/CalcRouteResult;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cv;->c:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cv;->c:[I

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cv;->a:Lcom/amap/api/col/cr;

    invoke-virtual {v0}, Lcom/amap/api/col/cr;->isCalculateMultipleRoutes()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/cv;->b:Lcom/autonavi/ae/route/route/CalcRouteResult;

    invoke-static {}, Lcom/amap/api/col/cs;->c()[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/cv;->a:Lcom/amap/api/col/cr;

    invoke-virtual {v2}, Lcom/amap/api/col/cr;->isCalculateMultipleRoutes()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/col/cv;->a(Lcom/autonavi/ae/route/route/CalcRouteResult;[Lcom/autonavi/ae/route/model/RoutePoi;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cv;->b:Lcom/autonavi/ae/route/route/CalcRouteResult;

    invoke-static {}, Lcom/amap/api/col/cs;->c()[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/amap/api/col/cv;->a(Lcom/autonavi/ae/route/route/CalcRouteResult;[Lcom/autonavi/ae/route/model/RoutePoi;Z)V

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/cv;->a:Lcom/amap/api/col/cr;

    iget-object v1, p0, Lcom/amap/api/col/cv;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cr;->c(I)I

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    const/4 v1, 0x4

    const/16 v2, 0x194

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onNewRouteError(IILjava/lang/Object;Z)V
    .locals 4

    const/16 v0, 0x13

    const-string v1, "ATest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewRouteError,type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",errorCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xd

    if-ne p2, v1, :cond_2

    move p2, v0

    :cond_0
    :goto_0
    const-string v0, "v3/ae8/driving"

    invoke-static {v0, p2}, Lcom/amap/api/col/dn;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x10

    if-ne p2, v1, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_0

    const/16 p2, 0x14

    goto :goto_0
.end method

.method public onPathChanged(I)V
    .locals 3

    const-string v0, "AE8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPathChanged,err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestHttpGet(IILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestHttpPost(IILjava/lang/String;[B)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/cs;->e()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/du;->a(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "Type=\"4\""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Types=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Flag=\"135352\""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flag=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATest"

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "1.0"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amap/api/col/ct;->a(ILjava/lang/String;[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cv;->a:Lcom/amap/api/col/cr;

    invoke-virtual {v1}, Lcom/amap/api/col/cr;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/amap/api/col/ct;->a(Landroid/content/Context;I[B)Lcom/amap/api/col/gn;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/ct;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amap/api/col/dn;->a(Ljava/lang/String;Lcom/amap/api/col/gn;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v1, Lcom/amap/api/col/cw;

    iget-object v0, v0, Lcom/amap/api/col/gn;->a:[B

    invoke-direct {v1, p1, p2, v0}, Lcom/amap/api/col/cw;-><init>(II[B)V

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cv;->f:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "rObserver"

    const-string v2, "rhp"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
