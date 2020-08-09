.class public Lcom/aispeech/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aispeech/b/c;


# instance fields
.field protected a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aispeech/b/a;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/aispeech/b/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/b/a;->a:Lorg/json/JSONObject;

    const-string v2, "resBinPath"

    iget-object v3, p0, Lcom/aispeech/b/a;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aispeech/b/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/aispeech/b/a;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/b/a;->b:Ljava/lang/String;

    return-void
.end method
