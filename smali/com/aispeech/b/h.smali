.class public final Lcom/aispeech/b/h;
.super Lcom/aispeech/b/a;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/b/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/b/h;->b:Z

    const-string v0, "cn.wakeup"

    invoke-virtual {p0, v0}, Lcom/aispeech/b/h;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/b/h;->b:Z

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4

    invoke-super {p0}, Lcom/aispeech/b/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v0, p0, Lcom/aispeech/b/h;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "cn.wakeup"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "useOutputBoundary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
