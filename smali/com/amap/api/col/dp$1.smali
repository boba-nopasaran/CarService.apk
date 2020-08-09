.class Lcom/amap/api/col/dp$1;
.super Lcom/amap/api/col/gl;
.source "RideTBTTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/dp;->b()Lcom/amap/api/col/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/dp;


# direct methods
.method constructor <init>(Lcom/amap/api/col/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/dp$1;->a:Lcom/amap/api/col/dp;

    invoke-direct {p0}, Lcom/amap/api/col/gl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 8
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/dp$1;->a:Lcom/amap/api/col/dp;

    iget-object v1, v1, Lcom/amap/api/col/dp;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/ei;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "platinfo"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "platform=Android&sdkversion=%s&product=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "5.0.1"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "navi"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-INFO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logversion"

    const-string v2, "2.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/util/Map;
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/dp$1;->a:Lcom/amap/api/col/dp;

    iget-object v1, v1, Lcom/amap/api/col/dp;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dp$1;->a:Lcom/amap/api/col/dp;

    iget-object v1, v1, Lcom/amap/api/col/dp;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/dp$1;->a:Lcom/amap/api/col/dp;

    iget-object v2, v2, Lcom/amap/api/col/dp;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/dp$1;->a:Lcom/amap/api/col/dp;

    iget-object v2, v2, Lcom/amap/api/col/dp;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "origin"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "destination"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "output"

    const-string v1, "bin"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    iget-object v1, p0, Lcom/amap/api/col/dp$1;->a:Lcom/amap/api/col/dp;

    iget-object v1, v1, Lcom/amap/api/col/dp;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/ef;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enginever"

    const-string v1, "3.0"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/ei;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dp$1;->a:Lcom/amap/api/col/dp;

    iget-object v1, v1, Lcom/amap/api/col/dp;->j:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/ei;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/amap/api/col/ep;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/ei;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ts"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scode"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "http://restapi.amap.com/v4/direction/bicycling"

    return-object v0
.end method
