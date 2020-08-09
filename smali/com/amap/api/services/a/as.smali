.class public Lcom/amap/api/services/a/as;
.super Ljava/lang/Object;
.source "PoiSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IPoiSearch;


# static fields
.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/poisearch/PoiResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

.field private b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

.field private h:I

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/a/as;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/as;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/as;->c:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/amap/api/services/a/as;->setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/as;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/as;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/as;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/poisearch/PoiResult;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/as;->i:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/services/a/as;->h:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/amap/api/services/a/as;->h:I

    iget-object v1, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/amap/api/services/a/as;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/as;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/as;->d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    return-object v0
.end method

.method private b()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/api/services/a/as;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1

    iget v0, p0, Lcom/amap/api/services/a/as;->h:I

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/services/a/as;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Polygon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object v2

    move v0, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Rectangle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-gez v3, :cond_0

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-gez v0, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(I)Lcom/amap/api/services/poisearch/PoiResult;
    .locals 2

    invoke-direct {p0, p1}, Lcom/amap/api/services/a/as;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/amap/api/services/a/as;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    return-object v0
.end method

.method public getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/as;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/as;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    return-object v0
.end method

.method public searchPOI()Lcom/amap/api/services/poisearch/PoiResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/as;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    invoke-direct {p0}, Lcom/amap/api/services/a/as;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/services/a/as;->a()Z

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

    const-string v1, "PoiSearch"

    const-string v2, "searchPOI"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/services/a/as;->c()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/as;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/a/as;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/as;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/services/a/as;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v1, p0, Lcom/amap/api/services/a/as;->g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/as;->h:I

    iget-object v0, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/as;->f:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v0, p0, Lcom/amap/api/services/a/as;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/a/as;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/as;->g:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    :cond_5
    sget-object v0, Lcom/amap/api/services/a/as;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amap/api/services/a/as;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_6
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/services/a/as;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/amap/api/services/a/as;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->clone()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget v0, p0, Lcom/amap/api/services/a/as;->h:I

    if-nez v0, :cond_8

    new-instance v0, Lcom/amap/api/services/a/w;

    iget-object v2, p0, Lcom/amap/api/services/a/as;->c:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/services/a/z;

    iget-object v4, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/amap/api/services/a/z;-><init>(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    invoke-direct {v0, v2, v3}, Lcom/amap/api/services/a/w;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/z;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/w;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/as;->a(Lcom/amap/api/services/poisearch/PoiResult;)V

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/as;->a(I)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/amap/api/services/a/w;

    iget-object v2, p0, Lcom/amap/api/services/a/as;->c:Landroid/content/Context;

    new-instance v3, Lcom/amap/api/services/a/z;

    iget-object v4, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/amap/api/services/a/z;-><init>(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    invoke-direct {v0, v2, v3}, Lcom/amap/api/services/a/w;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/z;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/w;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    sget-object v1, Lcom/amap/api/services/a/as;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v2}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_9
    move-object v1, v0

    goto :goto_0
.end method

.method public searchPOIAsyn()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/as$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/as$1;-><init>(Lcom/amap/api/services/a/as;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/as$1;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/a/as;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    new-instance v0, Lcom/amap/api/services/a/v;

    iget-object v1, p0, Lcom/amap/api/services/a/as;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/v;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    return-object v0
.end method

.method public searchPOIIdAsyn(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/amap/api/services/a/as$2;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/as$2;-><init>(Lcom/amap/api/services/a/as;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/as$2;->start()V

    return-void
.end method

.method public setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/as;->a:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "en"

    iput-object v0, p0, Lcom/amap/api/services/a/as;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/a/as;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/as;->d:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    return-void
.end method

.method public setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/as;->b:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    return-void
.end method
