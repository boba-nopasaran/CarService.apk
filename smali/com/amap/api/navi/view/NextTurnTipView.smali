.class public Lcom/amap/api/navi/view/NextTurnTipView;
.super Landroid/widget/ImageView;
.source "NextTurnTipView.java"


# instance fields
.field private customIconTypeDrawables:[I

.field private customRes:Landroid/content/res/Resources;

.field private defaultIconTypes:[I

.field private mLastIconType:J

.field private nextTurnBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->mLastIconType:J

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->defaultIconTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x47020004
        0x47020004
        0x47020076
        0x47020077
        0x47020078
        0x47020079
        0x4702007a
        0x4702007b
        0x4702007c
        0x4702007d
        0x4702006c
        0x4702006d
        0x4702006e
        0x4702006f
        0x47020070
        0x47020071
        0x47020072
        0x47020073
        0x47020074
        0x47020075
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->mLastIconType:J

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->defaultIconTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x47020004
        0x47020004
        0x47020076
        0x47020077
        0x47020078
        0x47020079
        0x4702007a
        0x4702007b
        0x4702007c
        0x4702007d
        0x4702006c
        0x4702006d
        0x4702006e
        0x4702006f
        0x47020070
        0x47020071
        0x47020072
        0x47020073
        0x47020074
        0x47020075
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->mLastIconType:J

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->defaultIconTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x47020004
        0x47020004
        0x47020076
        0x47020077
        0x47020078
        0x47020079
        0x4702007a
        0x4702007b
        0x4702007c
        0x4702007d
        0x4702006c
        0x4702006d
        0x4702006e
        0x4702006f
        0x47020070
        0x47020071
        0x47020072
        0x47020073
        0x47020074
        0x47020075
    .end array-data
.end method


# virtual methods
.method public getCustomIconTypeDrawables()[I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customIconTypeDrawables:[I

    return-object v0
.end method

.method public getCustomResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method public recycleResource()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->nextTurnBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->nextTurnBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->nextTurnBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setCustomIconTypes(Landroid/content/res/Resources;[I)V
    .locals 4

    iput-object p1, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customRes:Landroid/content/res/Resources;

    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customIconTypeDrawables:[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customIconTypeDrawables:[I

    add-int/lit8 v2, v0, 0x2

    aget v3, p2, v0

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconType(I)V
    .locals 4

    const/16 v0, 0x13

    if-gt p1, v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->mLastIconType:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/navi/view/NextTurnTipView;->recycleResource()V

    iget-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customIconTypeDrawables:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/amap/api/navi/view/NextTurnTipView;->customIconTypeDrawables:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->nextTurnBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->nextTurnBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/NextTurnTipView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->mLastIconType:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/navi/view/NextTurnTipView;->defaultIconTypes:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/NextTurnTipView;->nextTurnBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
