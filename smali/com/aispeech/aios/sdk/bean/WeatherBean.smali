.class public Lcom/aispeech/aios/sdk/bean/WeatherBean;
.super Ljava/lang/Object;
.source "WeatherBean.java"


# static fields
.field private static final sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private address:Ljava/lang/String;

.field private area:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private keyword:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fmInfoToJson(Lcom/aispeech/aios/sdk/bean/WeatherBean;)Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "date"

    sget-object v3, Lcom/aispeech/aios/sdk/bean/WeatherBean;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "province"

    invoke-virtual {p1}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "city"

    invoke-virtual {p1}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "area"

    invoke-virtual {p1}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->getArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "address"

    invoke-virtual {p1}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "keyword"

    invoke-virtual {p1}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->province:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->area:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->date:Ljava/util/Date;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/WeatherBean;->province:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p0}, Lcom/aispeech/aios/sdk/bean/WeatherBean;->fmInfoToJson(Lcom/aispeech/aios/sdk/bean/WeatherBean;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "{}"

    goto :goto_0
.end method
