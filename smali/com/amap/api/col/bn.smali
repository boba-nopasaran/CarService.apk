.class public abstract Lcom/amap/api/col/bn;
.super Ljava/lang/Object;
.source "BaseTileProvider.java"

# interfaces
.implements Lcom/amap/api/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/bn$a;
    }
.end annotation


# instance fields
.field private final a:I

.field b:Lcom/amap/api/col/gk;

.field private final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/col/bn;->a:I

    iput p2, p0, Lcom/amap/api/col/bn;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/amap/api/col/bn$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/bn$a;-><init>(Lcom/amap/api/col/bn;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/amap/api/col/gk;->a(Z)Lcom/amap/api/col/gk;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/bn;->b:Lcom/amap/api/col/gk;

    iget-object v1, p0, Lcom/amap/api/col/bn;->b:Lcom/amap/api/col/gk;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/gk;->e(Lcom/amap/api/col/gl;)[B
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


# virtual methods
.method public abstract a(III)Ljava/lang/String;
.end method

.method public final getTile(III)Lcom/amap/api/maps/model/Tile;
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/bn;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/bn;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/maps/model/Tile;

    iget v2, p0, Lcom/amap/api/col/bn;->a:I

    iget v3, p0, Lcom/amap/api/col/bn;->c:I

    invoke-direct {p0, v1}, Lcom/amap/api/col/bn;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/amap/api/maps/model/Tile;-><init>(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/amap/api/col/bn;->NO_TILE:Lcom/amap/api/maps/model/Tile;

    goto :goto_0
.end method

.method public getTileHeight()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bn;->c:I

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/bn;->a:I

    return v0
.end method
