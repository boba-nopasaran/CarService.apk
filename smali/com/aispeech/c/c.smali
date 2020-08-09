.class public abstract Lcom/aispeech/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lorg/json/JSONObject;

.field protected b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aispeech/c/c;->a:Lorg/json/JSONObject;

    iput-boolean v1, p0, Lcom/aispeech/c/c;->c:Z

    iput-boolean v1, p0, Lcom/aispeech/c/c;->d:Z

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/c;->a:Lorg/json/JSONObject;

    const-string v1, "coreType"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/c;->c:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/c/c;->c:Z

    return v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/c;->a:Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/c;->d:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/c/c;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/c;->a:Lorg/json/JSONObject;

    const-string v1, "res"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/c;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/aispeech/c/c;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
