.class public Lcom/amap/api/col/bj;
.super Ljava/lang/Object;
.source "StyleParser.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/bj;->b:I

    const/16 v0, 0x23

    iput-char v0, p0, Lcom/amap/api/col/bj;->c:C

    iput-object p1, p0, Lcom/amap/api/col/bj;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/util/Map;Lorg/json/JSONObject;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;",
            "Lorg/json/JSONObject;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/style/StyleItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-direct {v0, p3}, Lcom/autonavi/ae/gmap/style/StyleItem;-><init>(I)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p4}, Lcom/autonavi/ae/gmap/style/StyleItem;->get(I)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/autonavi/ae/gmap/style/StyleElement;

    invoke-direct {v1}, Lcom/autonavi/ae/gmap/style/StyleElement;-><init>()V

    iput p4, v1, Lcom/autonavi/ae/gmap/style/StyleElement;->styleElementType:I

    invoke-virtual {v0, p4, v1}, Lcom/autonavi/ae/gmap/style/StyleItem;->put(ILcom/autonavi/ae/gmap/style/StyleElement;)V

    move-object v0, v1

    :goto_0
    const-string v1, "stylers"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/bj;->c(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput v2, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->color:I

    const-string v2, "textureid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v2, p0, Lcom/amap/api/col/bj;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bj;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)[Lcom/autonavi/ae/gmap/style/StyleItem;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/bj;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/style/StyleItem;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-array v0, v0, [Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/ae/gmap/style/StyleItem;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/autonavi/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "featureType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "background"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v4, "stylers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amap/api/col/bj;->c(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    iput v3, p0, Lcom/amap/api/col/bj;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v1

    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/amap/api/col/bk;->a(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    const-string v5, "elementType"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/amap/api/col/bi;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    const/16 v6, 0xc

    invoke-direct {p0, v1, v3, v6, v5}, Lcom/amap/api/col/bj;->a(Ljava/util/Map;Lorg/json/JSONObject;II)V

    :cond_4
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/amap/api/col/bj;->a(Ljava/util/Map;Lorg/json/JSONObject;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
