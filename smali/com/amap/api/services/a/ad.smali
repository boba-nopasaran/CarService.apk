.class public Lcom/amap/api/services/a/ad;
.super Lcom/amap/api/services/a/b;
.source "RoutePOISearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/b",
        "<",
        "Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;",
        "Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/ad;->e(Ljava/lang/String;)Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected e(Ljava/lang/String;)Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amap/api/services/a/n;->w(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v2, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;

    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-direct {v2, v1, v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchResult;-><init>(Ljava/util/ArrayList;Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;)V

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method protected g()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "key="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/ad;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/services/a/az;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&range="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getRange()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ""

    :try_start_0
    sget-object v3, Lcom/amap/api/services/a/ad$1;->a:[I

    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getSearchType()Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->ordinal()I

    move-result v0

    aget v0, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getPolylines()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getPolylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "&polyline="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getPolylines()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v0, "&types="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    :try_start_1
    const-string v0, "0101"

    goto :goto_0

    :pswitch_1
    const-string v0, "0300"

    goto :goto_0

    :pswitch_2
    const-string v0, "1603"

    goto :goto_0

    :pswitch_3
    const-string v0, "2003"

    goto :goto_0

    :pswitch_4
    const-string v0, "0103"

    goto :goto_0

    :pswitch_5
    const-string v0, "180301"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, "&origin="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&destination="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->a(Lcom/amap/api/services/core/LatLonPoint;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&strategy="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/api/services/a/ad;->a:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/routepoisearch/RoutePOISearchQuery;->getMode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/place/route?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
