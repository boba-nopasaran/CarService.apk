.class public Lcom/car/httpserver/QRBitmapGenerator;
.super Ljava/lang/Object;
.source "QRBitmapGenerator.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final DEFAULT_QRCODE_WIDTH:I = 0x96

.field private static final TAG:Ljava/lang/String; = "QRBitmapGenarator"

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultQREncodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x96

    invoke-static {p0, v0, v0}, Lcom/car/httpserver/QRBitmapGenerator;->createQREncodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createQREncodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v2, p0

    if-nez v2, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Lcom/car/httpserver/QRBitmapGenerator;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    new-instance v6, Ljava/util/EnumMap;

    const-class v3, Lcom/car/zxing/EncodeHintType;

    invoke-direct {v6, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lcom/car/zxing/EncodeHintType;->CHARACTER_SET:Lcom/car/zxing/EncodeHintType;

    move-object/from16 v0, v16

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/car/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/car/zxing/MultiFormatWriter;-><init>()V

    const/16 v19, 0x0

    :try_start_0
    sget-object v3, Lcom/car/zxing/BarcodeFormat;->QR_CODE:Lcom/car/zxing/BarcodeFormat;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/car/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/car/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/car/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/car/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/car/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    invoke-virtual/range {v19 .. v19}, Lcom/car/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    mul-int v3, v10, v14

    new-array v8, v3, [I

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v0, v14, :cond_4

    mul-int v18, v21, v10

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v0, v10, :cond_3

    add-int v4, v18, v20

    invoke-virtual/range {v19 .. v21}, Lcom/car/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x1000000

    :goto_3
    aput v3, v8, v4

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :catch_0
    move-exception v17

    const-string v3, "QRBitmapGenarator"

    const-string v4, "createQREncodeBitmap"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_0

    :catch_1
    move-exception v15

    const-string v3, "QRBitmapGenarator"

    const-string v4, "createQREncodeBitmap"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    const-string v1, "UTF-8"

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
