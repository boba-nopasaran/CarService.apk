.class public Lcom/amap/api/col/cr;
.super Ljava/lang/Object;
.source "AE8Control.java"

# interfaces
.implements Lcom/autonavi/rtbt/IAE8;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/autonavi/ae/guide/GuideService;

.field private c:Lcom/autonavi/ae/route/RouteService;

.field private d:Lcom/amap/api/col/cu;

.field private e:Lcom/amap/api/col/cv;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/AMapNaviListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/amap/api/navi/model/NaviPath;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/col/cr;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/col/cr;->i:Z

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cr;->a:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/col/cu;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cu;-><init>(Lcom/amap/api/col/cr;)V

    iput-object v0, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    new-instance v0, Lcom/amap/api/col/cv;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cv;-><init>(Lcom/amap/api/col/cr;)V

    iput-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/amap/api/col/cr;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/ej;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "00000000"

    :cond_1
    new-instance v1, Lcom/autonavi/ae/guide/model/GuideConfig;

    invoke-direct {v1}, Lcom/autonavi/ae/guide/model/GuideConfig;-><init>()V

    const-string v2, "0"

    iput-object v2, v1, Lcom/autonavi/ae/guide/model/GuideConfig;->userBatch:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, v1, Lcom/autonavi/ae/guide/model/GuideConfig;->userCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/autonavi/ae/guide/model/GuideConfig;->UUID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/cr;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/autonavi/ae/guide/model/GuideConfig;->workPath:Ljava/lang/String;

    new-instance v2, Lcom/autonavi/ae/guide/GuideService;

    invoke-direct {v2, v1, p1}, Lcom/autonavi/ae/guide/GuideService;-><init>(Lcom/autonavi/ae/guide/model/GuideConfig;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    iget-object v2, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/guide/GuideService;->setNaviObserver(Lcom/autonavi/ae/guide/observer/GNaviObserver;)V

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    iget-object v2, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/guide/GuideService;->setSoundPlayObserver(Lcom/autonavi/ae/guide/observer/GSoundPlayObserver;)V

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    iget-object v2, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/guide/GuideService;->addStatusObserver(Lcom/autonavi/ae/guide/observer/GStatusObserver;)V

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    iget-object v2, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/guide/GuideService;->setElecEyeObserver(Lcom/autonavi/ae/guide/observer/GElecEyeObserver;)V

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    iget-object v2, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/guide/GuideService;->registerHttpProcesser(Lcom/autonavi/ae/route/observer/HttpInterface;)V

    invoke-static {}, Lcom/autonavi/ae/pos/LocManager;->init()J

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/autonavi/ae/pos/LocManager;->setMatchMode(I)V

    iget-object v1, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/autonavi/ae/pos/LocManager;->addLocListener(Lcom/autonavi/ae/pos/LocListener;I)V

    iget-object v1, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-static {v1}, Lcom/autonavi/ae/pos/LocManager;->addParallelRoadObserver(Lcom/autonavi/ae/pos/LocParallelRoadObserver;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/autonavi/ae/pos/LocManager;->setLogSwitch(I)V

    new-instance v1, Lcom/autonavi/ae/route/model/RouteConfig;

    invoke-direct {v1}, Lcom/autonavi/ae/route/model/RouteConfig;-><init>()V

    iput-object v0, v1, Lcom/autonavi/ae/route/model/RouteConfig;->mDeviceId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lcom/autonavi/ae/route/model/RouteConfig;->mVehicleId:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v1, Lcom/autonavi/ae/route/model/RouteConfig;->mEtaRestrictionSet:I

    new-instance v0, Lcom/autonavi/ae/route/RouteService;

    iget-object v2, p0, Lcom/amap/api/col/cr;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/route/RouteService;-><init>(Lcom/autonavi/ae/route/model/RouteConfig;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    iget-object v1, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/route/RouteService;->setPathRequestObserver(Lcom/autonavi/ae/route/observer/PathRequestObserver;)V

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    iget-object v1, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/route/RouteService;->setRouteObserver(Lcom/autonavi/ae/route/observer/RouteObserver;)V

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    iget-object v1, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/route/RouteService;->registerHttpProcesser(Lcom/autonavi/ae/route/observer/HttpInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "A8C"

    const-string v2, "constructor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/cr;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/ds;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AmapSdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "TMCOpen"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "TMCCongestion"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "CrossDisplayMode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "TROPEN"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "EmulatorSpeed"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(IDD)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/location/Location;)V
    .locals 12

    const-wide v10, 0x412e848000000000L    # 1000000.0

    :try_start_0
    const-string v0, "AE8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offsetFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",setGpsInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v6, Lcom/autonavi/ae/pos/GpsInfo;

    invoke-direct {v6}, Lcom/autonavi/ae/pos/GpsInfo;-><init>()V

    int-to-byte v7, p1

    iput-byte v7, v6, Lcom/autonavi/ae/pos/GpsInfo;->encrypted:B

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    float-to-double v8, v7

    iput-wide v8, v6, Lcom/autonavi/ae/pos/GpsInfo;->accuracy:D

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    iput-wide v8, v6, Lcom/autonavi/ae/pos/GpsInfo;->alt:D

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v7

    float-to-double v8, v7

    iput-wide v8, v6, Lcom/autonavi/ae/pos/GpsInfo;->angle:D

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v6, Lcom/autonavi/ae/pos/GpsInfo;->lat:I

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    mul-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v6, Lcom/autonavi/ae/pos/GpsInfo;->lon:I

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v8, v10

    iput-wide v8, v6, Lcom/autonavi/ae/pos/GpsInfo;->speed:D

    iput v4, v6, Lcom/autonavi/ae/pos/GpsInfo;->hour:I

    iput v5, v6, Lcom/autonavi/ae/pos/GpsInfo;->minute:I

    iput v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->second:I

    iput v1, v6, Lcom/autonavi/ae/pos/GpsInfo;->year:I

    iput v2, v6, Lcom/autonavi/ae/pos/GpsInfo;->month:I

    iput v3, v6, Lcom/autonavi/ae/pos/GpsInfo;->day:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->ticktime:J

    const/4 v0, 0x0

    iput v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->sourtype:I

    const/16 v0, 0x41

    iput-char v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->status:C

    const/16 v0, 0x45

    iput-char v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->ew:C

    const/16 v0, 0x4e

    iput-char v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->ns:C

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->hdop:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->pdop:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->vdop:D

    const/16 v0, 0x9

    iput v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->satnum:I

    const/16 v0, 0x4e

    iput-char v0, v6, Lcom/autonavi/ae/pos/GpsInfo;->mode:C

    invoke-static {v6}, Lcom/autonavi/ae/pos/LocManager;->setGpsInfo(Lcom/autonavi/ae/pos/GpsInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "A8C"

    const-string v2, "sgi"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForTBT"

    const-string v2, "addAMapNaviListener(AMapNaviListener naviListener)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/guide/GuideService;->startNavi(I)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/AMapNaviListener;->onStartNavi(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    :cond_0
    invoke-static {}, Lcom/autonavi/ae/pos/LocManager;->saveLocStorage()V

    invoke-static {}, Lcom/autonavi/ae/pos/LocManager;->uninit()V

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/route/RouteService;->setPathRequestObserver(Lcom/autonavi/ae/route/observer/PathRequestObserver;)V

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/route/RouteService;->setRouteObserver(Lcom/autonavi/ae/route/observer/RouteObserver;)V

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    invoke-virtual {v0}, Lcom/autonavi/ae/route/RouteService;->destroy()V

    iput-object v2, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    iget-object v1, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/guide/GuideService;->removeStatusObserver(Lcom/autonavi/ae/guide/observer/GStatusObserver;)V

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    invoke-virtual {v0}, Lcom/autonavi/ae/guide/GuideService;->stopNavi()I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    invoke-virtual {v0}, Lcom/autonavi/ae/guide/GuideService;->destroy()V

    iput-object v2, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v0}, Lcom/amap/api/col/cu;->b()V

    iput-object v2, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    invoke-virtual {v0}, Lcom/amap/api/col/cv;->d()V

    iput-object v2, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    :cond_4
    iput-object v2, p0, Lcom/amap/api/col/cr;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/amap/api/col/cr;->g:Lcom/amap/api/navi/model/NaviPath;

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    const/16 v0, 0x79

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "EmulatorSpeed"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForTBT"

    const-string v2, "removeNaviListener(AMapNaviListener naviListener)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(I)I
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    invoke-virtual {v0}, Lcom/amap/api/col/cv;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const/4 v4, 0x1

    invoke-static {}, Lcom/amap/api/col/cs;->b()[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v5

    invoke-static {}, Lcom/amap/api/col/cs;->c()[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v6

    invoke-static {}, Lcom/amap/api/col/cs;->d()[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/guide/GuideService;->setNaviPath(JI[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    invoke-virtual {v0}, Lcom/amap/api/col/cv;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviPath;

    iput-object v0, p0, Lcom/amap/api/col/cr;->g:Lcom/amap/api/navi/model/NaviPath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()Lcom/amap/api/navi/model/NaviInfo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v0}, Lcom/amap/api/col/cu;->a()Lcom/amap/api/navi/model/NaviInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateDriveRoute(Ljava/util/List;Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;I)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/amap/api/col/cs;->f()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/amap/api/col/cs;->f()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amap/api/col/cr;->calculateDriveRoute(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Z

    move-result v0

    goto :goto_0
.end method

.method public calculateDriveRoute(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;I)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v0, 0x9

    if-gt p4, v0, :cond_0

    const/4 v0, 0x5

    if-ne p4, v0, :cond_4

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/cr;->i:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/cr;->h:Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cr;->i:Z

    invoke-static {p4}, Lcom/amap/api/col/cs;->a(I)V

    invoke-static {p1}, Lcom/amap/api/col/ct;->a(Ljava/util/List;)[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/cs;->a([Lcom/autonavi/ae/route/model/RoutePoi;)V

    invoke-static {p2}, Lcom/amap/api/col/ct;->a(Ljava/util/List;)[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/cs;->c([Lcom/autonavi/ae/route/model/RoutePoi;)V

    invoke-static {p3}, Lcom/amap/api/col/ct;->a(Ljava/util/List;)[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/cs;->b([Lcom/autonavi/ae/route/model/RoutePoi;)V

    invoke-static {}, Lcom/amap/api/col/cs;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AE8"

    const-string v1, "calculateDriveRoute(from,to,waypoint,strategy)"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Lcom/amap/api/col/cs;->b()[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v3

    invoke-static {}, Lcom/amap/api/col/cs;->c()[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v4

    invoke-static {}, Lcom/amap/api/col/cs;->d()[Lcom/autonavi/ae/route/model/RoutePoi;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/route/RouteService;->requestRoute(II[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;FF)I

    move-result v0

    :goto_1
    if-ne v0, v9, :cond_1

    move v8, v9

    :cond_1
    return v8

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cr;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "A8C"

    const-string v2, "cdr"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/amap/api/col/cr;->h:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d(I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "TTSTimeForOneWord"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e()Lcom/autonavi/ae/guide/GuideService;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    return-object v0
.end method

.method public f()Lcom/autonavi/ae/route/RouteService;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/AMapNaviListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/cr;->f:Ljava/util/List;

    return-object v0
.end method

.method public getAllRouteID()[I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    invoke-virtual {v0}, Lcom/amap/api/col/cv;->c()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultipleNaviPathsCalculated()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/navi/model/AMapNaviPath;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cr;->e:Lcom/amap/api/col/cv;

    invoke-virtual {v0}, Lcom/amap/api/col/cv;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviPath;

    iget-object v0, v0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public getTrafficStatuses(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapTrafficStatus;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cr;->d:Lcom/amap/api/col/cu;

    invoke-virtual {v0}, Lcom/amap/api/col/cu;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/cr;->k()Lcom/amap/api/navi/model/AMapNaviPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getTrafficStatuses()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    invoke-virtual {v0}, Lcom/autonavi/ae/guide/GuideService;->pauseNavi()I

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    invoke-virtual {v0}, Lcom/autonavi/ae/guide/GuideService;->stopNavi()I

    :cond_0
    return-void
.end method

.method public isCalculateMultipleRoutes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cr;->h:Z

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    invoke-virtual {v0}, Lcom/autonavi/ae/guide/GuideService;->resumeNavi()I

    :cond_0
    return-void
.end method

.method public k()Lcom/amap/api/navi/model/AMapNaviPath;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cr;->g:Lcom/amap/api/navi/model/NaviPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->g:Lcom/amap/api/navi/model/NaviPath;

    iget-object v0, v0, Lcom/amap/api/navi/model/NaviPath;->amapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/util/List;
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

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cr;->g:Lcom/amap/api/navi/model/NaviPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->g:Lcom/amap/api/navi/model/NaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviPath;->getGuideList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reCalculateRoute(I)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/amap/api/col/cs;->f()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "AE8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reCalculateRoute("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const/4 v3, 0x4

    const-wide/16 v8, 0x0

    move v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v1 .. v9}, Lcom/autonavi/ae/guide/GuideService;->reroute(III[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;[Lcom/autonavi/ae/route/model/RoutePoi;D)I

    move-result v1

    if-ne v0, v1, :cond_0

    move v4, v0

    :cond_0
    return v4
.end method

.method public readNaviInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    invoke-virtual {v0}, Lcom/autonavi/ae/guide/GuideService;->playNaviManual()I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public readTrafficInfo(I)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/guide/GuideService;->playTrafficRadioManual(I)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public refreshTrafficStatuses()V
    .locals 0

    return-void
.end method

.method public setBroadcastMode(I)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "PlayStyle"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCameraInfoUpdateEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v2, "CameraPlay"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public setCarInfo(Lcom/amap/api/navi/model/AMapCarInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "VehicleID"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->getCarNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const-string v1, "VehicleID"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->getCarNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/route/RouteService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "vehicleType"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->getCarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const-string v1, "vehicleType"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->getCarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/route/RouteService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v2, "ETARestrictionOpen"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->isRestriction()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const-string v2, "ETARestrictionOpen"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->isRestriction()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/ae/route/RouteService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "vehicleHeight"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->getVehicleHeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const-string v1, "vehicleHeight"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->getVehicleHeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/route/RouteService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "vehicleLoad"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->getVehicleLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const-string v1, "vehicleLoad"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->getVehicleLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/route/RouteService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v2, "VehicleLoadSwitch"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->isVehicleLoadSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const-string v2, "VehicleLoadSwitch"

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapCarInfo;->isVehicleLoadSwitch()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/ae/route/RouteService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0

    :cond_2
    const-string v0, "0"

    goto :goto_1

    :cond_3
    const-string v0, "0"

    goto :goto_2

    :cond_4
    const-string v0, "0"

    goto :goto_3
.end method

.method public setCarNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "VehicleID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const-string v1, "VehicleID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/route/RouteService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "ETARestrictionOpen"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->c:Lcom/autonavi/ae/route/RouteService;

    const-string v1, "ETARestrictionOpen"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/route/RouteService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setDetectedMode(I)V
    .locals 0

    return-void
.end method

.method public setReCalculateRouteForTrafficJam(Z)V
    .locals 0

    return-void
.end method

.method public setReCalculateRouteForYaw(Z)V
    .locals 0

    return-void
.end method

.method public setTrafficInfoUpdateEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v2, "TMCOpen"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public setTrafficStatusUpdateEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v2, "TMCCongestion"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public startAimlessMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "Cruise"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "TRCameraMode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stopAimlessMode()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cr;->b:Lcom/autonavi/ae/guide/GuideService;

    const-string v1, "Cruise"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/guide/GuideService;->control(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public strategyConvert(ZZZZZ)I
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/amap/api/col/du;->a(ZZZZ)I

    move-result v0

    iput-boolean p5, p0, Lcom/amap/api/col/cr;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchParallelRoad()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/autonavi/ae/pos/LocManager;->switchParallelRoad(Lcom/autonavi/ae/pos/LocObjectId;)V

    return-void
.end method
