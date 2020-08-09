.class public Lcom/amap/api/col/cu;
.super Ljava/lang/Object;
.source "MyGuideObserver.java"

# interfaces
.implements Lcom/autonavi/ae/guide/observer/GElecEyeObserver;
.implements Lcom/autonavi/ae/guide/observer/GNaviObserver;
.implements Lcom/autonavi/ae/guide/observer/GSoundPlayObserver;
.implements Lcom/autonavi/ae/guide/observer/GStatusObserver;
.implements Lcom/autonavi/ae/pos/LocListener;
.implements Lcom/autonavi/ae/pos/LocParallelRoadObserver;
.implements Lcom/autonavi/ae/route/observer/HttpInterface;


# instance fields
.field private a:Lcom/amap/api/col/cr;

.field private b:Lcom/amap/api/navi/model/NaviInfo;

.field private c:[Lcom/amap/api/navi/model/AMapLaneInfo;

.field private d:[B

.field private e:[B

.field private f:Lcom/amap/api/navi/model/AMapNaviCross;

.field private g:Lcom/amap/api/navi/model/AMapNaviLocation;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapTrafficStatus;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

.field private l:Lcom/amap/api/navi/model/AimLessModeStat;

.field private m:Lcom/amap/api/navi/model/AimLessModeCongestionInfo;

.field private n:I

.field private o:I

.field private p:[Lcom/autonavi/ae/route/model/TmcBarItem;

.field private q:I

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/cr;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/col/cu;->j:I

    iput-object v0, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    iput-object v0, p0, Lcom/amap/api/col/cu;->l:Lcom/amap/api/navi/model/AimLessModeStat;

    iput-object v0, p0, Lcom/amap/api/col/cu;->m:Lcom/amap/api/navi/model/AimLessModeCongestionInfo;

    iput v1, p0, Lcom/amap/api/col/cu;->n:I

    new-instance v0, Lcom/amap/api/col/cu$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cu$1;-><init>(Lcom/amap/api/col/cu;)V

    iput-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    iput-object p1, p0, Lcom/amap/api/col/cu;->a:Lcom/amap/api/col/cr;

    new-instance v0, Lcom/amap/api/navi/model/NaviInfo;

    invoke-direct {v0}, Lcom/amap/api/navi/model/NaviInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cu;->h:Ljava/util/List;

    return-void
.end method

.method private a(BB)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xf

    if-ne p2, v0, :cond_0

    mul-int/lit8 v0, p1, 0x10

    add-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, p1, 0x10

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private a(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    mul-int/lit8 v0, p1, 0x10

    add-int/2addr v0, p2

    return v0
.end method

.method private a([B)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p1, v0

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/amap/api/col/cu;)Lcom/amap/api/col/cr;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cu;->a:Lcom/amap/api/col/cr;

    return-object v0
.end method

.method private varargs a(I[Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/api/col/cu;->a:Lcom/amap/api/col/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->a:Lcom/amap/api/col/cr;

    invoke-virtual {v0}, Lcom/amap/api/col/cr;->g()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onNaviInfoUpdate(Lcom/amap/api/navi/model/NaviInfo;)V

    new-instance v2, Lcom/amap/api/navi/model/AMapNaviInfo;

    iget-object v3, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    invoke-virtual {v3}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainDistance()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    invoke-virtual {v4}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainTime()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/amap/api/navi/model/AMapNaviInfo;-><init>(II)V

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onNaviInfoUpdated(Lcom/amap/api/navi/model/AMapNaviInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "gObserver"

    const-string v2, "SendEvent()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onArriveDestination()V

    goto :goto_2

    :pswitch_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cu;->f:Lcom/amap/api/navi/model/AMapNaviCross;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->showCross(Lcom/amap/api/navi/model/AMapNaviCross;)V

    goto :goto_3

    :pswitch_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->hideCross()V

    goto :goto_4

    :pswitch_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cu;->c:[Lcom/amap/api/navi/model/AMapLaneInfo;

    iget-object v3, p0, Lcom/amap/api/col/cu;->d:[B

    iget-object v4, p0, Lcom/amap/api/col/cu;->e:[B

    invoke-interface {v0, v2, v3, v4}, Lcom/amap/api/navi/AMapNaviListener;->showLaneInfo([Lcom/amap/api/navi/model/AMapLaneInfo;[B[B)V

    goto :goto_5

    :pswitch_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->hideLaneInfo()V

    goto :goto_6

    :pswitch_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget v2, p0, Lcom/amap/api/col/cu;->o:I

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->notifyParallelRoad(I)V

    goto :goto_7

    :pswitch_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onTrafficStatusUpdate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :pswitch_a
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, p2, v0

    check-cast v0, [Lcom/amap/api/navi/model/AMapServiceAreaInfo;

    check-cast v0, [Lcom/amap/api/navi/model/AMapServiceAreaInfo;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v1, v0}, Lcom/amap/api/navi/AMapNaviListener;->onServiceAreaUpdate([Lcom/amap/api/navi/model/AMapServiceAreaInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_b
    iget v0, p0, Lcom/amap/api/col/cu;->i:I

    if-ne v0, v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onEndEmulatorNavi()V

    goto :goto_a

    :cond_2
    iget v0, p0, Lcom/amap/api/col/cu;->i:I

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onArriveDestination()V

    goto :goto_b

    :pswitch_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget v2, p0, Lcom/amap/api/col/cu;->j:I

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onArrivedWayPoint(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_c

    :pswitch_d
    const/4 v0, 0x0

    :try_start_4
    aget-object v0, p2, v0

    check-cast v0, [Lcom/amap/api/navi/model/AMapNaviCameraInfo;

    check-cast v0, [Lcom/amap/api/navi/model/AMapNaviCameraInfo;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v1, v0}, Lcom/amap/api/navi/AMapNaviListener;->updateCameraInfo([Lcom/amap/api/navi/model/AMapNaviCameraInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/amap/api/col/cu;->a:Lcom/amap/api/col/cr;

    iget v2, p0, Lcom/amap/api/col/cu;->n:I

    invoke-virtual {v0, v2}, Lcom/amap/api/col/cr;->reCalculateRoute(I)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onReCalculateRouteForYaw()V

    goto :goto_e

    :pswitch_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/amap/api/navi/AMapNaviListener;->onGetNavigationText(ILjava/lang/String;)V

    goto :goto_f

    :pswitch_10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->OnUpdateTrafficFacility([Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V

    iget-object v2, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    array-length v2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->OnUpdateTrafficFacility(Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V

    new-instance v2, Lcom/autonavi/tbt/TrafficFacilityInfo;

    iget-object v3, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Lcom/autonavi/tbt/TrafficFacilityInfo;-><init>(Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->OnUpdateTrafficFacility(Lcom/autonavi/tbt/TrafficFacilityInfo;)V

    goto :goto_10

    :pswitch_11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cu;->l:Lcom/amap/api/navi/model/AimLessModeStat;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->updateAimlessModeStatistics(Lcom/amap/api/navi/model/AimLessModeStat;)V

    goto :goto_11

    :pswitch_12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cu;->m:Lcom/amap/api/navi/model/AimLessModeCongestionInfo;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->updateAimlessModeCongestionInfo(Lcom/amap/api/navi/model/AimLessModeCongestionInfo;)V

    goto :goto_12

    :pswitch_13
    iget-object v0, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onLocationChange(Lcom/amap/api/navi/model/AMapNaviLocation;)V

    goto :goto_13

    :pswitch_14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget v2, p0, Lcom/amap/api/col/cu;->q:I

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onPlayRing(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_1
        :pswitch_13
        :pswitch_14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/cu;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method private a(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([B[B)[Lcom/amap/api/navi/model/AMapLaneInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/col/cu;->a([B)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/cu;->b(I)[Lcom/amap/api/navi/model/AMapLaneInfo;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v0, p1, v1

    invoke-direct {p0, v0}, Lcom/amap/api/col/cu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-byte v0, p1, v1

    aget-byte v4, p2, v1

    invoke-direct {p0, v0, v4}, Lcom/amap/api/col/cu;->a(II)I

    move-result v0

    :goto_1
    aget-object v4, v3, v1

    invoke-virtual {v4, v0}, Lcom/amap/api/navi/model/AMapLaneInfo;->setLaneTypeId(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v1

    aget-byte v4, p2, v1

    invoke-direct {p0, v0, v4}, Lcom/amap/api/col/cu;->a(BB)I

    move-result v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private b(I)[Lcom/amap/api/navi/model/AMapLaneInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-array v1, p1, [Lcom/amap/api/navi/model/AMapLaneInfo;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/amap/api/navi/model/AMapLaneInfo;

    invoke-direct {v2}, Lcom/amap/api/navi/model/AMapLaneInfo;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public ThreeDLastPass()V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->ThreeDLastPass()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Lcom/amap/api/navi/model/NaviInfo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    return-object v0
.end method

.method public arrayViaPoint(I)V
    .locals 3

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->arrayViaPoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/amap/api/col/cu;->j:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/amap/api/col/cu;->a:Lcom/amap/api/col/cr;

    iput-object v1, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iput-object v1, p0, Lcom/amap/api/col/cu;->c:[Lcom/amap/api/navi/model/AMapLaneInfo;

    iput-object v1, p0, Lcom/amap/api/col/cu;->d:[B

    iput-object v1, p0, Lcom/amap/api/col/cu;->e:[B

    iput-object v1, p0, Lcom/amap/api/col/cu;->f:Lcom/amap/api/navi/model/AMapNaviCross;

    iput-object v1, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    iput-object v1, p0, Lcom/amap/api/col/cu;->h:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
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

    iget-object v0, p0, Lcom/amap/api/col/cu;->h:Ljava/util/List;

    return-object v0
.end method

.method public get3DDataVersion(I)I
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->get3DDataVersion()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public hideCross()V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->hideCross()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public hideLaneInfo()V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->hideLaneInfo()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public isNaviPlaying()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/col/ds;->a:Z

    return v0
.end method

.method public navigationEnd(I)V
    .locals 3

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->navigationEnd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/amap/api/col/cu;->i:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onCarOnGuideRouteAgain()V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onCarOnGuideRouteAgain()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckNaviVoiceCfg(I)I
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onCheckNaviVoiceCfg()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onExitDirectionInfo(Lcom/autonavi/ae/guide/model/GuideBoardInfo;)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onExitDirectionInfo()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNaviEtaIncidentReport(III)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onNaviEtaIncidentReport()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNaviEtaIncidentReportHide(I)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onNaviEtaIncidentReportHide()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNaviRenderManeuverIcon([BLcom/autonavi/ae/guide/model/ManeuverIconConfig;)V
    .locals 3

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->onNaviRenderManeuverIcon(),maneuverId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->maneuverId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p2, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;->maneuverId:I

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/NaviInfo;->setIconType(I)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onNaviShowManeuver(II[BI)V
    .locals 9

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onNaviShowManeuver()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cu;->a:Lcom/amap/api/col/cr;

    invoke-virtual {v0}, Lcom/amap/api/col/cr;->e()Lcom/autonavi/ae/guide/GuideService;

    move-result-object v8

    new-instance v0, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const v3, 0x282c37

    const v4, 0x585a66

    const v5, 0xff00

    move v6, p2

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/ae/guide/model/ManeuverIconConfig;-><init>(IIIIIII)V

    invoke-virtual {v8, v0}, Lcom/autonavi/ae/guide/GuideService;->renderManeuverIcon(Lcom/autonavi/ae/guide/model/ManeuverIconConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPlayRing(I)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onPlayRing()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/amap/api/col/cu;->q:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPlayTTS(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->onPlayTTS(),type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",str="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onReroute(I)V
    .locals 3

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->onReroute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/amap/api/col/cu;->n:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onServiceAreaUpdate([Lcom/autonavi/ae/guide/model/ServiceAreaInfo;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    array-length v0, p1

    new-array v1, v0, [Lcom/amap/api/navi/model/AMapServiceAreaInfo;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/amap/api/navi/model/AMapServiceAreaInfo;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/amap/api/navi/model/AMapServiceAreaInfo;-><init>(Lcom/autonavi/ae/guide/model/ServiceAreaInfo;)V

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v2, :cond_2

    const-string v2, "MyGuideObserver"

    const-string v3, "MyGuideObserver-->onServiceAreaUpdate()"

    invoke-static {v2, v3}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTbtStatusChanged(II)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onTbtStatusChanged()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTmcUpdate([Lcom/autonavi/ae/route/model/TmcBarItem;II)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/cu;->p:[Lcom/autonavi/ae/route/model/TmcBarItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/cu;->p:[Lcom/autonavi/ae/route/model/TmcBarItem;

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_2

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/amap/api/col/cu;->p:[Lcom/autonavi/ae/route/model/TmcBarItem;

    aget-object v3, v3, v1

    iget v4, v2, Lcom/autonavi/ae/route/model/TmcBarItem;->length:I

    iget v5, v3, Lcom/autonavi/ae/route/model/TmcBarItem;->length:I

    if-ne v4, v5, :cond_0

    iget v2, v2, Lcom/autonavi/ae/route/model/TmcBarItem;->status:I

    iget v3, v3, Lcom/autonavi/ae/route/model/TmcBarItem;->status:I

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "MyGuideObserver"

    const-string v2, "MyGuideObserver-->onTmcUpdate()"

    invoke-static {v1, v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/cu;->h:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/cu;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/amap/api/col/cu;->h:Ljava/util/List;

    new-instance v3, Lcom/amap/api/navi/model/AMapTrafficStatus;

    invoke-direct {v3, v1}, Lcom/amap/api/navi/model/AMapTrafficStatus;-><init>(Lcom/autonavi/ae/route/model/TmcBarItem;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lcom/amap/api/col/cu;->p:[Lcom/autonavi/ae/route/model/TmcBarItem;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onTrafficFacilityUpdate([Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;)V
    .locals 4

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onTrafficFacilityUpdate()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    array-length v0, p1

    new-array v0, v0, [Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    iput-object v0, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cu;->k:[Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    new-instance v2, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;-><init>(Lcom/autonavi/ae/guide/model/TrafficFacilityInfo;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "gObserver"

    const-string v2, "updateTrafficFacility(TrafficFacilityInfo[] infoArray)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onUpdateNoNaviCongestionInfo(Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;)V
    .locals 3

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onUpdateNoNaviCongestionInfo()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;

    invoke-direct {v0, p1}, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;-><init>(Lcom/autonavi/ae/guide/model/NoNaviCongestionInfo;)V

    iput-object v0, p0, Lcom/amap/api/col/cu;->m:Lcom/amap/api/navi/model/AimLessModeCongestionInfo;

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "gObserver"

    const-string v2, "updateNoNaviCongestionInfo(NoNaviCongestionInfo info)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpdateNoNaviInfor(Lcom/autonavi/ae/guide/model/NoNaviInfor;)V
    .locals 3

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->onUpdateNoNaviInfor()-->\u5df2\u884c\u9a76\u8ddd\u79bb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/autonavi/ae/guide/model/NoNaviInfor;->noNaviDriveDist:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u5df2\u884c\u9a76\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/autonavi/ae/guide/model/NoNaviInfor;->noNaviDriveTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/amap/api/navi/model/AimLessModeStat;

    invoke-direct {v0, p1}, Lcom/amap/api/navi/model/AimLessModeStat;-><init>(Lcom/autonavi/ae/guide/model/NoNaviInfor;)V

    iput-object v0, p0, Lcom/amap/api/col/cu;->l:Lcom/amap/api/navi/model/AimLessModeStat;

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onfinishRecover3DPath(I)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->onfinishRecover3DPath()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestHttpGet(IILjava/lang/String;)Z
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->requestHttpGet()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public requestHttpPost(IILjava/lang/String;[B)Z
    .locals 6

    :try_start_0
    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->requestHttpPost(),moduleId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TheadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "1.0"

    invoke-static {v0, v1, p4}, Lcom/amap/api/col/ct;->a(ILjava/lang/String;[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cu;->a:Lcom/amap/api/col/cr;

    invoke-virtual {v1}, Lcom/amap/api/col/cr;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/amap/api/col/ct;->a(Landroid/content/Context;I[B)Lcom/amap/api/col/gn;

    move-result-object v0

    const-string v1, "MyGuideObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyGuideObserver-->requestHttpPost(),respData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/amap/api/col/gn;->a:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/col/cw;

    iget-object v0, v0, Lcom/amap/api/col/gn;->a:[B

    invoke-direct {v1, p1, p2, v0}, Lcom/amap/api/col/cw;-><init>(II[B)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "gObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestHttpPost("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCross(I[B[B)V
    .locals 3

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->showCross(),picFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/navi/model/AMapNaviCross;

    invoke-direct {v0, p1, p2, p3}, Lcom/amap/api/navi/model/AMapNaviCross;-><init>(I[B[B)V

    iput-object v0, p0, Lcom/amap/api/col/cu;->f:Lcom/amap/api/navi/model/AMapNaviCross;

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public showLaneInfo([B[B)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->showLaneInfo(),ThreadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/col/cu;->d:[B

    iput-object p2, p0, Lcom/amap/api/col/cu;->e:[B

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/cu;->a([B[B)[Lcom/amap/api/navi/model/AMapLaneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cu;->c:[Lcom/amap/api/navi/model/AMapLaneInfo;

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateCameraInfo([Lcom/autonavi/ae/guide/model/NaviCamera;)V
    .locals 5

    :try_start_0
    array-length v0, p1

    new-array v1, v0, [Lcom/amap/api/navi/model/AMapNaviCameraInfo;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/amap/api/navi/model/AMapNaviCameraInfo;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/amap/api/navi/model/AMapNaviCameraInfo;-><init>(Lcom/autonavi/ae/guide/model/NaviCamera;)V

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const-string v2, "MyGuideObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyGuideObserver-->updateCameraInfo(),size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "gObserver"

    const-string v2, "uci"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateCongestion(Lcom/autonavi/ae/guide/model/CongestionInfo;)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->updateCongestion()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCruiseInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->updateCruiseInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDataMiningTrafficEvent(Lcom/autonavi/ae/guide/model/TrafficEventInfo;)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->updateDataMiningTrafficEvent()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNaviInfo(Lcom/autonavi/ae/guide/model/NaviInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget-object v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->currentRoadName:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_CurRoadName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget-object v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->nextRoadName:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_NextRoadName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->routeRemainDistance:I

    iput v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainDis:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->routeRemainTime:I

    iput v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainTime:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->segmentRemainDistance:I

    iput v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainDis:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->segmentRemainTime:I

    iput v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainTime:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->currentSegNumber:I

    iput v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_CurSegNum:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->currentLinkNumber:I

    iput v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_CurLinkNum:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    iget v1, p1, Lcom/autonavi/ae/guide/model/NaviInfo;->iconId:I

    iput v1, v0, Lcom/amap/api/navi/model/NaviInfo;->m_Icon:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateNaviInfo(Lcom/autonavi/ae/pos/LocInfo2D;Lcom/autonavi/ae/pos/LocInfo3D;)V
    .locals 13

    const/4 v12, 0x1

    const-wide v4, 0x414b774000000000L    # 3600000.0

    :try_start_0
    iget-object v0, p1, Lcom/autonavi/ae/pos/LocInfo2D;->stPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iget v0, v0, Lcom/autonavi/ae/pos/LocMapPoint;->lat:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    iget-object v2, p1, Lcom/autonavi/ae/pos/LocInfo2D;->stPos:Lcom/autonavi/ae/pos/LocMapPoint;

    iget v2, v2, Lcom/autonavi/ae/pos/LocMapPoint;->lon:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    iget-wide v4, p1, Lcom/autonavi/ae/pos/LocInfo2D;->altAcc:D

    double-to-float v4, v4

    iget-wide v6, p1, Lcom/autonavi/ae/pos/LocInfo2D;->alt:D

    double-to-float v5, v6

    iget-wide v6, p1, Lcom/autonavi/ae/pos/LocInfo2D;->course:D

    double-to-int v6, v6

    iget-wide v8, p1, Lcom/autonavi/ae/pos/LocInfo2D;->speed:D

    double-to-int v7, v8

    iget-byte v8, p1, Lcom/autonavi/ae/pos/LocInfo2D;->isOnGuideRoad:B

    iget-object v9, p0, Lcom/amap/api/col/cu;->b:Lcom/amap/api/navi/model/NaviInfo;

    invoke-virtual {v9, v7}, Lcom/amap/api/navi/model/NaviInfo;->setCurrentSpeed(I)V

    new-instance v9, Lcom/amap/api/navi/model/AMapNaviLocation;

    invoke-direct {v9}, Lcom/amap/api/navi/model/AMapNaviLocation;-><init>()V

    iput-object v9, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    iget-object v9, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    invoke-virtual {v9, v4}, Lcom/amap/api/navi/model/AMapNaviLocation;->setAccuracy(F)V

    iget-object v4, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    float-to-double v10, v5

    invoke-virtual {v4, v10, v11}, Lcom/amap/api/navi/model/AMapNaviLocation;->setAltitude(D)V

    iget-object v4, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    int-to-float v5, v6

    invoke-virtual {v4, v5}, Lcom/amap/api/navi/model/AMapNaviLocation;->setBearing(F)V

    iget-object v4, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    int-to-float v5, v7

    invoke-virtual {v4, v5}, Lcom/amap/api/navi/model/AMapNaviLocation;->setSpeed(F)V

    if-eq v8, v12, :cond_0

    const/4 v4, 0x2

    if-ne v8, v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amap/api/navi/model/AMapNaviLocation;->setMatchStatus(I)V

    :goto_0
    iget-object v4, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    new-instance v5, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/amap/api/navi/model/AMapNaviLocation;->setCoord(Lcom/amap/api/navi/model/NaviLatLng;)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/navi/model/AMapNaviLocation;->setTime(J)V

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/amap/api/col/cu;->g:Lcom/amap/api/navi/model/AMapNaviLocation;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/amap/api/navi/model/AMapNaviLocation;->setMatchStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateParallelRoad(Lcom/autonavi/ae/pos/LocParallelRoads;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/autonavi/ae/pos/LocParallelRoads;->nFlag:I

    iput v0, p0, Lcom/amap/api/col/cu;->o:I

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cu;->r:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public updateRouteTrafficEvent(Lcom/autonavi/ae/guide/model/RouteTrafficEventInfo;)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->updateRouteTrafficEvent()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateSoundFlag(II)V
    .locals 2

    const-string v0, "MyGuideObserver"

    const-string v1, "MyGuideObserver-->updateSoundFlag()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateTrafficEvent([Lcom/autonavi/ae/guide/model/TrafficEventInfo;I)V
    .locals 3

    const-string v0, "MyGuideObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyGuideObserver-->updateTrafficEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
