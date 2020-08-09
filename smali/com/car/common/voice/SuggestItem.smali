.class public Lcom/car/common/voice/SuggestItem;
.super Ljava/lang/Object;
.source "SuggestItem.java"


# instance fields
.field public city:Ljava/lang/String;

.field public cur:Lcom/amap/api/maps/model/LatLng;

.field public district:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public pt:Lcom/amap/api/maps/model/LatLng;

.field public subTitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneFrom(Ljava/lang/String;)Lcom/car/common/voice/SuggestItem;
    .locals 15

    new-instance v9, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v9}, Lcom/car/common/voice/SuggestItem;-><init>()V

    const-string v12, "\r"

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_7

    aget-object v3, v0, v2

    const-string v12, ":"

    const/4 v13, 0x2

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aget-object v12, v1, v12

    const-string v13, "title"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    aget-object v12, v1, v12

    iput-object v12, v9, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    aget-object v12, v1, v12

    const-string v13, "subTitle"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    aget-object v12, v1, v12

    iput-object v12, v9, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    aget-object v12, v1, v12

    const-string v13, "city"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    aget-object v12, v1, v12

    iput-object v12, v9, Lcom/car/common/voice/SuggestItem;->city:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    aget-object v12, v1, v12

    const-string v13, "district"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    aget-object v12, v1, v12

    iput-object v12, v9, Lcom/car/common/voice/SuggestItem;->district:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    aget-object v12, v1, v12

    const-string v13, "key"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    aget-object v12, v1, v12

    iput-object v12, v9, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    aget-object v12, v1, v12

    const-string v13, "pt"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    aget-object v12, v1, v12

    const-string v13, ","

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    new-instance v12, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v12, v6, v7, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v12, v9, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    aget-object v12, v1, v12

    const-string v13, "cur"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    aget-object v12, v1, v12

    const-string v13, ","

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    new-instance v12, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v12, v6, v7, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v12, v9, Lcom/car/common/voice/SuggestItem;->cur:Lcom/amap/api/maps/model/LatLng;

    goto/16 :goto_1

    :cond_7
    return-object v9
.end method


# virtual methods
.method public getDistanceString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/common/voice/SuggestItem;->cur:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v8, v0, [F

    iget-object v0, p0, Lcom/car/common/voice/SuggestItem;->cur:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->cur:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v6, p0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5927\u7ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v8, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u516c\u91cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toFormatString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0xd

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "subTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->city:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->city:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "city:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->district:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->district:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "district:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->district:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    if-eqz v2, :cond_5

    const-string v2, "pt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->cur:Lcom/amap/api/maps/model/LatLng;

    if-eqz v2, :cond_6

    const-string v2, "cur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->cur:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/car/common/voice/SuggestItem;->cur:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/common/voice/SuggestItem;->subTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/car/common/voice/SuggestItem;->pt:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/common/voice/SuggestItem;->cur:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/common/voice/SuggestItem;->getDistanceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    goto :goto_0
.end method
