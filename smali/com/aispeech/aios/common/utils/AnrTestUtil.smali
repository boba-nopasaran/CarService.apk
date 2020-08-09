.class public Lcom/aispeech/aios/common/utils/AnrTestUtil;
.super Ljava/lang/Object;
.source "AnrTestUtil.java"


# static fields
.field private static final ACTION_ANR_TEST:Ljava/lang/String; = "aios.intent.action.ANR_TEST"

.field private static final BLOCK_TIME:I = 0x927c0

.field private static final TAG:Ljava/lang/String; = "AnrTestUtil"

.field private static mUtil:Lcom/aispeech/aios/common/utils/AnrTestUtil;

.field private static nodeEnableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field AnrTestListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aispeech/aios/common/utils/AnrTestUtil;->nodeEnableMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aispeech/aios/common/utils/AnrTestUtil$1;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/common/utils/AnrTestUtil$1;-><init>(Lcom/aispeech/aios/common/utils/AnrTestUtil;)V

    iput-object v0, p0, Lcom/aispeech/aios/common/utils/AnrTestUtil;->AnrTestListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/common/utils/AnrTestUtil;
    .locals 2

    const-class v1, Lcom/aispeech/aios/common/utils/AnrTestUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/common/utils/AnrTestUtil;->mUtil:Lcom/aispeech/aios/common/utils/AnrTestUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/common/utils/AnrTestUtil;

    invoke-direct {v0}, Lcom/aispeech/aios/common/utils/AnrTestUtil;-><init>()V

    sput-object v0, Lcom/aispeech/aios/common/utils/AnrTestUtil;->mUtil:Lcom/aispeech/aios/common/utils/AnrTestUtil;

    :cond_0
    sget-object v0, Lcom/aispeech/aios/common/utils/AnrTestUtil;->mUtil:Lcom/aispeech/aios/common/utils/AnrTestUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseJson(Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "AnrTestUtil"

    const-string v8, "Json is empty!!!"

    invoke-static {v7, v8}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const-string v7, "AnrTestUtil"

    const-string v8, "AnrArray is empty!!!"

    invoke-static {v7, v8}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    :goto_1
    const-string v7, "AnrTestUtil"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v7, Lcom/aispeech/aios/common/utils/AnrTestUtil;->nodeEnableMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "node_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "is_anr"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/aispeech/aios/common/utils/AnrTestUtil;->nodeEnableMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/aispeech/aios/common/utils/AnrTestUtil;->nodeEnableMap:Ljava/util/Map;

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string v7, "AnrTestUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NodeName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is duplicate!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "aios.intent.action.ANR_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/common/utils/AnrTestUtil;->AnrTestListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/aios/common/utils/AnrTestUtil;->parseJson(Ljava/lang/String;)V

    return-void
.end method

.method public testAnr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/aispeech/aios/common/utils/AnrTestUtil;->nodeEnableMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "true"

    sget-object v3, Lcom/aispeech/aios/common/utils/AnrTestUtil;->nodeEnableMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AnrTestUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "case: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AnrTestUtil"

    const-string v3, "Blocking start..."

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0x927c0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "AnrTestUtil"

    const-string v3, "Blocking end."

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
