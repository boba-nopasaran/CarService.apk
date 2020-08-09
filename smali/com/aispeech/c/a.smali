.class public final Lcom/aispeech/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/aispeech/c/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "userId"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "deviceInfo"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "sdcard"

    invoke-static {}, Lcom/aispeech/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "cpu"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "rom"

    invoke-static {}, Lcom/aispeech/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "system"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "deviceId"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "ram"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "aiengineVersion"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/aispeech/c/a;->a:Lorg/json/JSONObject;

    const-string v1, "jarVersion"

    invoke-static {v0, v1, p1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/aispeech/c/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
