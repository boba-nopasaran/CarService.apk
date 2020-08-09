.class public Lcom/amap/api/col/dh;
.super Ljava/lang/Object;
.source "NaviCarOverlay.java"


# instance fields
.field private a:Z

.field private b:Lcom/autonavi/amap/mapcore/IPoint;

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:F

.field private h:Z

.field private i:Ljava/util/Timer;

.field private j:F

.field private k:I

.field private l:Lcom/amap/api/col/cy;

.field private m:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private n:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private o:Lcom/amap/api/maps/model/Marker;

.field private p:Lcom/amap/api/maps/model/Marker;

.field private q:Lcom/amap/api/maps/model/Marker;

.field private r:Lcom/amap/api/maps/AMap;

.field private s:Lcom/amap/api/maps/MapView;

.field private t:Z

.field private u:Lcom/amap/api/maps/model/LatLng;

.field private v:Lcom/amap/api/maps/model/Polyline;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/MapView;Lcom/amap/api/col/cy;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/amap/api/col/dh;->a:Z

    iput-object v1, p0, Lcom/amap/api/col/dh;->b:Lcom/autonavi/amap/mapcore/IPoint;

    iput v2, p0, Lcom/amap/api/col/dh;->g:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/dh;->h:Z

    iput v2, p0, Lcom/amap/api/col/dh;->j:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/dh;->k:I

    iput-object v1, p0, Lcom/amap/api/col/dh;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/col/dh;->n:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    iput-boolean v3, p0, Lcom/amap/api/col/dh;->t:Z

    iput-object v1, p0, Lcom/amap/api/col/dh;->u:Lcom/amap/api/maps/model/LatLng;

    iput-object v1, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/dh;->w:Ljava/util/List;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dh;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020057

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dh;->n:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object p1, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    iput-object p2, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/dh;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/dh;->h()V

    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/IPoint;F)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    if-nez v3, :cond_2

    :cond_1
    move-object v0, p1

    :cond_2
    iput v2, p0, Lcom/amap/api/col/dh;->f:I

    iput-object v0, p0, Lcom/amap/api/col/dh;->b:Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x14

    iput v3, p0, Lcom/amap/api/col/dh;->c:I

    iget v3, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/amap/api/col/dh;->d:I

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getRotateAngle()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/dh;->g:F

    iget v0, p0, Lcom/amap/api/col/dh;->g:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/amap/api/col/dh;->g:F

    sub-float v2, p2, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_2
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    sub-float/2addr v0, v5

    :cond_3
    :goto_3
    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/dh;->e:F

    iput-boolean v1, p0, Lcom/amap/api/col/dh;->h:Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/amap/api/col/dh;->g:F

    sub-float v0, v5, v0

    iput v0, p0, Lcom/amap/api/col/dh;->g:F

    move v0, v2

    goto :goto_1

    :cond_5
    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    add-float/2addr v0, v5

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private g()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/dh;->i:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/dh;->i:Ljava/util/Timer;

    iget-object v0, p0, Lcom/amap/api/col/dh;->i:Ljava/util/Timer;

    new-instance v1, Lcom/amap/api/col/dh$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/dh$1;-><init>(Lcom/amap/api/col/dh;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x43b40000    # 360.0f

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->h:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/dh;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amap/api/col/dh;->f:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/dh;->b:Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v2, p0, Lcom/amap/api/col/dh;->c:I

    iget v3, p0, Lcom/amap/api/col/dh;->f:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/col/dh;->b:Lcom/autonavi/amap/mapcore/IPoint;

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget v3, p0, Lcom/amap/api/col/dh;->d:I

    iget v4, p0, Lcom/amap/api/col/dh;->f:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/amap/api/col/dh;->g:F

    iget v4, p0, Lcom/amap/api/col/dh;->e:F

    iget v5, p0, Lcom/amap/api/col/dh;->f:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/amap/api/col/dh;->j:F

    iget v3, p0, Lcom/amap/api/col/dh;->j:F

    rem-float/2addr v3, v6

    iput v3, p0, Lcom/amap/api/col/dh;->j:F

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    :cond_3
    iget-boolean v1, p0, Lcom/amap/api/col/dh;->a:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getNaviMode()I

    move-result v1

    if-ne v1, v7, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->changeBearingGeoCenter(FLcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v1, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getAnchorX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v2}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v4}, Lcom/amap/api/col/cy;->getAnchorY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v3, v1, v2}, Lcom/amap/api/maps/model/Marker;->setPositionByPixels(II)V

    iget-object v3, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    iget v4, p0, Lcom/amap/api/col/dh;->j:F

    sub-float v4, v6, v4

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    iget-object v3, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    iget-object v3, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v3, v1, v2}, Lcom/amap/api/maps/model/Marker;->setPositionByPixels(II)V

    iget-boolean v1, p0, Lcom/amap/api/col/dh;->t:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    iget v2, p0, Lcom/amap/api/col/dh;->j:F

    sub-float v2, v6, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/amap/api/col/dh;->a(Lcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "NaviCarOverlay"

    const-string v2, "drawLeaderLine(IPoint nowPoint"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    iget v2, p0, Lcom/amap/api/col/dh;->j:F

    invoke-static {v2, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->changeBearingGeoCenter(FLcom/autonavi/amap/mapcore/IPoint;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v1, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getAnchorX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v2}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v4}, Lcom/amap/api/col/cy;->getAnchorY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v3, v1, v2}, Lcom/amap/api/maps/model/Marker;->setPositionByPixels(II)V

    iget-object v3, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    iget-object v3, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    iget-object v3, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v3, v1, v2}, Lcom/amap/api/maps/model/Marker;->setPositionByPixels(II)V

    iget-boolean v1, p0, Lcom/amap/api/col/dh;->t:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v1, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    iget-object v1, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    iget v2, p0, Lcom/amap/api/col/dh;->j:F

    sub-float v2, v6, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    iget-object v1, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v2}, Lcom/amap/api/col/cy;->getLockZoom()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    iget-object v1, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    const/high16 v1, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/amap/api/col/dh;->j:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    :cond_0
    iput p1, p0, Lcom/amap/api/col/dh;->k:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/dh;->x:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dh;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-void
.end method

.method public a(Lcom/amap/api/maps/AMap;Lcom/amap/api/maps/model/LatLng;F)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, v2, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_3

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, v2, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p3}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_4

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, v2, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/MarkerOptions;->setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->n:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->t:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    new-instance v0, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amap/api/col/dv;->a(DDI)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/amap/api/col/dh;->a(Lcom/autonavi/amap/mapcore/IPoint;F)V

    invoke-direct {p0}, Lcom/amap/api/col/dh;->g()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto :goto_1
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/dh;->u:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method a(Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 7

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/dh;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/dh;->u:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    iget v0, p1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    int-to-long v0, v0

    iget v2, p1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    int-to-long v2, v2

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amap/api/col/dv;->a(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/dh;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/dh;->w:Ljava/util/List;

    iget-object v2, p0, Lcom/amap/api/col/dh;->u:Lcom/amap/api/maps/model/LatLng;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/dh;->u:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/dh;->k:I

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "NaviCarOverlay"

    const-string v2, "drawLeaderLine(IPoint nowPoint"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    iget-object v1, p0, Lcom/amap/api/col/dh;->w:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/dh;->a:Z

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getNaviMode()I

    move-result v0

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getLockZoom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v2}, Lcom/amap/api/col/cy;->getAnchorX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getAnchorY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/maps/model/Marker;->setPositionByPixels(II)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    const/high16 v1, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/amap/api/col/dh;->j:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v7}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/dh;->j:F

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getLockTilt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getLockZoom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v2}, Lcom/amap/api/col/cy;->getAnchorX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getAnchorY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/maps/model/Marker;->setPositionByPixels(II)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->t:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v7}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v7}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getGeoPoint()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setGeoPoint(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getRotateAngle()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v2}, Lcom/amap/api/col/cy;->getLockZoom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v3}, Lcom/amap/api/col/cy;->getLockTilt()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/amap/api/col/dh;->j:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    iget-object v1, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/dh;->y:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/dh;->n:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    :cond_3
    iput-object v1, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    iput-object v1, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    iput-object v1, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    iput-object v1, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/dh;->m:Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v0, p0, Lcom/amap/api/col/dh;->i:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/dh;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dh;->v:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v2}, Lcom/amap/api/col/cy;->getAnchorX()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/amap/api/col/dh;->s:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/amap/api/col/dh;->l:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getAnchorY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-boolean v2, p0, Lcom/amap/api/col/dh;->a:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/dh;->p:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/col/dh;->j:F

    invoke-static {v3}, Lcom/amap/api/maps/CameraUpdateFactory;->changeBearing(F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    invoke-virtual {v4, v3}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    invoke-static {v2}, Lcom/amap/api/maps/CameraUpdateFactory;->changeLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/dh;->r:Lcom/amap/api/maps/AMap;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v2, p0, Lcom/amap/api/col/dh;->o:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/maps/model/Marker;->setPositionByPixels(II)V

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/maps/model/Marker;->setPositionByPixels(II)V

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->t:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/col/dh;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/dh;->q:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto :goto_0
.end method
