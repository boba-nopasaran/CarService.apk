.class public Lcom/car/systemfunc/CircleProgressBar;
.super Landroid/widget/TextView;
.source "CircleProgressBar.java"


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field private final DP2PX:F

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private style:I

.field private textIsDisplayable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/systemfunc/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/systemfunc/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/car/systemfunc/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/car/systemfunc/CircleProgressBar;->DP2PX:F

    const/16 v0, -0x6000

    iput v0, p0, Lcom/car/systemfunc/CircleProgressBar;->roundColor:I

    const v0, -0xcfcfd0

    iput v0, p0, Lcom/car/systemfunc/CircleProgressBar;->roundProgressColor:I

    const/high16 v0, 0x41000000    # 8.0f

    iget v1, p0, Lcom/car/systemfunc/CircleProgressBar;->DP2PX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/car/systemfunc/CircleProgressBar;->roundWidth:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/car/systemfunc/CircleProgressBar;->max:I

    iput v2, p0, Lcom/car/systemfunc/CircleProgressBar;->progress:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/systemfunc/CircleProgressBar;->textIsDisplayable:Z

    iput v2, p0, Lcom/car/systemfunc/CircleProgressBar;->style:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->max:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->roundWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/car/systemfunc/CircleProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    int-to-float v0, v6

    iget v5, p0, Lcom/car/systemfunc/CircleProgressBar;->roundWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v0, v5

    float-to-int v7, v0

    iget-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/car/systemfunc/CircleProgressBar;->roundColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/car/systemfunc/CircleProgressBar;->roundWidth:F

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v0, v6

    int-to-float v5, v6

    int-to-float v8, v7

    iget-object v9, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/car/systemfunc/CircleProgressBar;->roundWidth:F

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/car/systemfunc/CircleProgressBar;->roundProgressColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v6, v7

    int-to-float v0, v0

    sub-int v5, v6, v7

    int-to-float v5, v5

    add-int v8, v6, v7

    int-to-float v8, v8

    add-int v9, v6, v7

    int-to-float v9, v9

    invoke-direct {v1, v0, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43870000    # 270.0f

    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v5, p0, Lcom/car/systemfunc/CircleProgressBar;->max:I

    div-int/2addr v0, v5

    int-to-float v3, v0

    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->style:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->progress:I

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/car/systemfunc/CircleProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCricleColor(I)V
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/CircleProgressBar;->roundColor:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/CircleProgressBar;->roundProgressColor:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/car/systemfunc/CircleProgressBar;->max:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/car/systemfunc/CircleProgressBar;->setText(Ljava/lang/CharSequence;)V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->max:I

    if-le p1, v0, :cond_1

    iget p1, p0, Lcom/car/systemfunc/CircleProgressBar;->max:I

    :cond_1
    iget v0, p0, Lcom/car/systemfunc/CircleProgressBar;->max:I

    if-gt p1, v0, :cond_2

    iput p1, p0, Lcom/car/systemfunc/CircleProgressBar;->progress:I

    invoke-virtual {p0}, Lcom/car/systemfunc/CircleProgressBar;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/CircleProgressBar;->roundWidth:F

    return-void
.end method
