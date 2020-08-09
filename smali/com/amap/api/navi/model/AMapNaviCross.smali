.class public Lcom/amap/api/navi/model/AMapNaviCross;
.super Ljava/lang/Object;
.source "AMapNaviCross.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPicFormat:I

.field private picBuf1:[B

.field private picBuf2:[B

.field private type:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 3

    const/16 v1, 0x190

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->type:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->mPicFormat:I

    array-length v0, p4

    if-eqz v0, :cond_0

    if-lt p2, v1, :cond_1

    if-lt p3, v1, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v1, p4

    invoke-static {p4, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p4

    invoke-static {p4, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public constructor <init>(I[B[B)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->type:I

    iput-object p2, p0, Lcom/amap/api/navi/model/AMapNaviCross;->picBuf1:[B

    iput-object p3, p0, Lcom/amap/api/navi/model/AMapNaviCross;->picBuf2:[B

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviCross;->mPicFormat:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p2

    invoke-static {p2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/navi/model/AMapNaviCross;->eraseArrayBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private eraseArrayBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    mul-int v0, v3, v7

    new-array v9, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p2

    move v11, v3

    move v14, v3

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget v4, v1, v0

    const v5, -0xff01

    if-ne v4, v5, :cond_2

    aget v4, v9, v0

    aput v4, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->mPicFormat:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->type:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPicBuf1()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->picBuf1:[B

    return-object v0
.end method

.method public getPicBuf2()[B
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->picBuf2:[B

    return-object v0
.end method

.method public getPicFormat()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->mPicFormat:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviCross;->type:I

    return v0
.end method
