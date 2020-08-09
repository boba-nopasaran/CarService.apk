.class public Lcom/aispeech/aios/common/bean/MapInfo;
.super Ljava/lang/Object;
.source "MapInfo.java"


# static fields
.field public static final DIVIDER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "MapInfo"


# instance fields
.field private isCancelNaviSupported:Z

.field private isOverviewSupported:Z

.field private isZoomSupported:Z

.field private name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private supportedRoutePlanningStrategy:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private type:I

.field private versionName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isCancelNaviSupported:Z

    iput-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isOverviewSupported:Z

    iput-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isZoomSupported:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->supportedRoutePlanningStrategy:Ljava/lang/String;

    iput v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, ""

    iput-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    const-string v3, "MapInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copy from String : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->versionName:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    const-string v3, "isCancelNaviSupported"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isCancelNaviSupported:Z

    const-string v3, "isOverviewSupported"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isOverviewSupported:Z

    const-string v3, "isZoomSupported"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isZoomSupported:Z

    const-string v3, "supportedRoutePlanningStrategy"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aispeech/aios/common/bean/MapInfo;->validStrategy([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->supportedRoutePlanningStrategy:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "MapInfo"

    invoke-virtual {p0}, Lcom/aispeech/aios/common/bean/MapInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v3, "MapInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid json : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/nfc/FormatException;

    const-string v4, "Create MapInfo failed ,map name and map package name are needed..."

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isCancelNaviSupported:Z

    iput-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isOverviewSupported:Z

    iput-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isZoomSupported:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->supportedRoutePlanningStrategy:Ljava/lang/String;

    iput v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    return-void
.end method

.method private isValidStrategy(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "DrivingAvoidCongestion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DrivingHighWay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DrivingNoHighWay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DrivingSaveMoney"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validStrategy([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/aispeech/aios/common/bean/MapInfo;->isValidStrategy(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "MapInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nonsupport route strategy :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedRoutePlanningStrategy()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->supportedRoutePlanningStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    iget v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "MapInfo"

    const-string v1, "Map type not initialize"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelNaviSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isCancelNaviSupported:Z

    return v0
.end method

.method public isOverviewSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isOverviewSupported:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isZoomSupported:Z

    return v0
.end method

.method public setCancelNaviSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isCancelNaviSupported:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setOverviewSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isOverviewSupported:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public varargs setSupportedRoutePlanningStrategy([Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/aispeech/aios/common/bean/MapInfo;->validStrategy([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/common/bean/MapInfo;->supportedRoutePlanningStrategy:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setZoomSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isZoomSupported:Z

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Landroid/nfc/FormatException;

    const-string v3, "Create MapInfo failed ,map name and map package name can\'t be empty string..."

    invoke-direct {v2, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    :try_start_1
    const-string v2, "version"

    iget-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    iget-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "packageName"

    iget-object v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "isCancelNaviSupported"

    iget-boolean v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isCancelNaviSupported:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isOverviewSupported"

    iget-boolean v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isOverviewSupported:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isZoomSupported"

    iget-boolean v3, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isZoomSupported:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "supportedRoutePlanningStrategy"

    iget-object v2, p0, Lcom/aispeech/aios/common/bean/MapInfo;->supportedRoutePlanningStrategy:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/aispeech/aios/common/bean/MapInfo;->supportedRoutePlanningStrategy:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapInfo{  version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOverviewSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isOverviewSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCancelNaviSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isCancelNaviSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isZoomSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->isZoomSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedRoutePlanningStrategy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/common/bean/MapInfo;->supportedRoutePlanningStrategy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
