.class Lcom/amap/api/mapcore/h$c;
.super Ljava/lang/Object;
.source "GLMapGestureDetector.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector$OnMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/h;

.field private final b:F

.field private final c:F

.field private d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/h;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/h$c;->b:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/amap/api/mapcore/h$c;->c:F

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/h;Lcom/amap/api/mapcore/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/h$c;-><init>(Lcom/amap/api/mapcore/h;)V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)Z
    .locals 7

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/h;->i(Lcom/amap/api/mapcore/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->g()Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/n;->isScrollGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GLMapGestrureDetector"

    const-string v3, "onMove"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v3, 0x3

    iput v3, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v3, v4, [F

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v1

    iput-object v3, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    iget-object v3, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v3}, Lcom/amap/api/mapcore/k;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v3

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getFocusDelta()Landroid/graphics/PointF;

    move-result-object v4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    invoke-static {v5}, Lcom/amap/api/mapcore/h;->j(Lcom/amap/api/mapcore/h;)I

    move-result v5

    if-nez v5, :cond_2

    const/high16 v0, 0x40800000    # 4.0f

    :cond_2
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v0

    if-gtz v5, :cond_3

    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v5, v0

    if-lez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/h;->j(Lcom/amap/api/mapcore/h;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->a()Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    new-instance v2, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    const/16 v5, 0x65

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v5, v6, v4}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;-><init>(IFF)V

    invoke-interface {v0, v3, v2}, Lcom/amap/api/mapcore/k;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    invoke-static {v0}, Lcom/amap/api/mapcore/h;->k(Lcom/amap/api/mapcore/h;)I

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method public onMoveBegin(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->g()Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/n;->isScrollGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string v1, "GLMapGestrureDetector"

    const-string v2, "onMoveBegin"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v4, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v4

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    iget-object v1, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    new-instance v2, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    const/16 v3, 0x64

    invoke-direct {v2, v3, v5, v5}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;-><init>(IFF)V

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/k;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    goto :goto_0
.end method

.method public onMoveEnd(Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;)V
    .locals 5

    const/4 v1, 0x3

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->g()Lcom/amap/api/mapcore/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/n;->isScrollGesturesEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLMapGestrureDetector"

    const-string v2, "onMoveEnd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/gesture/MoveGestureDetector;->getEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v1, v2

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v0, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v0, v0, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    iget-object v1, p0, Lcom/amap/api/mapcore/h$c;->d:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    invoke-static {v1}, Lcom/amap/api/mapcore/h;->j(Lcom/amap/api/mapcore/h;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    const/4 v2, 0x5

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/k;->a(II)V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/h$c;->a:Lcom/amap/api/mapcore/h;

    iget-object v1, v1, Lcom/amap/api/mapcore/h;->a:Lcom/amap/api/mapcore/k;

    new-instance v2, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v4, v4}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;-><init>(IFF)V

    invoke-interface {v1, v0, v2}, Lcom/amap/api/mapcore/k;->a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V

    goto :goto_0
.end method
