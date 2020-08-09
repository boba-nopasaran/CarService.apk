.class public Lcom/amap/api/services/a/q;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/q$j;,
        Lcom/amap/api/services/a/q$k;,
        Lcom/amap/api/services/a/q$l;,
        Lcom/amap/api/services/a/q$c;,
        Lcom/amap/api/services/a/q$d;,
        Lcom/amap/api/services/a/q$f;,
        Lcom/amap/api/services/a/q$i;,
        Lcom/amap/api/services/a/q$e;,
        Lcom/amap/api/services/a/q$h;,
        Lcom/amap/api/services/a/q$g;,
        Lcom/amap/api/services/a/q$b;,
        Lcom/amap/api/services/a/q$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/services/a/q;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/services/a/q;
    .locals 3

    const-class v1, Lcom/amap/api/services/a/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    :cond_0
    new-instance v0, Lcom/amap/api/services/a/q;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/services/a/q;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;

    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/q;

    invoke-direct {v0}, Lcom/amap/api/services/a/q;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "shareurlkey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onPoiShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onBusRouteShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onDrivingRouteShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onWalkRouteShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onLocationShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onNaviShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoUploaded(I)V

    goto :goto_0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$f;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/amap/api/services/a/q$f;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Lcom/amap/api/services/a/q$f;->b:Lcom/amap/api/services/nearby/NearbySearchResult;

    move-object v1, v0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v3}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoSearched(Lcom/amap/api/services/nearby/NearbySearchResult;I)V

    goto :goto_0
.end method

.method private d(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onUserInfoCleared(I)V

    goto :goto_0
.end method

.method private e(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/amap/api/services/a/q$b;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Lcom/amap/api/services/a/q$b;->a:Lcom/amap/api/services/busline/BusStationResult;

    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;->onBusStationSearched(Lcom/amap/api/services/busline/BusStationResult;I)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private f(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/services/a/q$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25a

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$g;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V

    goto :goto_0
.end method

.method private g(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/help/Inputtips$InputtipsListener;->onGetInputtips(Ljava/util/List;I)V

    goto :goto_0
.end method

.method private h(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$i;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$i;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/amap/api/services/a/q$i;->a:Lcom/amap/api/services/geocoder/RegeocodeResult;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$e;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/services/a/q$e;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/amap/api/services/a/q$e;->a:Lcom/amap/api/services/geocoder/GeocodeResult;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V

    goto :goto_0
.end method

.method private i(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/district/DistrictResult;

    invoke-interface {v0, v1}, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;->onDistrictSearched(Lcom/amap/api/services/district/DistrictResult;)V

    goto :goto_0
.end method

.method private j(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/amap/api/services/a/q$a;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    iget-object v0, v0, Lcom/amap/api/services/a/q$a;->a:Lcom/amap/api/services/busline/BusLineResult;

    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;->onBusLineSearched(Lcom/amap/api/services/busline/BusLineResult;I)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private k(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/BusRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onBusRouteSearched(Lcom/amap/api/services/route/BusRouteResult;I)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onDriveRouteSearched(Lcom/amap/api/services/route/DriveRouteResult;I)V

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onWalkRouteSearched(Lcom/amap/api/services/route/WalkRouteResult;I)V

    goto :goto_0

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/RideRouteResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onRideRouteSearched(Lcom/amap/api/services/route/RideRouteResult;I)V

    goto/16 :goto_0
.end method

.method private l(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$d;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iget-object v0, v0, Lcom/amap/api/services/a/q$d;->a:Lcom/amap/api/services/cloud/CloudResult;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudSearched(Lcom/amap/api/services/cloud/CloudResult;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$c;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/services/a/q$c;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    iget-object v0, v0, Lcom/amap/api/services/a/q$c;->a:Lcom/amap/api/services/cloud/CloudItemDetail;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudItemDetailSearched(Lcom/amap/api/services/cloud/CloudItemDetail;I)V

    goto :goto_0
.end method

.method private m(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x515

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$l;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/services/a/q$l;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherLiveSearched(Lcom/amap/api/services/weather/LocalWeatherLiveResult;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x516

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$k;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherForecastSearched(Lcom/amap/api/services/weather/LocalWeatherForecastResult;I)V

    goto :goto_0
.end method

.method private n(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$j;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$OnRoutePOISearchListener;->onRoutePoiSearched(Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;I)V

    goto :goto_0
.end method

.method private o(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/traffic/TrafficStatusResult;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;->onRoadTrafficSearched(Lcom/amap/api/services/traffic/TrafficStatusResult;I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->k(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MessageHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->j(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->i(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->h(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->g(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->f(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->e(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->a(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->l(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->m(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->n(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->o(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
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
        :pswitch_e
    .end packed-switch
.end method
