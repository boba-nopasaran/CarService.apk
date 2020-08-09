.class Lcom/amap/api/services/a/ba$b;
.super Lcom/amap/api/services/a/cy;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
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

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/bh;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/services/a/bh;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/cy;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bh;)V

    iput-object p3, p0, Lcom/amap/api/services/a/ba$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/services/a/ba$b;->d:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/services/a/ba$b;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/a/ba$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/bd;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amap/api/services/a/bd;->c()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "authkey"

    iget-object v3, p0, Lcom/amap/api/services/a/ba$b;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "plattype"

    const-string v3, "android"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product"

    iget-object v3, p0, Lcom/amap/api/services/a/ba$b;->b:Lcom/amap/api/services/a/bh;

    invoke-virtual {v3}, Lcom/amap/api/services/a/bh;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    iget-object v3, p0, Lcom/amap/api/services/a/ba$b;->b:Lcom/amap/api/services/a/bh;

    invoke-virtual {v3}, Lcom/amap/api/services/a/bh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "output"

    const-string v3, "json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "androidversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/services/a/ba$b;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/a/ba$b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/a/ba$b;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/a/ba$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "abitype"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ext"

    iget-object v2, p0, Lcom/amap/api/services/a/ba$b;->b:Lcom/amap/api/services/a/bh;

    invoke-virtual {v2}, Lcom/amap/api/services/a/bh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/a/ba$b;->e:Z

    return v0
.end method

.method public b()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()[B
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/services/a/ba$b;->o()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bi;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bi;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/a/ba$b;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "https://restapi.amap.com/v3/iasdkauth"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://restapi.amap.com/v3/iasdkauth"

    goto :goto_0
.end method
