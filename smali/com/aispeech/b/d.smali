.class public final Lcom/aispeech/b/d;
.super Lcom/aispeech/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/b/a;-><init>()V

    const-string v0, "cn.sds"

    invoke-virtual {p0, v0}, Lcom/aispeech/b/d;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v1, p0, Lcom/aispeech/b/d;->a:Lorg/json/JSONObject;

    const-string v2, "isbin"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/b/d;->a:Lorg/json/JSONObject;

    const-string v1, "cfgPath"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
