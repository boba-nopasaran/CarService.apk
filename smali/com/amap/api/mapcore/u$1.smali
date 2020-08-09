.class Lcom/amap/api/mapcore/u$1;
.super Lcom/amap/api/col/bn;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/u;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/u;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/u;II)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/u$1;->a:Lcom/amap/api/mapcore/u;

    invoke-direct {p0, p2, p3}, Lcom/amap/api/col/bn;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(III)Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "http://grid.amap.com/grid/%d/%d/%d?dpiType=webrd&lang=zh_cn&pack=%s&ds=0"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/amap/api/mapcore/g;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
