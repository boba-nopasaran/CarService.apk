.class public Lcom/amap/api/mapcore/h;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/h$e;,
        Lcom/amap/api/mapcore/h$b;,
        Lcom/amap/api/mapcore/h$c;,
        Lcom/amap/api/mapcore/h$d;,
        Lcom/amap/api/mapcore/h$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/k;

.field b:Landroid/content/Context;

.field c:Landroid/view/GestureDetector;

.field public d:Lcom/amap/api/maps/model/AMapGestureListener;

.field private e:Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

.field private f:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

.field private g:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

.field private h:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/k;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/mapcore/h;->i:Z

    iput v0, p0, Lcom/amap/api/mapcore/h;->j:I

    iput v0, p0, Lcom/amap/api/mapcore/h;->k:I

    iput v0, p0, Lcom/amap/api/mapcore/h;->l:I

    iput v0, p0, Lcom/amap/api/mapcore/h;->m:I

    iput v0, p0, Lcom/amap/api/mapcore/h;->n:I

    iput-boolean v0, p0, Lcom/amap/api/mapcore/h;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/h;->p:Z

    invoke-interface {p1}, Lcom/amap/api/mapcore/k;->s()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/h;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    new-instance v0, Lcom/amap/api/mapcore/h$a;

    invoke-direct {v0, p0, v3}, Lcom/amap/api/mapcore/h$a;-><init>(Lcom/amap/api/mapcore/h;Lcom/amap/api/mapcore/h$1;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/amap/api/mapcore/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/h;->c:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/h;->c:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/h$d;

    invoke-direct {v2, p0, v3}, Lcom/amap/api/mapcore/h$d;-><init>(Lcom/amap/api/mapcore/h;Lcom/amap/api/mapcore/h$1;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector$SimpleOnScaleRotateGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/h;->e:Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/h$c;

    invoke-direct {v2, p0, v3}, Lcom/amap/api/mapcore/h$c;-><init>(Lcom/amap/api/mapcore/h;Lcom/amap/api/mapcore/h$1;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/h;->f:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/h$b;

    invoke-direct {v2, p0, v3}, Lcom/amap/api/mapcore/h$b;-><init>(Lcom/amap/api/mapcore/h;Lcom/amap/api/mapcore/h$1;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector$OnHoverGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/h;->g:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    iget-object v1, p0, Lcom/amap/api/mapcore/h;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/h$e;

    invoke-direct {v2, p0, v3}, Lcom/amap/api/mapcore/h$e;-><init>(Lcom/amap/api/mapcore/h;Lcom/amap/api/mapcore/h$1;)V

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;-><init>(Landroid/content/Context;Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector$OnZoomOutGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/h;->h:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/h;->m:I

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/h;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/h;->k:I

    return v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/h;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/h;->l:I

    return v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/h;->p:Z

    return p1
.end method

.method static synthetic d(Lcom/amap/api/mapcore/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/h;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/amap/api/mapcore/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/h;->n:I

    return v0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/h;->o:Z

    return v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/h;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/h;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/h;->k:I

    return v0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/h;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/h;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/h;->l:I

    return v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/h;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/h;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/h;->j:I

    return v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/h;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/h;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/h;->j:I

    return v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/h;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/h;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/h;->m:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/h;->j:I

    iput v0, p0, Lcom/amap/api/mapcore/h;->l:I

    iput v0, p0, Lcom/amap/api/mapcore/h;->k:I

    iput v0, p0, Lcom/amap/api/mapcore/h;->m:I

    iput v0, p0, Lcom/amap/api/mapcore/h;->n:I

    return-void
.end method

.method public a(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/amap/api/mapcore/h;->n:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/h;->n:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/h;->p:Z

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/h;->o:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/h;->n:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/mapcore/h;->o:Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/model/AMapGestureListener;->onDown(FF)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/h;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/h;->g:Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/HoverGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/h;->i:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/amap/api/mapcore/h;->m:I

    if-gtz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore/h;->h:Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;

    invoke-virtual {v2, p1}, Lcom/autonavi/ae/gmap/gesture/ZoomOutGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v2, p0, Lcom/amap/api/mapcore/h;->o:Z

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/h;->e:Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/ScaleRotateGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore/h;->f:Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_5
    :goto_1
    return v0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/h;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/amap/api/maps/model/AMapGestureListener;->onUp(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method
