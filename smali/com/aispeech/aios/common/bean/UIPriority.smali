.class public Lcom/aispeech/aios/common/bean/UIPriority;
.super Ljava/lang/Object;
.source "UIPriority.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIPriority"


# instance fields
.field private packageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/UIPriority;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/aispeech/aios/common/bean/UIPriority;->priority:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/aispeech/aios/common/bean/UIPriority;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "packageName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "priority"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/aispeech/aios/common/bean/UIPriority;

    invoke-direct {v4, v2, v3}, Lcom/aispeech/aios/common/bean/UIPriority;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/aispeech/aios/common/bean/UIPriority;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v3, "packageName"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "priority"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/aispeech/aios/common/bean/UIPriority;

    invoke-direct {v3, v1, v2}, Lcom/aispeech/aios/common/bean/UIPriority;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/common/bean/UIPriority;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/common/bean/UIPriority;->priority:I

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/aispeech/aios/common/bean/UIPriority;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/aios/common/bean/UIPriority;->priority:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/aispeech/aios/common/bean/UIPriority;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/aispeech/aios/common/bean/UIPriority;->priority:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/aispeech/aios/common/bean/UIPriority;->priority:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/aispeech/aios/common/bean/UIPriority;->priority:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    :cond_1
    const-string v2, "UIPriority"

    invoke-virtual {p0}, Lcom/aispeech/aios/common/bean/UIPriority;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/nfc/FormatException;

    const-string v3, "Create UIPriority failed ,ui package name can\'t be empty string and ui priority must be valid{1,2,3,4,100}..."

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

    :cond_2
    :try_start_1
    const-string v2, "packageName"

    iget-object v3, p0, Lcom/aispeech/aios/common/bean/UIPriority;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "priority"

    iget v3, p0, Lcom/aispeech/aios/common/bean/UIPriority;->priority:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIPriority{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/common/bean/UIPriority;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aispeech/aios/common/bean/UIPriority;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
