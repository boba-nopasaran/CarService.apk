.class public Lcom/aispeech/aios/client/AIOSContactDataNode;
.super Ljava/lang/Object;
.source "AIOSContactDataNode.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AIOSContactDataNode"

.field private static mInstance:Lcom/aispeech/aios/client/AIOSContactDataNode;


# instance fields
.field private mNode:Lcom/aispeech/aios/BaseNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/aios/client/AIOSContactDataNode$1;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/client/AIOSContactDataNode$1;-><init>(Lcom/aispeech/aios/client/AIOSContactDataNode;)V

    iput-object v0, p0, Lcom/aispeech/aios/client/AIOSContactDataNode;->mNode:Lcom/aispeech/aios/BaseNode;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/client/AIOSContactDataNode;
    .locals 2

    const-class v1, Lcom/aispeech/aios/client/AIOSContactDataNode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/client/AIOSContactDataNode;->mInstance:Lcom/aispeech/aios/client/AIOSContactDataNode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/client/AIOSContactDataNode;

    invoke-direct {v0}, Lcom/aispeech/aios/client/AIOSContactDataNode;-><init>()V

    sput-object v0, Lcom/aispeech/aios/client/AIOSContactDataNode;->mInstance:Lcom/aispeech/aios/client/AIOSContactDataNode;

    sget-object v0, Lcom/aispeech/aios/client/AIOSContactDataNode;->mInstance:Lcom/aispeech/aios/client/AIOSContactDataNode;

    iget-object v0, v0, Lcom/aispeech/aios/client/AIOSContactDataNode;->mNode:Lcom/aispeech/aios/BaseNode;

    invoke-virtual {v0}, Lcom/aispeech/aios/BaseNode;->start()Z

    :cond_0
    sget-object v0, Lcom/aispeech/aios/client/AIOSContactDataNode;->mInstance:Lcom/aispeech/aios/client/AIOSContactDataNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private postData(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "AIOSContactDataNode"

    const-string v2, "post Contacts Data called."

    invoke-static {v0, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AIOSContactDataNode"

    const-string v1, "Empty contacts! Not post."

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSContactDataNode;->mNode:Lcom/aispeech/aios/BaseNode;

    const-string v2, "phone.contacts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/aios/BaseNode;->publishSticky(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "AIOSContactDataNode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post msg: phone.contacts"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private toJsonData(Lcom/aispeech/aios/bean/ContactInfo;)Lorg/json/JSONObject;
    .locals 7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "name"

    invoke-virtual {p1}, Lcom/aispeech/aios/bean/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/aispeech/aios/bean/ContactInfo;->getPhoneInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "number"

    invoke-virtual {p1}, Lcom/aispeech/aios/bean/ContactInfo;->getPhoneInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;

    invoke-virtual {v5}, Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "flag"

    invoke-virtual {p1}, Lcom/aispeech/aios/bean/ContactInfo;->getPhoneInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;

    invoke-virtual {v5}, Lcom/aispeech/aios/bean/ContactInfo$PhoneInfo;->getFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "phone_info"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getBusClient()Lcom/aispeech/aios/BusClient;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSContactDataNode;->mNode:Lcom/aispeech/aios/BaseNode;

    invoke-virtual {v0}, Lcom/aispeech/aios/BaseNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    return-object v0
.end method

.method public postData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aispeech/aios/bean/ContactInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aispeech/aios/bean/ContactInfo;

    invoke-direct {p0, v1}, Lcom/aispeech/aios/client/AIOSContactDataNode;->toJsonData(Lcom/aispeech/aios/bean/ContactInfo;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const-string v3, "AIOSContactDataNode"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aispeech/aios/client/AIOSContactDataNode;->postData(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public start()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
