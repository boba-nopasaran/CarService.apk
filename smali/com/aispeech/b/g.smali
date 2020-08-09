.class public final Lcom/aispeech/b/g;
.super Lcom/aispeech/b/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/aispeech/b/a;-><init>()V

    const-string v0, "cn.sent.syn"

    invoke-virtual {p0, v0}, Lcom/aispeech/b/g;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/b/g;->a:Lorg/json/JSONObject;

    const-string v1, "resDirPath"

    invoke-virtual {p0}, Lcom/aispeech/b/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/b/g;->a:Lorg/json/JSONObject;

    const-string v1, "dictPath"

    iget-object v2, p0, Lcom/aispeech/b/g;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/aispeech/b/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/b/g;->b:Ljava/lang/String;

    return-void
.end method
