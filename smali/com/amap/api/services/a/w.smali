.class public Lcom/amap/api/services/a/w;
.super Lcom/amap/api/services/a/u;
.source "PoiSearchKeywordsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/u",
        "<",
        "Lcom/amap/api/services/a/z;",
        "Lcom/amap/api/services/poisearch/PoiResult;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/z;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/u;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/w;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/w;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/a/w;->k:Ljava/util/List;

    return-void
.end method

.method private a(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "distance"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "weight"

    goto :goto_0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/w;->f(Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/amap/api/services/poisearch/PoiResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/a/z;

    iget-object v1, v1, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v2, p0, Lcom/amap/api/services/a/w;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/amap/api/services/a/w;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v4, Lcom/amap/api/services/a/z;

    iget-object v4, v4, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v4

    iget v5, p0, Lcom/amap/api/services/a/w;->i:I

    invoke-static/range {v0 .. v6}, Lcom/amap/api/services/poisearch/PoiResult;->createPagedResult(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;Ljava/util/List;Ljava/util/List;IILjava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/services/a/w;->i:I

    invoke-static {v0}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v1, "suggestion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/a/z;

    iget-object v1, v1, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v2, p0, Lcom/amap/api/services/a/w;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/amap/api/services/a/w;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v4, Lcom/amap/api/services/a/z;

    iget-object v4, v4, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v4

    iget v5, p0, Lcom/amap/api/services/a/w;->i:I

    invoke-static/range {v0 .. v6}, Lcom/amap/api/services/poisearch/PoiResult;->createPagedResult(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;Ljava/util/List;Ljava/util/List;IILjava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "suggestion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/a/z;

    iget-object v1, v1, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v2, p0, Lcom/amap/api/services/a/w;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/amap/api/services/a/w;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v4, Lcom/amap/api/services/a/z;

    iget-object v4, v4, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v4

    iget v5, p0, Lcom/amap/api/services/a/w;->i:I

    invoke-static/range {v0 .. v6}, Lcom/amap/api/services/poisearch/PoiResult;->createPagedResult(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;Ljava/util/List;Ljava/util/List;IILjava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/a/w;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/w;->j:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/a/z;

    iget-object v1, v1, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    iget-object v2, p0, Lcom/amap/api/services/a/w;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/amap/api/services/a/w;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v4, Lcom/amap/api/services/a/z;

    iget-object v4, v4, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v4}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v4

    iget v5, p0, Lcom/amap/api/services/a/w;->i:I

    invoke-static/range {v0 .. v6}, Lcom/amap/api/services/poisearch/PoiResult;->createPagedResult(Lcom/amap/api/services/poisearch/PoiSearch$Query;Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;Ljava/util/List;Ljava/util/List;IILjava/util/ArrayList;)Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PoiSearchKeywordHandler"

    const-string v2, "paseJSONJSONException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "PoiSearchKeywordHandler"

    const-string v2, "paseJSONException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected g()Ljava/lang/String;
    .locals 11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "output=json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bound"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getCenter()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v4

    const-string v0, "&location="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&radius="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getRange()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&sortrule="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->isDistanceSort()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/w;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/w;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&keywords="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&language="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/services/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageSize()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&page="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getPageNum()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getBuilding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&building="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getBuilding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&types="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&extensions=all"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/services/a/w;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/services/a/az;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getCityLimit()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "&citylimit=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->isRequireSubPois()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "&children=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getLocation()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "&sortrule="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->isDistanceSort()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/w;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getLocation()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->a:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->getLocation()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v4

    const-string v0, "&location="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Rectangle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getUpperRight()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/api/services/a/i;->a(D)D

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&polygon="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getPolyGonList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&polygon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    const-string v0, "&citylimit=false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    const-string v0, "&children=0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public i()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/place"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/text?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bound"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/around?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Rectangle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/a/w;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/z;

    iget-object v0, v0, Lcom/amap/api/services/a/z;->b:Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/polygon?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
