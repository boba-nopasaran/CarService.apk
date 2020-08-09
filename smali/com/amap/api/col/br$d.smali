.class Lcom/amap/api/col/br$d;
.super Lcom/amap/api/col/bh;
.source "GLESUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/bh;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/br$d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "aMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/amap/api/col/br$d;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/br$d;->a:I

    const-string v0, "aColor"

    invoke-virtual {p0, v0}, Lcom/amap/api/col/br$d;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/br$d;->c:I

    const-string v0, "aVertex"

    invoke-virtual {p0, v0}, Lcom/amap/api/col/br$d;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/br$d;->b:I

    goto :goto_0
.end method
