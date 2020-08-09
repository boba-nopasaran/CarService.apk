.class public Lcom/amap/api/services/traffic/TrafficSearch;
.super Ljava/lang/Object;
.source "TrafficSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;
    }
.end annotation


# static fields
.field public static ROAD_LEVEL_CITY_QUICK_WAY:I

.field public static ROAD_LEVEL_HIGH_WAY:I

.field public static ROAD_LEVEL_HIGH_WAY_BYROAD:I

.field public static ROAD_LEVEL_MAIN_WAY:I

.field public static ROAD_LEVEL_NONAME_WAY:I

.field public static ROAD_LEVEL_NORMAL_WAY:I


# instance fields
.field private a:Lcom/amap/api/services/interfaces/ITrafficSearch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/amap/api/services/traffic/TrafficSearch;->ROAD_LEVEL_HIGH_WAY:I

    const/4 v0, 0x2

    sput v0, Lcom/amap/api/services/traffic/TrafficSearch;->ROAD_LEVEL_CITY_QUICK_WAY:I

    const/4 v0, 0x3

    sput v0, Lcom/amap/api/services/traffic/TrafficSearch;->ROAD_LEVEL_HIGH_WAY_BYROAD:I

    const/4 v0, 0x4

    sput v0, Lcom/amap/api/services/traffic/TrafficSearch;->ROAD_LEVEL_MAIN_WAY:I

    const/4 v0, 0x5

    sput v0, Lcom/amap/api/services/traffic/TrafficSearch;->ROAD_LEVEL_NORMAL_WAY:I

    const/4 v0, 0x6

    sput v0, Lcom/amap/api/services/traffic/TrafficSearch;->ROAD_LEVEL_NONAME_WAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bh;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.TrafficSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/aw;

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

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cj;->a(Landroid/content/Context;Lcom/amap/api/services/a/bh;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/ITrafficSearch;

    iput-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/aw;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/aw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/ay;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public loadTrafficByRoad(Lcom/amap/api/services/traffic/RoadTrafficQuery;)Lcom/amap/api/services/traffic/TrafficStatusResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/ITrafficSearch;->loadTrafficByRoad(Lcom/amap/api/services/traffic/RoadTrafficQuery;)Lcom/amap/api/services/traffic/TrafficStatusResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTrafficByRoadAsyn(Lcom/amap/api/services/traffic/RoadTrafficQuery;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/ITrafficSearch;->loadTrafficByRoadAsyn(Lcom/amap/api/services/traffic/RoadTrafficQuery;)V

    :cond_0
    return-void
.end method

.method public setTrafficSearchListener(Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/traffic/TrafficSearch;->a:Lcom/amap/api/services/interfaces/ITrafficSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/ITrafficSearch;->setTrafficSearchListener(Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;)V

    :cond_0
    return-void
.end method
