.class public Lcom/car/voice/ui/VolumeView;
.super Landroid/view/View;
.source "VolumeView.java"


# static fields
.field private static final MSG_REFRESH_VOICE:I = 0x1

.field private static final SPEED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSvc_VolumeView"


# instance fields
.field private mBitmapRecorder:Landroid/graphics/Bitmap;

.field private mCurrentFillRadius:I

.field private mCurrentStrokeRadius:I

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mPaint:Landroid/graphics/Paint;

.field private mProcess:Z

.field private mProcessAngle:I

.field private mRadius:I

.field private mSpeeching:Z

.field mWideScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput-boolean v1, p0, Lcom/car/voice/ui/VolumeView;->mProcess:Z

    iput v1, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    iput-boolean v1, p0, Lcom/car/voice/ui/VolumeView;->mWideScreen:Z

    new-instance v0, Lcom/car/voice/ui/VolumeView$1;

    invoke-direct {v0, p0}, Lcom/car/voice/ui/VolumeView$1;-><init>(Lcom/car/voice/ui/VolumeView;)V

    iput-object v0, p0, Lcom/car/voice/ui/VolumeView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/car/voice/ui/VolumeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput-boolean v1, p0, Lcom/car/voice/ui/VolumeView;->mProcess:Z

    iput v1, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    iput-boolean v1, p0, Lcom/car/voice/ui/VolumeView;->mWideScreen:Z

    new-instance v0, Lcom/car/voice/ui/VolumeView$1;

    invoke-direct {v0, p0}, Lcom/car/voice/ui/VolumeView$1;-><init>(Lcom/car/voice/ui/VolumeView;)V

    iput-object v0, p0, Lcom/car/voice/ui/VolumeView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/car/voice/ui/VolumeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput-boolean v1, p0, Lcom/car/voice/ui/VolumeView;->mProcess:Z

    iput v1, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    iput-boolean v1, p0, Lcom/car/voice/ui/VolumeView;->mWideScreen:Z

    new-instance v0, Lcom/car/voice/ui/VolumeView$1;

    invoke-direct {v0, p0}, Lcom/car/voice/ui/VolumeView$1;-><init>(Lcom/car/voice/ui/VolumeView;)V

    iput-object v0, p0, Lcom/car/voice/ui/VolumeView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/car/voice/ui/VolumeView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020020

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/voice/ui/VolumeView;->mBitmapRecorder:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mBitmapRecorder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->getHeight()I

    move-result v8

    div-int/lit8 v7, v9, 0x2

    iget-boolean v0, p0, Lcom/car/voice/ui/VolumeView;->mWideScreen:Z

    if-eqz v0, :cond_2

    int-to-float v0, v8

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    float-to-int v6, v0

    :goto_0
    iget-boolean v0, p0, Lcom/car/voice/ui/VolumeView;->mSpeeching:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020021

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    sub-int v0, v7, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    sub-int v2, v6, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    sub-int v0, v7, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    sub-int v2, v6, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    div-int/lit8 v2, v9, 0x2

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    :cond_1
    return-void

    :cond_2
    int-to-float v0, v8

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    float-to-int v6, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020020

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/car/voice/ui/VolumeView;->mProcess:Z

    if-eqz v0, :cond_4

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    sub-int v0, v7, v0

    add-int/lit8 v0, v0, -0x5

    int-to-float v0, v0

    iget v2, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    sub-int v2, v6, v2

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    iget v3, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iget v4, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    int-to-float v2, v0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    int-to-float v2, v0

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/car/voice/ui/VolumeView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    const/16 v2, 0x168

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mProcessAngle:I

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/car/voice/ui/VolumeView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VolumeView;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public setProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/voice/ui/VolumeView;->mProcess:Z

    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->postInvalidate()V

    return-void
.end method

.method public setSpeeching(Z)V
    .locals 1

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentStrokeRadius:I

    iget v0, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput v0, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    iput-boolean p1, p0, Lcom/car/voice/ui/VolumeView;->mSpeeching:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/voice/ui/VolumeView;->mProcess:Z

    :cond_0
    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->postInvalidate()V

    return-void
.end method

.method public setVolume(I)V
    .locals 6

    if-ltz p1, :cond_1

    const/16 v1, 0x1e

    if-gt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    iget v1, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    rsub-int/lit8 v1, v1, 0x64

    int-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x403f000000000000L    # 31.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    iget v1, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v0, v2

    iget v1, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    iget v1, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    iget v2, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/car/voice/ui/VolumeView;->mRadius:I

    iput v1, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/car/voice/ui/VolumeView;->postInvalidate()V

    :cond_1
    return-void

    :cond_2
    float-to-int v1, v0

    iput v1, p0, Lcom/car/voice/ui/VolumeView;->mCurrentFillRadius:I

    goto :goto_0
.end method

.method public setWideScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/voice/ui/VolumeView;->mWideScreen:Z

    return-void
.end method
