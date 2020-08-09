.class public Lcom/amap/api/col/bc;
.super Ljava/lang/Object;
.source "PolygonDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/av;


# static fields
.field private static v:F


# instance fields
.field a:Lcom/autonavi/amap/mapcore/FPointBounds;

.field b:Landroid/graphics/Rect;

.field private c:Lcom/amap/api/mapcore/k;

.field private d:F

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:F

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/FPoint;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/nio/FloatBuffer;

.field private n:Ljava/nio/FloatBuffer;

.field private o:I

.field private p:I

.field private q:Lcom/amap/api/maps/model/LatLngBounds;

.field private r:Z

.field private s:F

.field private t:Ljava/lang/Object;

.field private u:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x501502f9    # 1.0E10f

    sput v0, Lcom/amap/api/col/bc;->v:F

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/k;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/col/bc;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/bc;->e:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bc;->l:Ljava/util/List;

    iput v2, p0, Lcom/amap/api/col/bc;->o:I

    iput v2, p0, Lcom/amap/api/col/bc;->p:I

    iput-object v3, p0, Lcom/amap/api/col/bc;->q:Lcom/amap/api/maps/model/LatLngBounds;

    iput-boolean v2, p0, Lcom/amap/api/col/bc;->r:Z

    iput v1, p0, Lcom/amap/api/col/bc;->s:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bc;->t:Ljava/lang/Object;

    iput-object v3, p0, Lcom/amap/api/col/bc;->a:Lcom/autonavi/amap/mapcore/FPointBounds;

    iput-object v3, p0, Lcom/amap/api/col/bc;->b:Landroid/graphics/Rect;

    iput v1, p0, Lcom/amap/api/col/bc;->u:F

    iput-object p1, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/bc;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bc;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PolygonDelegateImp"

    const-string v2, "create"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/IPoint;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v8, 0x501502f9    # 1.0E10f

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/amap/api/col/bc;->b()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x2

    if-ge v5, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    :goto_1
    add-int/lit8 v0, v5, -0x1

    if-ge v3, v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/bc;->a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v5, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v3, v0, [F

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    mul-int/lit8 v6, v1, 0x3

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v7, p2

    int-to-float v7, v7

    aput v7, v3, v6

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    iget v7, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v7, p3

    int-to-float v7, v7

    aput v7, v3, v6

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x2

    aput v10, v3, v6

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    invoke-static {v5}, Lcom/amap/api/col/bc;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_3

    sget v0, Lcom/amap/api/col/bc;->v:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_4

    const v0, 0x4cbebc20    # 1.0E8f

    sput v0, Lcom/amap/api/col/bc;->v:F

    :goto_4
    invoke-static {v5}, Lcom/amap/api/col/bc;->a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    :cond_3
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v4, v1, [F

    array-length v6, v0

    move v1, v2

    :goto_5
    if-ge v2, v6, :cond_5

    aget-object v7, v0, v2

    mul-int/lit8 v8, v1, 0x3

    iget v9, v7, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v9, p2

    int-to-float v9, v9

    aput v9, v4, v8

    mul-int/lit8 v8, v1, 0x3

    add-int/lit8 v8, v8, 0x1

    iget v7, v7, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v7, p3

    int-to-float v7, v7

    aput v7, v4, v8

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    aput v10, v4, v7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    sput v8, Lcom/amap/api/col/bc;->v:F

    goto :goto_4

    :cond_5
    array-length v1, v5

    iput v1, p0, Lcom/amap/api/col/bc;->o:I

    array-length v0, v0

    iput v0, p0, Lcom/amap/api/col/bc;->p:I

    invoke-static {v3}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bc;->m:Ljava/nio/FloatBuffer;

    invoke-static {v4}, Lcom/amap/api/col/ch;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bc;->n:Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private a(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)Z
    .locals 2

    iget v0, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/bc;->s:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/bc;->s:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/bc;->s:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v1, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/bc;->s:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/autonavi/amap/mapcore/Rectangle;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->f()F

    move-result v1

    iput v1, p0, Lcom/amap/api/col/bc;->u:F

    invoke-direct {p0}, Lcom/amap/api/col/bc;->b()V

    iget v1, p0, Lcom/amap/api/col/bc;->u:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/bc;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/autonavi/amap/mapcore/Rectangle;->contains(Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a([Lcom/autonavi/amap/mapcore/IPoint;)[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 8

    const/4 v0, 0x0

    array-length v2, p0

    mul-int/lit8 v1, v2, 0x2

    new-array v3, v1, [F

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v4, v1, 0x2

    aget-object v5, p0, v1

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-float v5, v5

    sget v6, Lcom/amap/api/col/bc;->v:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p0, v1

    iget v5, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-float v5, v5

    sget v6, Lcom/amap/api/col/bc;->v:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/amap/api/col/bq;

    invoke-direct {v1}, Lcom/amap/api/col/bq;-><init>()V

    invoke-virtual {v1, v3}, Lcom/amap/api/col/bq;->a([F)Lcom/amap/api/col/cg;

    move-result-object v1

    iget v2, v1, Lcom/amap/api/col/cg;->b:I

    new-array v4, v2, [Lcom/autonavi/amap/mapcore/IPoint;

    :goto_1
    if-ge v0, v2, :cond_1

    new-instance v5, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v5}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    aput-object v5, v4, v0

    aget-object v5, v4, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/cg;->a(I)S

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    aget v6, v3, v6

    sget v7, Lcom/amap/api/col/bc;->v:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    aget-object v5, v4, v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/cg;->a(I)S

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v3, v6

    sget v7, Lcom/amap/api/col/bc;->v:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private b()V
    .locals 5

    const/high16 v1, 0x43480000    # 200.0f

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->f()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/16 v3, 0x1388

    if-le v2, v3, :cond_1

    const/high16 v2, 0x41400000    # 12.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/amap/api/col/bc;->g:F

    div-float/2addr v2, v4

    div-float/2addr v0, v4

    add-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bc;->s:F

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->b()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapLenWithWin(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/bc;->s:F

    goto :goto_1
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v7

    iget-object v0, p0, Lcom/amap/api/col/bc;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bc;->b:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bc;->b:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/amap/api/col/ch;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v6, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v6}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-interface/range {v1 .. v6}, Lcom/amap/api/mapcore/k;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v1, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/amap/api/col/bc;->b:Landroid/graphics/Rect;

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ch;->b(Landroid/graphics/Rect;II)V

    invoke-virtual {v7, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v0, 0x1

    if-le v2, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget-object v1, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-ne v3, v4, :cond_3

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/bc;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    invoke-virtual {v7}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bc;->q:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, p0, Lcom/amap/api/col/bc;->m:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/bc;->m:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/bc;->n:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/bc;->n:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_5
    iput v9, p0, Lcom/amap/api/col/bc;->o:I

    iput v9, p0, Lcom/amap/api/col/bc;->p:I

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v0, v9}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bc;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Rectangle;->isOverlap(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v2}, Lcom/amap/api/col/bc;->a(Lcom/autonavi/amap/mapcore/Rectangle;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/bc;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bc;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/amap/api/col/ch;->a([Lcom/autonavi/amap/mapcore/IPoint;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Lcom/amap/api/col/bc;->a(Ljava/util/List;II)V

    iget-object v0, p0, Lcom/amap/api/col/bc;->m:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/bc;->n:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/col/bc;->o:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/amap/api/col/bc;->p:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/amap/api/col/bc;->h:I

    iget v1, p0, Lcom/amap/api/col/bc;->i:I

    iget-object v2, p0, Lcom/amap/api/col/bc;->m:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/amap/api/col/bc;->g:F

    iget-object v4, p0, Lcom/amap/api/col/bc;->n:Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/amap/api/col/bc;->o:I

    iget v6, p0, Lcom/amap/api/col/bc;->p:I

    iget-object v7, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v7}, Lcom/amap/api/mapcore/k;->t()[F

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/br;->a(IILjava/nio/FloatBuffer;FLjava/nio/FloatBuffer;II[F)V

    :cond_3
    iput-boolean v8, p0, Lcom/amap/api/col/bc;->r:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public contains(Lcom/amap/api/maps/model/LatLng;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/bc;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/col/ch;->a(Lcom/amap/api/maps/model/LatLng;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "PolygonDelegateImp"

    const-string v2, "contains"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/bc;->r:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bc;->m:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bc;->m:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/bc;->m:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bc;->n:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/bc;->n:Ljava/nio/FloatBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PolygonDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IOverlay;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/bc;->getId()Ljava/lang/String;

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

.method public getFillColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/bc;->h:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/bc;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    const-string v1, "Polygon"

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/bc;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bc;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/bc;->j:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/bc;->i:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/bc;->g:F

    return v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/bc;->d:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/bc;->e:Z

    return v0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-virtual {p0}, Lcom/amap/api/col/bc;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setFillColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/bc;->h:I

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/amap/api/col/bc;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/bc;->j:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/bc;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStrokeColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/bc;->i:I

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/bc;->g:F

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/bc;->e:Z

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/bc;->d:F

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->e()V

    iget-object v0, p0, Lcom/amap/api/col/bc;->c:Lcom/amap/api/mapcore/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->setRunLowFrame(Z)V

    return-void
.end method
