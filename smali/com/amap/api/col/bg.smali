.class public Lcom/amap/api/col/bg;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/ay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/bg$a;,
        Lcom/amap/api/col/bg$b;,
        Lcom/amap/api/col/bg$c;
    }
.end annotation


# static fields
.field static a:Lcom/amap/api/col/bg$a;

.field private static h:I


# instance fields
.field private b:Lcom/amap/api/mapcore/u;

.field private c:Lcom/amap/api/maps/model/TileProvider;

.field private d:Ljava/lang/Float;

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/api/mapcore/k;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/col/bw;

.field private m:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/col/bg$b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/amap/api/col/bg$c;

.field private p:Ljava/lang/String;

.field private q:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/col/bg;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/u;)V
    .locals 6

    const/16 v0, 0x100

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/amap/api/col/bg;->f:Z

    iput v0, p0, Lcom/amap/api/col/bg;->i:I

    iput v0, p0, Lcom/amap/api/col/bg;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/bg;->k:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v3, p0, Lcom/amap/api/col/bg;->n:Z

    iput-object v1, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    iput-object v1, p0, Lcom/amap/api/col/bg;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/bg;->q:Ljava/nio/FloatBuffer;

    iput-object p2, p0, Lcom/amap/api/col/bg;->b:Lcom/amap/api/mapcore/u;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps/model/TileProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bg;->c:Lcom/amap/api/maps/model/TileProvider;

    iget-object v0, p0, Lcom/amap/api/col/bg;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v0}, Lcom/amap/api/maps/model/TileProvider;->getTileWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bg;->i:I

    iget-object v0, p0, Lcom/amap/api/col/bg;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-interface {v0}, Lcom/amap/api/maps/model/TileProvider;->getTileHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bg;->j:I

    iget v0, p0, Lcom/amap/api/col/bg;->i:I

    invoke-static {v0}, Lcom/amap/api/col/ch;->a(I)I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/bg;->j:I

    invoke-static {v1}, Lcom/amap/api/col/ch;->a(I)I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/bg;->i:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    iget v2, p0, Lcom/amap/api/col/bg;->j:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v4, v2, v3

    aput v1, v2, v5

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    aput v4, v2, v0

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    invoke-static {v2}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bg;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getZIndex()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bg;->d:Ljava/lang/Float;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->isVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/bg;->e:Z

    invoke-virtual {p0}, Lcom/amap/api/col/bg;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bg;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/bg;->b:Lcom/amap/api/mapcore/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/u;->a()Lcom/amap/api/mapcore/k;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    iget-object v0, p0, Lcom/amap/api/col/bg;->p:Ljava/lang/String;

    const-string v1, "TileOverlay"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bg;->k:I

    :try_start_0
    new-instance v0, Lcom/amap/api/col/bv$a;

    iget-object v1, p0, Lcom/amap/api/col/bg;->b:Lcom/amap/api/mapcore/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/u;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/bg;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/bv$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemoryCacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bv$a;->a(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bv$a;->b(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getMemCacheSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bv$a;->a(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/bv$a;->a(J)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bv$a;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/amap/api/col/bw;

    iget-object v2, p0, Lcom/amap/api/col/bg;->b:Lcom/amap/api/mapcore/u;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/u;->e()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/col/bg;->i:I

    iget v4, p0, Lcom/amap/api/col/bg;->j:I

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/col/bw;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    iget-object v1, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    iget-object v2, p0, Lcom/amap/api/col/bg;->c:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/bw;->a(Lcom/amap/api/maps/model/TileProvider;)V

    iget-object v1, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/bw;->a(Lcom/amap/api/col/bv$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v5}, Lcom/amap/api/col/bg;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/u;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/bg;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/mapcore/u;)V

    iput-boolean p3, p0, Lcom/amap/api/col/bg;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/bg;)Lcom/amap/api/mapcore/k;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/col/bg;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/bg;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/col/bg;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(III)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bg$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    invoke-interface {v6}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/Rectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    new-instance v7, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    new-instance v8, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iput v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iput v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iput v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iput v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iput v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iput v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iput v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v6, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v6, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v3, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v4, 0x1

    rsub-int/lit8 v5, p1, 0x14

    shl-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/col/bg;->i:I

    mul-int/2addr v4, v5

    sub-int v13, v2, v4

    const/4 v2, 0x1

    rsub-int/lit8 v4, p1, 0x14

    shl-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/col/bg;->j:I

    mul-int/2addr v2, v4

    sub-int v14, v3, v2

    invoke-virtual {v1, v8}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v8, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    rsub-int/lit8 v2, p1, 0x14

    shr-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amap/api/col/bg;->i:I

    div-int v3, v1, v2

    iget v1, v8, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    rsub-int/lit8 v2, p1, 0x14

    shr-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amap/api/col/bg;->j:I

    div-int v4, v1, v2

    rsub-int/lit8 v1, p1, 0x14

    shl-int v1, v3, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amap/api/col/bg;->i:I

    mul-int v7, v1, v2

    rsub-int/lit8 v1, p1, 0x14

    shl-int v1, v4, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amap/api/col/bg;->j:I

    mul-int v8, v1, v2

    new-instance v1, Lcom/amap/api/col/bg$b;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/amap/api/col/bg;->k:I

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/bg$b;-><init>(Lcom/amap/api/col/bg;IIII)V

    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2, v7, v8}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    iput-object v2, v1, Lcom/amap/api/col/bg$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v1, 0x0

    sub-int v7, v3, v2

    :goto_1
    add-int v5, v3, v2

    if-gt v7, v5, :cond_4

    add-int v8, v4, v2

    new-instance v16, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v5, p1, 0x14

    shl-int v5, v7, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/amap/api/col/bg;->i:I

    mul-int/2addr v5, v6

    rsub-int/lit8 v6, p1, 0x14

    shl-int v6, v8, v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/amap/api/col/bg;->j:I

    mul-int/2addr v6, v9

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v5, v11, :cond_1

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v5, v13, :cond_1

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v5, v12, :cond_1

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-le v5, v14, :cond_1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v5, Lcom/amap/api/col/bg$b;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amap/api/col/bg;->k:I

    move-object/from16 v6, p0

    move/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/bg$b;-><init>(Lcom/amap/api/col/bg;IIII)V

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/amap/api/col/bg$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sub-int v8, v4, v2

    new-instance v16, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v5, p1, 0x14

    shl-int v5, v7, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/amap/api/col/bg;->i:I

    mul-int/2addr v5, v6

    rsub-int/lit8 v6, p1, 0x14

    shl-int v6, v8, v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/amap/api/col/bg;->j:I

    mul-int/2addr v6, v9

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v5, v11, :cond_3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v5, v13, :cond_3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v5, v12, :cond_3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-le v5, v14, :cond_3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    new-instance v5, Lcom/amap/api/col/bg$b;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amap/api/col/bg;->k:I

    move-object/from16 v6, p0

    move/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/bg$b;-><init>(Lcom/amap/api/col/bg;IIII)V

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/amap/api/col/bg$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    add-int v5, v4, v2

    add-int/lit8 v8, v5, -0x1

    :goto_2
    sub-int v5, v4, v2

    if-le v8, v5, :cond_9

    add-int v7, v3, v2

    new-instance v16, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v5, p1, 0x14

    shl-int v5, v7, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/amap/api/col/bg;->i:I

    mul-int/2addr v5, v6

    rsub-int/lit8 v6, p1, 0x14

    shl-int v6, v8, v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/amap/api/col/bg;->j:I

    mul-int/2addr v6, v9

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v5, v11, :cond_6

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v5, v13, :cond_6

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v5, v12, :cond_6

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-le v5, v14, :cond_6

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    new-instance v5, Lcom/amap/api/col/bg$b;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amap/api/col/bg;->k:I

    move-object/from16 v6, p0

    move/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/bg$b;-><init>(Lcom/amap/api/col/bg;IIII)V

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/amap/api/col/bg$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sub-int v7, v3, v2

    new-instance v16, Lcom/autonavi/amap/mapcore/IPoint;

    rsub-int/lit8 v5, p1, 0x14

    shl-int v5, v7, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/amap/api/col/bg;->i:I

    mul-int/2addr v5, v6

    rsub-int/lit8 v6, p1, 0x14

    shl-int v6, v8, v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/amap/api/col/bg;->j:I

    mul-int/2addr v6, v9

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ge v5, v11, :cond_8

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-le v5, v13, :cond_8

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ge v5, v12, :cond_8

    move-object/from16 v0, v16

    iget v5, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-le v5, v14, :cond_8

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :cond_7
    new-instance v5, Lcom/amap/api/col/bg$b;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/amap/api/col/bg;->k:I

    move-object/from16 v6, p0

    move/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/bg$b;-><init>(Lcom/amap/api/col/bg;IIII)V

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/amap/api/col/bg$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2

    :cond_9
    if-nez v1, :cond_a

    return-object v15

    :cond_a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/bg;III)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/col/bg;->a(III)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    const/16 v8, 0xde1

    const/16 v7, 0xbe2

    const/4 v6, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    invoke-virtual {v0}, Lcom/amap/api/col/bg$a;->a()V

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x303

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    invoke-static {v8, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    sget-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    iget v0, v0, Lcom/amap/api/col/bg$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    sget-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    iget v0, v0, Lcom/amap/api/col/bg$a;->b:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0xc

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    sget-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    iget v0, v0, Lcom/amap/api/col/bg$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    sget-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    iget v0, v0, Lcom/amap/api/col/bg$a;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    sget-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    iget v0, v0, Lcom/amap/api/col/bg$a;->a:I

    iget-object v1, p0, Lcom/amap/api/col/bg;->b:Lcom/amap/api/mapcore/u;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/u;->g()[F

    move-result-object v1

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    sget-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    iget v0, v0, Lcom/amap/api/col/bg$a;->b:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    sget-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    iget v0, v0, Lcom/amap/api/col/bg$a;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/col/bg$b;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/col/bg$b;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/col/bg;->i:I

    iget v3, p0, Lcom/amap/api/col/bg;->j:I

    iget-object v4, p1, Lcom/amap/api/col/bg$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v5, p1, Lcom/amap/api/col/bg$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    float-to-int v6, v1

    rsub-int/lit8 v6, v6, 0x14

    shl-int v6, v11, v6

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    const/16 v6, 0xc

    new-array v6, v6, [F

    new-instance v7, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v7}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    invoke-virtual {v0, v4, v5, v7}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    new-instance v8, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v8}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    float-to-int v9, v1

    rsub-int/lit8 v9, v9, 0x14

    shl-int v9, v11, v9

    mul-int/2addr v9, v2

    add-int/2addr v9, v4

    invoke-virtual {v0, v9, v5, v8}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    new-instance v9, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v9}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    float-to-int v10, v1

    rsub-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    mul-int/2addr v2, v10

    add-int/2addr v2, v4

    float-to-int v10, v1

    rsub-int/lit8 v10, v10, 0x14

    shl-int v10, v11, v10

    mul-int/2addr v10, v3

    sub-int v10, v5, v10

    invoke-virtual {v0, v2, v10, v9}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    new-instance v2, Lcom/autonavi/amap/mapcore/FPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/FPoint;-><init>()V

    float-to-int v1, v1

    rsub-int/lit8 v1, v1, 0x14

    shl-int v1, v11, v1

    mul-int/2addr v1, v3

    sub-int v1, v5, v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2Map(IILcom/autonavi/amap/mapcore/FPoint;)V

    const/4 v0, 0x0

    iget v1, v7, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    iget v0, v7, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v0, v6, v11

    const/4 v0, 0x2

    aput v12, v6, v0

    const/4 v0, 0x3

    iget v1, v8, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    const/4 v0, 0x4

    iget v1, v8, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    const/4 v0, 0x5

    aput v12, v6, v0

    const/4 v0, 0x6

    iget v1, v9, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    const/4 v0, 0x7

    iget v1, v9, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    const/16 v0, 0x8

    aput v12, v6, v0

    const/16 v0, 0x9

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    aput v1, v6, v0

    const/16 v0, 0xa

    iget v1, v2, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    aput v1, v6, v0

    const/16 v0, 0xb

    aput v12, v6, v0

    iget-object v0, p1, Lcom/amap/api/col/bg$b;->h:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    invoke-static {v6}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/col/bg$b;->h:Ljava/nio/FloatBuffer;

    :goto_0
    return v11

    :cond_0
    iget-object v0, p1, Lcom/amap/api/col/bg$b;->h:Ljava/nio/FloatBuffer;

    invoke-static {v6, v0}, Lcom/amap/api/col/ch;->a([FLjava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/amap/api/col/bg$b;->h:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/bg;Ljava/util/List;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/col/bg;->a(Ljava/util/List;IZ)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/col/bg$b;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bg$b;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/bg$b;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bg$b;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/amap/api/col/bg$b;->g:Z

    if-eqz v6, :cond_3

    iget-boolean v5, v0, Lcom/amap/api/col/bg$b;->g:Z

    iput-boolean v5, v1, Lcom/amap/api/col/bg$b;->g:Z

    iget v5, v0, Lcom/amap/api/col/bg$b;->f:I

    iput v5, v1, Lcom/amap/api/col/bg$b;->f:I

    move v1, v3

    :goto_2
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/bg$b;->b()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMaxZoomLevel()F

    move-result v0

    float-to-int v0, v0

    if-gt p2, v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMinZoomLevel()F

    move-result v0

    float-to-int v0, v0

    if-ge p2, v0, :cond_6

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    :goto_3
    if-ge v2, v1, :cond_b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bg$b;

    if-nez v0, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget-boolean v4, p0, Lcom/amap/api/col/bg;->f:Z

    if-eqz v4, :cond_a

    iget v4, v0, Lcom/amap/api/col/bg$b;->c:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_8

    iget v4, v0, Lcom/amap/api/col/bg$b;->a:I

    iget v5, v0, Lcom/amap/api/col/bg$b;->b:I

    iget v6, v0, Lcom/amap/api/col/bg$b;->c:I

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/cd;->a(III)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_a
    iget-object v4, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v0, Lcom/amap/api/col/bg$b;->g:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    invoke-virtual {v4, p3, v0}, Lcom/amap/api/col/bw;->a(ZLcom/amap/api/col/bg$b;)V

    goto :goto_4

    :cond_b
    move v0, v3

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/amap/api/col/bg;)Lcom/amap/api/col/bw;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/bg;)Lcom/amap/api/mapcore/u;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bg;->b:Lcom/amap/api/mapcore/u;

    return-object v0
.end method

.method public static c()V
    .locals 2

    new-instance v0, Lcom/amap/api/col/bg$a;

    const-string v1, "texture.glsl"

    invoke-direct {v0, v1}, Lcom/amap/api/col/bg$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/bg$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bg$b;

    iget-boolean v1, v0, Lcom/amap/api/col/bg$b;->g:Z

    if-nez v1, :cond_4

    :try_start_0
    iget-object v1, v0, Lcom/amap/api/col/bg$b;->e:Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v3, v0, Lcom/amap/api/col/bg$b;->i:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/amap/api/col/bg$b;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/amap/api/col/bg$b;->i:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/amap/api/col/ch;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, v0, Lcom/amap/api/col/bg$b;->f:I

    iget v1, v0, Lcom/amap/api/col/bg$b;->f:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/bg$b;->g:Z

    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/col/bg$b;->i:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/amap/api/col/bg$b;->g:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/amap/api/col/bg;->a(Lcom/amap/api/col/bg$b;)Z

    iget v1, v0, Lcom/amap/api/col/bg$b;->f:I

    iget-object v0, v0, Lcom/amap/api/col/bg$b;->h:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/amap/api/col/bg;->q:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v1, v0, v3}, Lcom/amap/api/col/bg;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "TileOverlayDelegateImp"

    const-string v4, "drawTiles"

    invoke-static {v1, v3, v4}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/amap/api/col/bg;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    invoke-virtual {v0}, Lcom/amap/api/col/bg$c;->a()Lcom/amap/api/col/bm$d;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/bm$d;->b:Lcom/amap/api/col/bm$d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/bg$c;->a(Z)Z

    :cond_1
    new-instance v0, Lcom/amap/api/col/bg$c;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/bg$c;-><init>(Lcom/amap/api/col/bg;Z)V

    iput-object v0, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    iget-object v0, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    new-array v1, v2, [Lcom/amap/api/mapcore/k;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bg$c;->c([Ljava/lang/Object;)Lcom/amap/api/col/bm;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bg;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/amap/api/col/bg;->n:Z

    iget-object v0, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/bw;->a(Z)V

    :cond_0
    return-void
.end method

.method public clearTileCache()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    invoke-virtual {v0}, Lcom/amap/api/col/bw;->f()V

    :cond_0
    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/ITileOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/bg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bg;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "TileOverlay"

    invoke-static {v0}, Lcom/amap/api/col/bg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bg;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bg;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bg;->d:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bg;->e:Z

    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    invoke-virtual {v0}, Lcom/amap/api/col/bg$c;->a()Lcom/amap/api/col/bm$d;

    move-result-object v0

    sget-object v1, Lcom/amap/api/col/bm$d;->b:Lcom/amap/api/col/bm$d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->o:Lcom/amap/api/col/bg$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bg$c;->a(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bg$b;

    invoke-virtual {v0}, Lcom/amap/api/col/bg$b;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bg;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/bg;->l:Lcom/amap/api/col/bw;

    invoke-virtual {v0}, Lcom/amap/api/col/bw;->g()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/bg;->b:Lcom/amap/api/mapcore/u;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/u;->b(Lcom/amap/api/col/ay;)Z

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/col/bg;->e:Z

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bg;->a(Z)V

    :cond_0
    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bg;->d:Ljava/lang/Float;

    iget-object v0, p0, Lcom/amap/api/col/bg;->b:Lcom/amap/api/mapcore/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/u;->d()V

    return-void
.end method
