.class public Lcom/hongfans/carmedia/model/Result;
.super Lcom/hongfans/carmedia/model/Base;


# instance fields
.field private code:I

.field private data:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hongfans/carmedia/model/Base;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/hongfans/carmedia/model/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/hongfans/carmedia/model/Result;

    invoke-direct {v1}, Lcom/hongfans/carmedia/model/Result;-><init>()V

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, v1, Lcom/hongfans/carmedia/model/Result;->code:I

    :cond_0
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, v1, Lcom/hongfans/carmedia/model/Result;->data:Lorg/json/JSONArray;

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hongfans/carmedia/model/Result;->code:I

    return v0
.end method

.method public getData()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/model/Result;->data:Lorg/json/JSONArray;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/carmedia/model/Result;->code:I

    return-void
.end method

.method public setData(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/model/Result;->data:Lorg/json/JSONArray;

    return-void
.end method
