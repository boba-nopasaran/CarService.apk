.class Lcom/amap/api/col/bn$a;
.super Lcom/amap/api/col/gl;
.source "BaseTileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/bn;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/bn;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/bn$a;->a:Lcom/amap/api/col/bn;

    invoke-direct {p0}, Lcom/amap/api/col/gl;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/bn$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/bn$a;->b:Ljava/lang/String;

    sget-object v0, Lcom/amap/api/mapcore/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/em;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bn$a;->a(Ljava/net/Proxy;)V

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bn$a;->a(I)V

    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bn$a;->b(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 7
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

    const-string v1, "User-Agent"

    sget-object v2, Lcom/amap/api/mapcore/g;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platinfo"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "platform=Android&sdkversion=%s&product=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "5.0.0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "3dmap"

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-INFO"

    sget-object v2, Lcom/amap/api/mapcore/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/ei;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    sget-object v2, Lcom/amap/api/mapcore/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/ef;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logversion"

    const-string v2, "2.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/util/Map;
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

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bn$a;->b:Ljava/lang/String;

    return-object v0
.end method
