.class public Lcom/amap/api/navi/AMapNavi;
.super Ljava/lang/Object;
.source "AMapNavi.java"

# interfaces
.implements Lcom/amap/api/navi/INavi;


# static fields
.field public static EmulatorNaviMode:I

.field public static GPSNaviMode:I

.field private static singletonAMapNavi:Lcom/amap/api/navi/AMapNavi;


# instance fields
.field private mINavi:Lcom/amap/api/navi/INavi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/amap/api/navi/AMapNavi;->GPSNaviMode:I

    const/4 v0, 0x2

    sput v0, Lcom/amap/api/navi/AMapNavi;->EmulatorNaviMode:I

    const-string v0, "GNaviUtils"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "GNaviData"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "GNaviPos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "GNaviRoute"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "GNaviGuide"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "GNaviSearch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "RoadLineRebuildAPI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v1

    const-string v2, "com.amap.api.navi.wrapper.AMapNaviWrapper"

    const-class v3, Lcom/amap/api/col/cx;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/fr;->a(Landroid/content/Context;Lcom/amap/api/col/eo;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/INavi;

    iput-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/col/cx;

    invoke-direct {v0, p1}, Lcom/amap/api/col/cx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;
    .locals 4

    const-class v1, Lcom/amap/api/navi/AMapNavi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/navi/AMapNavi;->singletonAMapNavi:Lcom/amap/api/navi/AMapNavi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/navi/AMapNavi;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/AMapNavi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/navi/AMapNavi;->singletonAMapNavi:Lcom/amap/api/navi/AMapNavi;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/navi/AMapNavi;->singletonAMapNavi:Lcom/amap/api/navi/AMapNavi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v2, "AMapNavi"

    const-string v3, "getInstance(Context context)"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.0.1"

    return-object v0
.end method

.method public static setApiKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/eg;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setTtsPlaying(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/col/ds;->a:Z

    return-void
.end method


# virtual methods
.method public addAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->addAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "addAMapNaviListener(AMapNaviListener naviListener)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateDriveRoute(Ljava/util/List;Ljava/util/List;I)Z
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/navi/INavi;->calculateDriveRoute(Ljava/util/List;Ljava/util/List;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "calculateDriveRoute(java.util.List<NaviLatLng> to,\n                                       java.util.List<NaviLatLng> wayPoints, int strategy)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateDriveRoute(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Z
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amap/api/navi/INavi;->calculateDriveRoute(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "calculateDriveRoute(List<NaviLatLng> from, List<NaviLatLng> to,\n                                       List<NaviLatLng> wayPoints, int strategy)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateRideRoute(Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->calculateRideRoute(Lcom/amap/api/navi/model/NaviLatLng;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateRideRoute(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/navi/INavi;->calculateRideRoute(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateWalkRoute(Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->calculateWalkRoute(Lcom/amap/api/navi/model/NaviLatLng;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateWalkRoute(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/navi/INavi;->calculateWalkRoute(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/navi/AMapNavi;->singletonAMapNavi:Lcom/amap/api/navi/AMapNavi;
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEngineType()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getEngineType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsUseExtraGPSData()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getIsUseExtraGPSData()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNaviGuideList()Ljava/util/List;
    .locals 3
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
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviGuideList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "getNaviGuideList()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNaviInfo()Lcom/amap/api/navi/model/NaviInfo;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviInfo()Lcom/amap/api/navi/model/NaviInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNaviPath()Lcom/amap/api/navi/model/AMapNaviPath;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviPath()Lcom/amap/api/navi/model/AMapNaviPath;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "getNaviPath()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNaviPaths()Ljava/util/HashMap;
    .locals 4
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

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v1}, Lcom/amap/api/navi/INavi;->getNaviPaths()Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v2, "AMapNavi"

    const-string v3, "getNaviPaths()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNaviSetting()Lcom/amap/api/navi/NaviSetting;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviSetting()Lcom/amap/api/navi/NaviSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNaviType()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrafficStatuses(II)Ljava/util/List;
    .locals 3
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
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/navi/INavi;->getTrafficStatuses(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "getTrafficStatuses(int startPos, int distance) "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGpsReady()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->isGpsReady()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseNavi()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->pauseNavi()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "pauseNavi()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reCalculateRoute(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->reCalculateRoute(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "reCalculateRoute(int strategy)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readNaviInfo()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->readNaviInfo()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "readNaviInfo() "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readTrafficInfo(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->readTrafficInfo(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "readTrafficInfo(int frontDistance)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->removeAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "removeAMapNaviListener(AMapNaviListener naviListener)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeNavi()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->resumeNavi()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "resumeNavi()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public selectRouteId(I)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->selectRouteId(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->addAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setAMapNaviListener(AMapNaviListener naviListener) "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBroadcastMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setBroadcastMode(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCarInfo(Lcom/amap/api/navi/model/AMapCarInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setCarInfo(Lcom/amap/api/navi/model/AMapCarInfo;)V

    :cond_0
    return-void
.end method

.method public setCarNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/navi/INavi;->setCarNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setCarNumber(String province,String number)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setConnectionTimeout(I)V

    :cond_0
    return-void
.end method

.method public setDetectedMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setDetectedMode(I)V

    :cond_0
    return-void
.end method

.method public setEmulatorNaviSpeed(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setEmulatorNaviSpeed(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setEmulatorNaviSpeed(int speed)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtraGPSData(ILandroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/navi/INavi;->setExtraGPSData(ILandroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public setExtraGPSData(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setExtraGPSData(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public setIsUseExtraGPSData(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setIsUseExtraGPSData(Z)V

    :cond_0
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

.method public setSoTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setSoTimeout(I)V

    :cond_0
    return-void
.end method

.method public setTimeForOneWord(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->setTimeForOneWord(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setTimeForOneWord(int time)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAimlessMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->startAimlessMode(I)V

    :cond_0
    return-void
.end method

.method public startGPS()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->startGPS()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startGPS(JI)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/navi/INavi;->startGPS(JI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startNavi(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/INavi;->startNavi(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "startNavi(naviType)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAimlessMode()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->stopAimlessMode()V

    :cond_0
    return-void
.end method

.method public stopGPS()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->stopGPS()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopNavi()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->stopNavi()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "stopNavi();"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public strategyConvert(ZZZZZ)I
    .locals 6

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/navi/INavi;->strategyConvert(ZZZZZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchParallelRoad()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapNavi;->mINavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->switchParallelRoad()V

    :cond_0
    return-void
.end method
