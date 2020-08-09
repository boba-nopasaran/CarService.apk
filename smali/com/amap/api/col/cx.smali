.class public Lcom/amap/api/col/cx;
.super Ljava/lang/Object;
.source "AMapNaviCore.java"

# interfaces
.implements Lcom/amap/api/navi/IGpsCallback;
.implements Lcom/amap/api/navi/INavi;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/amap/api/col/dg;

.field private d:Lcom/amap/api/col/df;

.field private e:Lcom/autonavi/rtbt/IAE8;

.field private f:Lcom/amap/api/navi/NaviSetting;

.field private g:Z

.field private h:Z

.field private i:Lcom/amap/api/col/dc;

.field private j:Landroid/content/Context;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/col/cx;->a:I

    iput v0, p0, Lcom/amap/api/col/cx;->b:I

    iput-boolean v1, p0, Lcom/amap/api/col/cx;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/col/cx;->h:Z

    const/16 v0, 0x28

    iput v0, p0, Lcom/amap/api/col/cx;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cx;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amap/api/col/cx;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;)Z

    new-instance v0, Lcom/amap/api/col/dc;

    iget-object v1, p0, Lcom/amap/api/col/cx;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/dc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/dc;->a(Lcom/amap/api/navi/IGpsCallback;)V

    new-instance v0, Lcom/amap/api/col/cr;

    iget-object v1, p0, Lcom/amap/api/col/cx;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/cr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    new-instance v0, Lcom/amap/api/navi/NaviSetting;

    iget-object v1, p0, Lcom/amap/api/col/cx;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/navi/NaviSetting;-><init>(Landroid/content/Context;Lcom/autonavi/rtbt/IAE8;)V

    iput-object v0, p0, Lcom/amap/api/col/cx;->f:Lcom/amap/api/navi/NaviSetting;

    new-instance v0, Lcom/amap/api/col/dl;

    iget-object v1, p0, Lcom/amap/api/col/cx;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/dl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->a()V

    new-instance v0, Lcom/amap/api/col/dj;

    iget-object v1, p0, Lcom/amap/api/col/cx;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/dj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0}, Lcom/amap/api/col/df;->a()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cx;->j:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/col/cx$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cx$1;-><init>(Lcom/amap/api/col/cx;)V

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "WTBTControl"

    const-string v2, "initAuth()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILandroid/location/Location;)V
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-static {v0}, Lcom/amap/api/col/cs;->a(Lcom/amap/api/navi/model/NaviLatLng;)V

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/rtbt/IAE8;->a(IDD)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, v1, p2}, Lcom/autonavi/rtbt/IAE8;->a(ILandroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/col/dg;->a(IDD)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/col/dg;->a(ILandroid/location/Location;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/col/df;->a(IDD)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/col/df;->a(ILandroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->a(Lcom/amap/api/navi/AMapNaviListener;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0, p1}, Lcom/amap/api/col/dg;->a(Lcom/amap/api/navi/AMapNaviListener;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0, p1}, Lcom/amap/api/col/df;->a(Lcom/amap/api/navi/AMapNaviListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
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
    .locals 4
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

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/cx;->a:I

    iget-object v1, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v1, p1, p2, p3}, Lcom/autonavi/rtbt/IAE8;->calculateDriveRoute(Ljava/util/List;Ljava/util/List;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v2, "AMapNavi"

    const-string v3, "calculateDriveRoute(java.util.List<NaviLatLng> to,\n                                       java.util.List<NaviLatLng> wayPoints, int strategy)"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateDriveRoute(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Z
    .locals 4
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

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/cx;->a:I

    iget-object v1, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/autonavi/rtbt/IAE8;->calculateDriveRoute(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v2, "AMapNavi"

    const-string v3, "calculateDriveRoute(List<NaviLatLng> from, List<NaviLatLng> to,\n                                       List<NaviLatLng> wayPoints, int strategy)"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public calculateRideRoute(Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/cx;->a:I

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0, p1}, Lcom/amap/api/col/df;->a(Lcom/amap/api/navi/model/NaviLatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "calculateRideRoute(NaviLatLng to)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateRideRoute(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/cx;->a:I

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/col/df;->a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "calculateRideRoute(NaviLatLng from, NaviLatLng to) "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateWalkRoute(Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/cx;->a:I

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0, p1}, Lcom/amap/api/col/dg;->a(Lcom/amap/api/navi/model/NaviLatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "calculateWalkRoute(NaviLatLng to)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateWalkRoute(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/cx;->a:I

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/col/dg;->a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "calculateWalkRoute(NaviLatLng from, NaviLatLng to) "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    invoke-virtual {v0}, Lcom/amap/api/col/dc;->b()V

    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    invoke-virtual {v0}, Lcom/amap/api/col/dc;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->f:Lcom/amap/api/navi/NaviSetting;

    invoke-virtual {v0}, Lcom/amap/api/navi/NaviSetting;->destroy()V

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0}, Lcom/amap/api/col/df;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

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

.method public getEngineType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    return v0
.end method

.method public getIsUseExtraGPSData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cx;->g:Z

    return v0
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
    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->l()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->l()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0}, Lcom/amap/api/col/df;->l()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "getNaviGuideList()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNaviInfo()Lcom/amap/api/navi/model/NaviInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->c()Lcom/amap/api/navi/model/NaviInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->c()Lcom/amap/api/navi/model/NaviInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0}, Lcom/amap/api/col/df;->c()Lcom/amap/api/navi/model/NaviInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviCore"

    const-string v2, "getNaviInfo()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNaviPath()Lcom/amap/api/navi/model/AMapNaviPath;
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->k()Lcom/amap/api/navi/model/AMapNaviPath;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->k()Lcom/amap/api/navi/model/AMapNaviPath;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0}, Lcom/amap/api/col/df;->k()Lcom/amap/api/navi/model/AMapNaviPath;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "getNaviPath()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    iget v1, p0, Lcom/amap/api/col/cx;->a:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v1}, Lcom/autonavi/rtbt/IAE8;->getMultipleNaviPathsCalculated()Ljava/util/HashMap;
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

    iget-object v0, p0, Lcom/amap/api/col/cx;->f:Lcom/amap/api/navi/NaviSetting;

    return-object v0
.end method

.method public getNaviType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cx;->b:I

    return v0
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
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/rtbt/IAE8;->getTrafficStatuses(II)Ljava/util/List;
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

    iget-boolean v0, p0, Lcom/amap/api/col/cx;->h:Z

    return v0
.end method

.method public onGpsStarted()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->d()V

    :cond_0
    return-void
.end method

.method public onLocationChanged(ILandroid/location/Location;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmapNaviCore-->onLocationChanged(int type, Location location),mIsUseExtraGPSData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/col/cx;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEngineType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/cx;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amap/api/col/cx;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cx;->h:Z

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/cx;->a(ILandroid/location/Location;)V

    goto :goto_0
.end method

.method public pauseNavi()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "pauseNavi()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->h()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0}, Lcom/amap/api/col/df;->h()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reCalculateRoute(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/cs;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/autonavi/rtbt/IAE8;->reCalculateRoute(I)Z
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
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->readNaviInfo()Z
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
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->readTrafficInfo(I)Z
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
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->b(Lcom/amap/api/navi/AMapNaviListener;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0, p1}, Lcom/amap/api/col/dg;->b(Lcom/amap/api/navi/AMapNaviListener;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0, p1}, Lcom/amap/api/col/df;->b(Lcom/amap/api/navi/AMapNaviListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
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
    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "resumeNavi()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->j()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0}, Lcom/amap/api/col/df;->j()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public selectRouteId(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/amap/api/col/cx;->a:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v1, p1}, Lcom/autonavi/rtbt/IAE8;->c(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v2, "AMapNavi"

    const-string v3, "selectRouteId(int id)"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBroadcastMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->setBroadcastMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCarInfo(Lcom/amap/api/navi/model/AMapCarInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->setCarInfo(Lcom/amap/api/navi/model/AMapCarInfo;)V

    :cond_0
    return-void
.end method

.method public setCarNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/rtbt/IAE8;->setCarNumber(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setCarNumber(String province, String number)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 1

    const/16 v0, 0xbb8

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/dm;->b(I)V

    return-void
.end method

.method public setDetectedMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->setDetectedMode(I)V

    :cond_0
    return-void
.end method

.method public setEmulatorNaviSpeed(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/cx;->k:I

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0, p1}, Lcom/amap/api/col/dg;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0, p1}, Lcom/amap/api/col/df;->b(I)V

    :cond_2
    return-void
.end method

.method public setExtraGPSData(ILandroid/location/Location;)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/cx;->g:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/cx;->a(ILandroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setExtraGPSData(int type,Location location)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtraGPSData(Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/cx;->setExtraGPSData(ILandroid/location/Location;)V

    return-void
.end method

.method public setIsUseExtraGPSData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/cx;->g:Z

    return-void
.end method

.method public setReCalculateRouteForTrafficJam(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->setReCalculateRouteForTrafficJam(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setReCalculateRouteForTrafficJam(boolean isReroute)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReCalculateRouteForYaw(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->setReCalculateRouteForYaw(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setReCalculateRouteForYaw(boolean isReroute)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSoTimeout(I)V
    .locals 1

    const/16 v0, 0xbb8

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/dm;->a(I)V

    return-void
.end method

.method public setTimeForOneWord(I)V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->d(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "setTimeForOneWord(int time)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0, p1}, Lcom/amap/api/col/dg;->d(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0, p1}, Lcom/amap/api/col/df;->d(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startAimlessMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/cx;->a:I

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0, p1}, Lcom/autonavi/rtbt/IAE8;->startAimlessMode(I)V

    invoke-virtual {p0}, Lcom/amap/api/col/cx;->startGPS()Z

    :cond_0
    return-void
.end method

.method public startGPS()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    invoke-virtual {v0}, Lcom/amap/api/col/dc;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "startGPS()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startGPS(JI)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/dc;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "startGPS(long time, int dis)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startNavi(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x2

    iput p1, p0, Lcom/amap/api/col/cx;->b:I

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    if-ne p1, v1, :cond_1

    const-string v0, "-------------------------\u5f00\u59cb\u9a7e\u8f66\u6a21\u62df\u5bfc\u822a-------------------------------------------"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    iget v1, p0, Lcom/amap/api/col/cx;->k:I

    invoke-interface {v0, v1}, Lcom/autonavi/rtbt/IAE8;->b(I)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/autonavi/rtbt/IAE8;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviCore"

    const-string v2, "startNavi(int naviType)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/autonavi/rtbt/IAE8;->a(I)Z

    const-string v0, "--------------------------\u5f00\u59cb\u9a7e\u8f66GPS\u5bfc\u822a------------------------------------------"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/amap/api/col/cx;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/cx;->startGPS()Z

    goto :goto_0

    :pswitch_1
    if-ne p1, v1, :cond_2

    const-string v0, "---------------------------\u5f00\u59cb\u9a7e\u8f66\u6a21\u62df\u5bfc\u822a-----------------------------------------"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    iget v1, p0, Lcom/amap/api/col/cx;->k:I

    invoke-interface {v0, v1}, Lcom/amap/api/col/df;->b(I)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/amap/api/col/df;->a(I)Z

    goto :goto_0

    :cond_2
    const-string v0, "---------------------------\u5f00\u59cb\u9a91\u884cGPS\u6a21\u62df\u5bfc\u822a----------------------------------------"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amap/api/col/df;->a(I)Z

    iget-boolean v0, p0, Lcom/amap/api/col/cx;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/cx;->startGPS()Z

    goto :goto_0

    :pswitch_2
    if-ne p1, v1, :cond_3

    const-string v0, "----------------------------\u5f00\u59cb\u6b65\u884c\u6a21\u62df\u5bfc\u822a----------------------------------------"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    iget v1, p0, Lcom/amap/api/col/cx;->k:I

    invoke-interface {v0, v1}, Lcom/amap/api/col/dg;->b(I)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/amap/api/col/dg;->a(I)Z

    goto :goto_0

    :cond_3
    const-string v0, "----------------------------\u5f00\u59cb\u6b65\u884cGPS\u5bfc\u822a---------------------------------------"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amap/api/col/dg;->a(I)Z

    iget-boolean v0, p0, Lcom/amap/api/col/cx;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/cx;->startGPS()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public stopAimlessMode()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->stopAimlessMode()V

    invoke-virtual {p0}, Lcom/amap/api/col/cx;->stopGPS()Z

    :cond_0
    return-void
.end method

.method public stopGPS()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->i:Lcom/amap/api/col/dc;

    invoke-virtual {v0}, Lcom/amap/api/col/dc;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "stopGPS() "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopNavi()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/cx;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/cx;->stopGPS()Z

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNavi"

    const-string v2, "stopNavi()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cx;->c:Lcom/amap/api/col/dg;

    invoke-interface {v0}, Lcom/amap/api/col/dg;->i()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/cx;->d:Lcom/amap/api/col/df;

    invoke-interface {v0}, Lcom/amap/api/col/df;->i()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public strategyConvert(ZZZZZ)I
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/autonavi/rtbt/IAE8;->strategyConvert(ZZZZZ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchParallelRoad()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cx;->e:Lcom/autonavi/rtbt/IAE8;

    invoke-interface {v0}, Lcom/autonavi/rtbt/IAE8;->switchParallelRoad()V

    :cond_0
    return-void
.end method
