.class public Lcom/amap/api/col/dj;
.super Ljava/lang/Object;
.source "RTBTControl.java"

# interfaces
.implements Lcom/amap/api/col/df;


# instance fields
.field private a:Lcom/autonavi/rtbt/RTBT;

.field private b:Lcom/amap/api/navi/model/NaviPath;

.field private c:Landroid/content/Context;

.field private d:Lcom/autonavi/rtbt/IFrameForRTBT;

.field private e:Lcom/amap/api/navi/model/NaviLatLng;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviGuide;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/dj;->f:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/dj;->g:I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "RTBTControl-->RTBTControl(\u6784\u9020\u51fd\u6570)"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    new-instance v0, Lcom/autonavi/rtbt/RTBT;

    invoke-direct {v0}, Lcom/autonavi/rtbt/RTBT;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    new-instance v0, Lcom/amap/api/col/cz;

    iget-object v1, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/cz;-><init>(Landroid/content/Context;Lcom/amap/api/col/dj;)V

    iput-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "RTBTControl"

    const-string v2, "RTBTControl()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()Lcom/amap/api/navi/model/NaviPath;
    .locals 33

    new-instance v6, Lcom/amap/api/navi/model/NaviPath;

    invoke-direct {v6}, Lcom/amap/api/navi/model/NaviPath;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v7}, Lcom/autonavi/rtbt/RTBT;->getRouteLength()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/navi/model/NaviPath;->setAllLength(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v7}, Lcom/autonavi/rtbt/RTBT;->getRouteTime()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/navi/model/NaviPath;->setAllTime(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v7}, Lcom/autonavi/rtbt/RTBT;->getSegNum()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/navi/model/NaviPath;->setStepsCount(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->e:Lcom/amap/api/navi/model/NaviLatLng;

    invoke-virtual {v6, v7}, Lcom/amap/api/navi/model/NaviPath;->setEndPoint(Lcom/amap/api/navi/model/NaviLatLng;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/amap/api/navi/model/NaviPath;->setStrategy(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v6}, Lcom/autonavi/rtbt/RTBT;->getSegNum()I

    move-result v23

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v7, -0x1

    const-wide/16 v16, 0x1

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v14, 0x1

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v6}, Lcom/amap/api/navi/model/NaviPath;->getWayPoint()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v6}, Lcom/amap/api/navi/model/NaviPath;->getWayPoint()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    iget-object v13, v13, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    new-array v6, v6, [I

    iput-object v6, v13, Lcom/amap/api/navi/model/AMapNaviPath;->wayPointIndex:[I

    :cond_0
    const/4 v6, 0x0

    move/from16 v21, v6

    move v6, v12

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    new-instance v26, Lcom/amap/api/navi/model/AMapNaviStep;

    invoke-direct/range {v26 .. v26}, Lcom/amap/api/navi/model/AMapNaviStep;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/autonavi/rtbt/RTBT;->getSegChargeLength(I)I

    move-result v12

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/amap/api/navi/model/AMapNaviStep;->setChargeLength(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/autonavi/rtbt/RTBT;->getSegTollCost(I)I

    move-result v12

    add-int v22, v6, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/autonavi/rtbt/RTBT;->getSegTime(I)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviStep;->setTime(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/autonavi/rtbt/RTBT;->getSegCoor(I)[D

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_1

    const/4 v6, 0x0

    :goto_1
    array-length v0, v12

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    new-instance v18, Lcom/amap/api/navi/model/NaviLatLng;

    add-int/lit8 v19, v6, 0x1

    aget-wide v28, v12, v19

    aget-wide v30, v12, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_1
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/amap/api/navi/model/AMapNaviStep;->setCoords(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/autonavi/rtbt/RTBT;->getSegLength(I)I

    move-result v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviStep;->setLength(I)V

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/autonavi/rtbt/RTBT;->getSegLinkNum(I)I

    move-result v28

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviStep;->setStartIndex(I)V

    const/4 v6, 0x0

    move/from16 v20, v6

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    new-instance v29, Lcom/amap/api/navi/model/AMapNaviLink;

    invoke-direct/range {v29 .. v29}, Lcom/amap/api/navi/model/AMapNaviLink;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/autonavi/rtbt/RTBT;->getLinkLength(II)I

    move-result v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviLink;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/autonavi/rtbt/RTBT;->getLinkTime(II)I

    move-result v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviLink;->setTime(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/autonavi/rtbt/RTBT;->getLinkRoadClass(II)I

    move-result v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviLink;->setRoadClass(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/autonavi/rtbt/RTBT;->getLinkFormWay(II)I

    move-result v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviLink;->setRoadType(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/autonavi/rtbt/RTBT;->getLinkRoadName(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviLink;->setRoadName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/autonavi/rtbt/RTBT;->haveTrafficLights(II)I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_6

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/amap/api/navi/model/AMapNaviLink;->setTrafficLights(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/autonavi/rtbt/RTBT;->getLinkCoor(II)[D

    move-result-object v30

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move/from16 v18, v6

    move/from16 v19, v7

    move-wide v6, v8

    :goto_4
    move-object/from16 v0, v30

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    move/from16 v0, v18

    if-ge v0, v8, :cond_7

    add-int/lit8 v8, v18, 0x1

    aget-wide v12, v30, v8

    aget-wide v8, v30, v18

    cmpg-double v32, v16, v12

    if-gez v32, :cond_2

    move-wide/from16 v16, v12

    :cond_2
    cmpg-double v32, v14, v8

    if-gez v32, :cond_3

    move-wide v14, v8

    :cond_3
    cmpl-double v32, v10, v12

    if-lez v32, :cond_4

    move-wide v10, v12

    :cond_4
    cmpl-double v32, v6, v8

    if-lez v32, :cond_5

    move-wide v6, v8

    :cond_5
    new-instance v32, Lcom/amap/api/navi/model/NaviLatLng;

    move-object/from16 v0, v32

    invoke-direct {v0, v12, v13, v8, v9}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-interface/range {v31 .. v32}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v19, 0x1

    add-int/lit8 v8, v18, 0x2

    move/from16 v18, v8

    move/from16 v19, v9

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviLink;->setCoords(Ljava/util/List;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v20, 0x1

    move/from16 v20, v8

    move-wide v8, v6

    move/from16 v7, v19

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/amap/api/navi/model/AMapNaviStep;->setEndIndex(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/amap/api/navi/model/NaviPath;->setWayPoint(Ljava/util/List;)V

    invoke-virtual/range {v26 .. v27}, Lcom/amap/api/navi/model/AMapNaviStep;->setLinks(Ljava/util/List;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v21, 0x1

    move/from16 v21, v6

    move/from16 v6, v22

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v7}, Lcom/amap/api/navi/model/NaviPath;->getMaxCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Lcom/amap/api/navi/model/NaviLatLng;->setLatitude(D)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v7}, Lcom/amap/api/navi/model/NaviPath;->getMaxCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Lcom/amap/api/navi/model/NaviLatLng;->setLongitude(D)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v7}, Lcom/amap/api/navi/model/NaviPath;->getMinCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Lcom/amap/api/navi/model/NaviLatLng;->setLatitude(D)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v7}, Lcom/amap/api/navi/model/NaviPath;->getMinCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/amap/api/navi/model/NaviLatLng;->setLongitude(D)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v7, v6}, Lcom/amap/api/navi/model/NaviPath;->setTollCost(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/amap/api/navi/model/NaviPath;->setListStep(Ljava/util/List;)V

    if-eqz v25, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/navi/model/NaviLatLng;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v7, v6}, Lcom/amap/api/navi/model/NaviPath;->setStartPoint(Lcom/amap/api/navi/model/NaviLatLng;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/amap/api/navi/model/NaviPath;->setList(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v6}, Lcom/amap/api/navi/model/NaviPath;->getMinCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v8}, Lcom/amap/api/navi/model/NaviPath;->getMinCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v10}, Lcom/amap/api/navi/model/NaviPath;->getMaxCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v12}, Lcom/amap/api/navi/model/NaviPath;->getMaxCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v12

    invoke-virtual {v12}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v12

    invoke-static/range {v6 .. v13}, Lcom/amap/api/col/ds;->a(DDDD)Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v6

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v8}, Lcom/amap/api/navi/model/NaviPath;->getMinCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v10}, Lcom/amap/api/navi/model/NaviPath;->getMinCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v9}, Lcom/amap/api/navi/model/NaviPath;->getMaxCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v9}, Lcom/amap/api/navi/model/NaviPath;->getMaxCoordForPath()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v12

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v9, Lcom/amap/api/maps/model/LatLngBounds;

    invoke-direct {v9, v7, v8}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v7, v9}, Lcom/amap/api/navi/model/NaviPath;->setBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v7, v6}, Lcom/amap/api/navi/model/NaviPath;->setCenter(Lcom/amap/api/navi/model/NaviLatLng;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    return-object v6

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v7, "RTBTControl"

    const-string v8, "initNaviPath()"

    invoke-static {v6, v7, v8}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/rtbt/RTBT;

    invoke-direct {v0}, Lcom/autonavi/rtbt/RTBT;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/autonavi/rtbt/RTBT;->setEmulatorSpeed(I)V

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/cz;

    iget-object v1, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/cz;-><init>(Landroid/content/Context;Lcom/amap/api/col/dj;)V

    iput-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/ej;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v5, "00000000"

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    iget-object v1, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/ds;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/navigation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AN_AmapSdk_ADR_FC"

    const-string v4, "0"

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/rtbt/RTBT;->init(Lcom/autonavi/rtbt/IFrameForRTBT;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    const-string v2, "userid"

    const-string v3, "AN_AmapSdk_ADR_FC"

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/rtbt/RTBT;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    const-string v3, "userpwd"

    const-string v4, "amapsdk"

    invoke-virtual {v2, v3, v4}, Lcom/autonavi/rtbt/RTBT;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/ef;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/amap/api/maps/MapsInitializer;->setApiKey(Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IFrameForRTBT;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IFrameForRTBT;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(IDD)V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_0

    const-string v0, "RTBTControl setCarLocation(WTBT)"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/rtbt/RTBT;->setCarLocation(IDD)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/location/Location;)V
    .locals 22

    :try_start_0
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v17, v3, 0x1

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v19

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v20

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amap/api/col/dj;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "RTBTControl setGpsInfo(WTBT)"

    invoke-static {v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v5, v2

    const-wide/16 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v12, v2

    const-wide v14, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v12, v14

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v14, v2

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v21}, Lcom/autonavi/rtbt/RTBT;->setGPSInfo(IIDDDDDIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IFrameForRTBT;->a(Lcom/amap/api/navi/AMapNaviListener;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iput p1, p0, Lcom/amap/api/col/dj;->g:I

    if-ne p1, v0, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v2}, Lcom/autonavi/rtbt/RTBT;->startGPSNavi()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    invoke-interface {v2, p1}, Lcom/autonavi/rtbt/IFrameForRTBT;->a(I)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v2}, Lcom/autonavi/rtbt/RTBT;->startEmulatorNavi()I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_2
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    invoke-interface {v2, p1}, Lcom/autonavi/rtbt/IFrameForRTBT;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public a(Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :try_start_0
    new-array v4, v0, [D

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v4, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v4, v0

    iput-object p1, p0, Lcom/amap/api/col/dj;->e:Lcom/amap/api/navi/model/NaviLatLng;

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/rtbt/RTBT;->requestRoute(III[DI[D)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "RTBTControl"

    const-string v2, "calculateRideRoute(to)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v8

    goto :goto_0
.end method

.method public a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :try_start_0
    new-array v4, v0, [D

    const/4 v0, 0x2

    new-array v6, v0, [D

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v4, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v4, v0

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v6, v0

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v6, v0

    iput-object p2, p0, Lcom/amap/api/col/dj;->e:Lcom/amap/api/navi/model/NaviLatLng;

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/autonavi/rtbt/RTBT;->requestRouteWithStart(III[DI[DI[D)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    move v0, v10

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "RTBTControl"

    const-string v2, "calculateRideRoute(from,to)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v10

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0}, Lcom/autonavi/rtbt/RTBT;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IFrameForRTBT;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/dj;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/dj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/dj;->f:Ljava/util/List;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/dj;->c:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/dj;->e:Lcom/amap/api/navi/model/NaviLatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "RTBTControl"

    const-string v2, "destroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    const/16 v0, 0x79

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0, p1}, Lcom/autonavi/rtbt/RTBT;->setEmulatorSpeed(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IFrameForRTBT;->b(Lcom/amap/api/navi/AMapNaviListener;)V

    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0, p1}, Lcom/autonavi/rtbt/RTBT;->selectRoute(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/dj;->g()Lcom/amap/api/navi/model/NaviPath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public c()Lcom/amap/api/navi/model/NaviInfo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IFrameForRTBT;->d()Lcom/amap/api/navi/model/NaviInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0, v1, v1}, Lcom/autonavi/rtbt/RTBT;->reroute(II)I

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0, p1}, Lcom/autonavi/rtbt/RTBT;->setTimeForOneWord(I)V

    :cond_0
    return-void
.end method

.method public e()Lcom/autonavi/rtbt/RTBT;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    return-object v0
.end method

.method public f()Lcom/autonavi/rtbt/IFrameForRTBT;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->d:Lcom/autonavi/rtbt/IFrameForRTBT;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0}, Lcom/autonavi/rtbt/RTBT;->pauseNavi()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0}, Lcom/autonavi/rtbt/RTBT;->stopNavi()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0}, Lcom/autonavi/rtbt/RTBT;->resumeNavi()V

    :cond_0
    return-void
.end method

.method public k()Lcom/amap/api/navi/model/AMapNaviPath;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dj;->b:Lcom/amap/api/navi/model/NaviPath;

    iget-object v0, v0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviGuide;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/dj;->a:Lcom/autonavi/rtbt/RTBT;

    invoke-virtual {v0}, Lcom/autonavi/rtbt/RTBT;->getNaviGuideList()[Lcom/autonavi/rtbt/NaviGuideItem;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/dj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/amap/api/navi/model/NaviGuide;

    aget-object v3, v1, v0

    invoke-direct {v2, v3}, Lcom/amap/api/navi/model/NaviGuide;-><init>(Lcom/autonavi/rtbt/NaviGuideItem;)V

    iget-object v3, p0, Lcom/amap/api/col/dj;->f:Ljava/util/List;

    iget-object v2, v2, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dj;->f:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "RTBTControl"

    const-string v2, "getNaviGuideList()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
