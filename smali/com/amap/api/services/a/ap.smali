.class public final Lcom/amap/api/services/a/ap;
.super Ljava/lang/Object;
.source "GeocodeSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IGeocodeSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ap;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ap;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeQuery;->getLatLonType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ap;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/ap;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "GeocodeSearch"

    const-string v2, "getFromLocationAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/aa;

    iget-object v1, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/aa;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/aa;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeAddress;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/ap$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/ap$1;-><init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GeocodeSearch"

    const-string v2, "getFromLocationAsyn_threadcreate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/geocoder/GeocodeQuery;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "GeocodeSearch"

    const-string v2, "getFromLocationName"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/l;

    iget-object v1, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/l;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/ap$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/ap$2;-><init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GeocodeSearch"

    const-string v2, "getFromLocationNameAsynThrowable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/ap;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    return-void
.end method
