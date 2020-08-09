.class public Lcom/amap/api/navi/view/DriveWayView;
.super Landroid/widget/ImageView;
.source "DriveWayView.java"


# instance fields
.field private driveWayBackgroundId:[I

.field private driveWayBitMapBgs:[Landroid/graphics/Bitmap;

.field private driveWayBitMaps:[Landroid/graphics/Bitmap;

.field private driveWayForegroundId:[I

.field private driveWayHeight:I

.field private driveWaySize:I

.field private driveWayWidth:I

.field private height:I

.field private mAMapNaviView:Lcom/amap/api/navi/AMapNaviView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0xf

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayWidth:I

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayHeight:I

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBackgroundId:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayForegroundId:[I

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->mAMapNaviView:Lcom/amap/api/navi/AMapNaviView;

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    return-void

    :array_0
    .array-data 4
        0x4702002b
        0x4702002c
        0x4702002d
        0x4702002e
        0x4702002f
        0x47020030    # 33280.188f
        0x47020031
        0x47020032
        0x47020033
        0x47020034
        0x47020035
        0x47020036
        0x47020037
        0x47020038
        0x47020039
    .end array-data

    :array_1
    .array-data 4
        0x4702003a
        0x4702003b
        0x4702002d
        0x4702003e
        0x4702002f
        0x47020041
        0x47020031
        0x47020032
        0x47020047
        0x47020034
        0x47020035
        0x47020036
        0x47020037
        0x47020050    # 33280.312f
        0x47020039
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/16 v2, 0xf

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayWidth:I

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayHeight:I

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBackgroundId:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayForegroundId:[I

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->mAMapNaviView:Lcom/amap/api/navi/AMapNaviView;

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    return-void

    :array_0
    .array-data 4
        0x4702002b
        0x4702002c
        0x4702002d
        0x4702002e
        0x4702002f
        0x47020030    # 33280.188f
        0x47020031
        0x47020032
        0x47020033
        0x47020034
        0x47020035
        0x47020036
        0x47020037
        0x47020038
        0x47020039
    .end array-data

    :array_1
    .array-data 4
        0x4702003a
        0x4702003b
        0x4702002d
        0x4702003e
        0x4702002f
        0x47020041
        0x47020031
        0x47020032
        0x47020047
        0x47020034
        0x47020035
        0x47020036
        0x47020037
        0x47020050    # 33280.312f
        0x47020039
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/16 v2, 0xf

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayWidth:I

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayHeight:I

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBackgroundId:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayForegroundId:[I

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->mAMapNaviView:Lcom/amap/api/navi/AMapNaviView;

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    return-void

    :array_0
    .array-data 4
        0x4702002b
        0x4702002c
        0x4702002d
        0x4702002e
        0x4702002f
        0x47020030    # 33280.188f
        0x47020031
        0x47020032
        0x47020033
        0x47020034
        0x47020035
        0x47020036
        0x47020037
        0x47020038
        0x47020039
    .end array-data

    :array_1
    .array-data 4
        0x4702003a
        0x4702003b
        0x4702002d
        0x4702003e
        0x4702002f
        0x47020041
        0x47020031
        0x47020032
        0x47020047
        0x47020034
        0x47020035
        0x47020036
        0x47020037
        0x47020050    # 33280.312f
        0x47020039
    .end array-data
.end method

.method private complexBitmap(II)Landroid/graphics/Bitmap;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    if-nez p2, :cond_2

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702004a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBackgroundId:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    if-ne p2, v5, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702004b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    if-nez p2, :cond_4

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020048

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne p2, v4, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020049

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    if-nez p2, :cond_6

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702003c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702003d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    if-ne p1, v1, :cond_9

    if-nez p2, :cond_8

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702003f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-ne p2, v3, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020040    # 33280.25f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    if-ne p1, v1, :cond_b

    if-ne p2, v2, :cond_a

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020042

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    if-ne p2, v3, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020043

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x7

    if-ne p1, v1, :cond_e

    if-nez p2, :cond_c

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020044

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    if-ne p2, v2, :cond_d

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020045

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    if-ne p2, v3, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020046

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xb

    if-ne p1, v1, :cond_10

    if-ne p2, v4, :cond_f

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702004c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xc

    if-ne p1, v1, :cond_12

    if-ne p2, v5, :cond_11

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702004f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    if-ne p2, v3, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x4702004e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xe

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_13

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020051

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    if-ne p2, v4, :cond_0

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020052

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private isComplexLane(I)Z
    .locals 1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThisLaneRecommended(B)Z
    .locals 1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseDriveWaySize([B)I
    .locals 5

    const/4 v1, 0x0

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p1, v0

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getDriveWayBgHeight()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayHeight:I

    return v0
.end method

.method public getDriveWaySize()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    return v0
.end method

.method public getDriveWayWidth()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayWidth:I

    return v0
.end method

.method public loadDriveWayBitmap([B[B)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/amap/api/navi/view/DriveWayView;->parseDriveWaySize([B)I

    move-result v0

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBackgroundId:[I

    aget-byte v4, p1, v0

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/amap/api/navi/view/DriveWayView;->isComplexLane(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    invoke-direct {p0, v2, v3}, Lcom/amap/api/navi/view/DriveWayView;->complexBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-byte v1, p2, v0

    invoke-direct {p0, v1}, Lcom/amap/api/navi/view/DriveWayView;->isThisLaneRecommended(B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayForegroundId:[I

    aget-byte v4, p2, v0

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayWidth:I

    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayHeight:I

    :cond_4
    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayHeight:I

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->height:I

    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayWidth:I

    iget v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/navi/view/DriveWayView;->width:I

    invoke-virtual {p0}, Lcom/amap/api/navi/view/DriveWayView;->produceFinalBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/DriveWayView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    return-void
.end method

.method produceFinalBitmap()Landroid/graphics/Bitmap;
    .locals 7

    iget v0, p0, Lcom/amap/api/navi/view/DriveWayView;->width:I

    iget v1, p0, Lcom/amap/api/navi/view/DriveWayView;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayWidth:I

    mul-int/2addr v4, v0

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public recycleResource()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMaps:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayBitMapBgs:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWaySize:I

    return-void
.end method

.method public setAMapNaviView(Lcom/amap/api/navi/AMapNaviView;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/view/DriveWayView;->mAMapNaviView:Lcom/amap/api/navi/AMapNaviView;

    return-void
.end method

.method public setDefaultTopMargin(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/navi/view/DriveWayView;->mAMapNaviView:Lcom/amap/api/navi/AMapNaviView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->mAMapNaviView:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviView;->isOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/2addr v0, p1

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/navi/view/DriveWayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/DriveWayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/navi/view/DriveWayView;->mAMapNaviView:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviView;->isShowRoadEnlarge()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/amap/api/navi/view/DriveWayView;->driveWayHeight:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/2addr v0, p1

    move v1, v0

    goto :goto_1
.end method
