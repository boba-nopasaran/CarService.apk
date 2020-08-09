.class public Lcom/hongfans/carmedia/model/Config;
.super Lcom/hongfans/carmedia/model/Base;


# instance fields
.field private config:Ljava/lang/String;

.field private expires_in:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hongfans/carmedia/model/Base;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/hongfans/carmedia/model/Config;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    new-instance v0, Lcom/hongfans/carmedia/model/Config;

    invoke-direct {v0}, Lcom/hongfans/carmedia/model/Config;-><init>()V

    const-string v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/carmedia/model/Config;->token:Ljava/lang/String;

    :cond_0
    const-string v1, "userId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "userId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/carmedia/model/Config;->userId:Ljava/lang/String;

    :cond_1
    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "uid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/carmedia/model/Config;->uid:Ljava/lang/String;

    :cond_2
    const-string v1, "sn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/carmedia/model/Config;->sn:Ljava/lang/String;

    :cond_3
    const-string v1, "config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "config"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/carmedia/model/Config;->config:Ljava/lang/String;

    :cond_4
    const-string v1, "expires_in"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "expires_in"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/carmedia/model/Config;->expires_in:Ljava/lang/String;

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/model/Config;->config:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/model/Config;->expires_in:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/model/Config;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/model/Config;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/model/Config;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/carmedia/model/Config;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/model/Config;->config:Ljava/lang/String;

    return-void
.end method

.method public setExpires_in(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/model/Config;->expires_in:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/model/Config;->sn:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/model/Config;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/model/Config;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/carmedia/model/Config;->userId:Ljava/lang/String;

    return-void
.end method
