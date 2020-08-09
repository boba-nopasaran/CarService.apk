.class public Lcom/hongfans/carmedia/processes/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v6, p0, Landroid/graphics/drawable/PictureDrawable;

    if-eqz v6, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/PictureDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/PictureDrawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/PictureDrawable;->getPicture()Landroid/graphics/Picture;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_2

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_3

    :goto_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2
.end method

.method public static getName(Landroid/content/Context;Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3}, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hongfans/carmedia/processes/AppNames;->getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    iget-object v3, p1, Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toPx(Landroid/content/Context;F)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, p1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method
