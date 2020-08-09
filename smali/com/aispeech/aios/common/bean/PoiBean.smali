.class public Lcom/aispeech/aios/common/bean/PoiBean;
.super Lcom/aispeech/aios/common/bean/BaseBean;
.source "PoiBean.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private address:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private displayDistance:Ljava/lang/String;

.field private distance:J

.field private dst_name:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private name:Ljava/lang/String;

.field private poiId:Ljava/lang/String;

.field private routeJson:Ljava/lang/String;

.field private telephone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/aios/common/bean/BaseBean;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->routeJson:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/aispeech/aios/common/bean/BaseBean;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->routeJson:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->name:Ljava/lang/String;

    const-string v2, "dst_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->dst_name:Ljava/lang/String;

    const-string v2, "latitude"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->latitude:D

    const-string v2, "longitude"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->longitude:D

    const-string v2, "address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->address:Ljava/lang/String;

    const-string v2, "distance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->distance:J

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->telephone:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static gcj02_To_Bd09(DD)Lcom/aispeech/aios/common/bean/PoiBean;
    .locals 24

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    move-wide/from16 v10, p2

    move-wide/from16 v12, p0

    mul-double v16, v10, v10

    mul-double v18, v12, v12

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide v18, 0x3ef4f8b588e368f1L    # 2.0E-5

    const-wide v20, 0x40a7700000000000L    # 3000.0

    mul-double v20, v20, v6

    const-wide v22, 0x4066800000000000L    # 180.0

    div-double v20, v20, v22

    mul-double v20, v20, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v14, v16, v18

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    const-wide v18, 0x3ec92a737110e454L    # 3.0E-6

    const-wide v20, 0x40a7700000000000L    # 3000.0

    mul-double v20, v20, v6

    const-wide v22, 0x4066800000000000L    # 180.0

    div-double v20, v20, v22

    mul-double v20, v20, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v8, v16, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    const-wide v18, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double v4, v16, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v14

    const-wide v18, 0x3f789374bc6a7efaL    # 0.006

    add-double v2, v16, v18

    new-instance v0, Lcom/aispeech/aios/common/bean/PoiBean;

    invoke-direct {v0}, Lcom/aispeech/aios/common/bean/PoiBean;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/aios/common/bean/PoiBean;->setLatitude(D)V

    invoke-virtual {v0, v4, v5}, Lcom/aispeech/aios/common/bean/PoiBean;->setLongitude(D)V

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->address:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->cityName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDistance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->displayDistance:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->distance:J

    return-wide v0
.end method

.method public getDstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->dst_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->longitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->poiId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRouteJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->routeJson:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayDistance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->displayDistance:Ljava/lang/String;

    return-void
.end method

.method public setDistance(J)V
    .locals 1

    iput-wide p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->distance:J

    return-void
.end method

.method public setDstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->dst_name:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->longitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPoiId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->poiId:Ljava/lang/String;

    return-void
.end method

.method public setRouteJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->routeJson:Ljava/lang/String;

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->telephone:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/aispeech/aios/common/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dst_name"

    invoke-virtual {p0}, Lcom/aispeech/aios/common/bean/PoiBean;->getDstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "latitude"

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "longitude"

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "address"

    iget-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "distance"

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->distance:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "tel"

    iget-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toJson2()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/aispeech/aios/common/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dst_name"

    invoke-virtual {p0}, Lcom/aispeech/aios/common/bean/PoiBean;->getDstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "latitude"

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->latitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "longitude"

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "address"

    iget-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "distance"

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->distance:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "tel"

    iget-object v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PoiBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aispeech/aios/common/bean/PoiBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dst_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aispeech/aios/common/bean/PoiBean;->getDstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "poiId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->poiId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/aispeech/aios/common/bean/PoiBean;->distance:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", telephone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/common/bean/PoiBean;->telephone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
