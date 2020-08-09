.class public Lcom/car/systemfunc/ImageViewIcon;
.super Landroid/widget/TextView;
.source "ImageViewIcon.java"


# static fields
.field private static final YOFF:I = 0x14

.field private static final mPaint:Landroid/graphics/Paint;


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mShadow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/car/systemfunc/ImageViewIcon;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/systemfunc/ImageViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/systemfunc/ImageViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/car/systemfunc/ImageViewIcon;->mShadow:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/systemfunc/ImageViewIcon;->mIcon:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/car/systemfunc/ImageViewIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/ImageViewIcon;->setLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/ImageViewIcon;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/car/systemfunc/ImageViewIcon;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/car/systemfunc/ImageViewIcon;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/car/systemfunc/ImageViewIcon;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/car/systemfunc/ImageViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {p0}, Lcom/car/systemfunc/ImageViewIcon;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/car/systemfunc/ImageViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    sub-float v2, v1, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    sub-float/2addr v1, v5

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/car/systemfunc/ImageViewIcon;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/car/systemfunc/ImageViewIcon;->mIcon:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/car/systemfunc/ImageViewIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/ImageViewIcon;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setXY(II)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/car/systemfunc/ImageViewIcon;->setXY(III)V

    return-void
.end method

.method public setXY(III)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_2

    if-ne p3, v2, :cond_0

    invoke-virtual {p0, v4, p2, v4, v4}, Lcom/car/systemfunc/ImageViewIcon;->setPadding(IIII)V

    invoke-virtual {p0, v5}, Lcom/car/systemfunc/ImageViewIcon;->setGravity(I)V

    :goto_0
    iput-boolean v4, p0, Lcom/car/systemfunc/ImageViewIcon;->mShadow:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/car/systemfunc/ImageViewIcon;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/car/systemfunc/ImageViewIcon;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/4 v0, 0x0

    int-to-float v2, p3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    float-to-int v2, v1

    sub-int v2, p3, v2

    div-int/lit8 v0, v2, 0x2

    :goto_1
    invoke-virtual {p0, v0, p2, v4, v4}, Lcom/car/systemfunc/ImageViewIcon;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/car/systemfunc/ImageViewIcon;->setGravity(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, v4, v4}, Lcom/car/systemfunc/ImageViewIcon;->setPadding(IIII)V

    goto :goto_0
.end method
