.class Lcom/amap/api/col/bg$a;
.super Lcom/amap/api/col/bh;
.source "TileOverlayDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/bh;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/bg$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "aMVP"

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bg$a;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bg$a;->a:I

    const-string v0, "aVertex"

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bg$a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bg$a;->b:I

    const-string v0, "aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bg$a;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bg$a;->c:I

    goto :goto_0
.end method
