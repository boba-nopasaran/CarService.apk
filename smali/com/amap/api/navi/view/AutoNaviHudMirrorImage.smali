.class public Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;
.super Landroid/widget/RelativeLayout;
.source "AutoNaviHudMirrorImage.java"


# instance fields
.field private hudMirrorBitmap:Landroid/graphics/Bitmap;

.field private hudMirrorCanvas:Landroid/graphics/Canvas;

.field private hudMirrorMatrix:Landroid/graphics/Matrix;

.field private hudMirrorPaint:Landroid/graphics/Paint;

.field private mAMapHudView:Lcom/amap/api/navi/AMapHudView;

.field public mHeight:I

.field private mIsMirror:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mWidth:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mIsMirror:Z

    invoke-virtual {p0}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/high16 v3, -0x1000000

    iget-boolean v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mIsMirror:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mWidth:I

    iget v1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorPaint:Landroid/graphics/Paint;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorMatrix:Landroid/graphics/Matrix;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getMirrorState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mIsMirror:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mAMapHudView:Lcom/amap/api/navi/AMapHudView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mAMapHudView:Lcom/amap/api/navi/AMapHudView;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/AMapHudView;->onTouchHudMirrorEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AutoNaviHudMirrorImage"

    const-string v2, "onTouchEvent(MotionEvent event)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recycleMirrorBitmap()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorCanvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->hudMirrorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setAMapHudView(Lcom/amap/api/navi/AMapHudView;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mAMapHudView:Lcom/amap/api/navi/AMapHudView;

    return-void
.end method

.method public setMirrorState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mIsMirror:Z

    return-void
.end method
