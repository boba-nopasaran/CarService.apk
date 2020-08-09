.class public Lcom/car/cloud/Type$GPSData;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPSData"
.end annotation


# instance fields
.field public altitude:I

.field public angle:I

.field public coordType:I

.field public latitude:D

.field public longitude:D

.field public speed:I

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final byteToInt(BBBBZ)I
    .locals 5

    const/high16 v4, 0xff0000

    const v3, 0xff00

    const/high16 v2, -0x1000000

    if-eqz p4, :cond_0

    shl-int/lit8 v1, p3, 0x18

    and-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x10

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x8

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v2, p0, 0x0

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    :goto_0
    return v0

    :cond_0
    shl-int/lit8 v1, p0, 0x18

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x10

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v2, p3, 0x0

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    goto :goto_0
.end method

.method public static parseGPSList([BZZZ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$GPSData;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/car/cloud/ZipUtil;->unZip([B)[B

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    array-length v12, v3

    if-eqz v12, :cond_0

    array-length v12, v3

    rem-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_2

    :cond_0
    const-string v12, "CarSvc_CloudType"

    const-string v13, "wrong GPS data, not enough data"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_1
    move-object/from16 v3, p0

    goto :goto_0

    :cond_2
    array-length v5, v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_8

    add-int/lit8 v12, v6, 0x4

    aget-byte v12, v3, v12

    add-int/lit8 v13, v6, 0x5

    aget-byte v13, v3, v13

    add-int/lit8 v14, v6, 0x6

    aget-byte v14, v3, v14

    add-int/lit8 v15, v6, 0x7

    aget-byte v15, v3, v15

    move/from16 v0, p2

    invoke-static {v12, v13, v14, v15, v0}, Lcom/car/cloud/Type$GPSData;->byteToInt(BBBBZ)I

    move-result v8

    add-int/lit8 v12, v6, 0x8

    aget-byte v12, v3, v12

    add-int/lit8 v13, v6, 0x9

    aget-byte v13, v3, v13

    add-int/lit8 v14, v6, 0xa

    aget-byte v14, v3, v14

    add-int/lit8 v15, v6, 0xb

    aget-byte v15, v3, v15

    move/from16 v0, p2

    invoke-static {v12, v13, v14, v15, v0}, Lcom/car/cloud/Type$GPSData;->byteToInt(BBBBZ)I

    move-result v9

    const/16 v12, -0x1770

    if-eq v8, v12, :cond_3

    const/16 v12, -0x1964

    if-ne v9, v12, :cond_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_3
    add-int/lit8 v6, v6, 0x10

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/car/cloud/Type$GPSData;

    invoke-direct {v2}, Lcom/car/cloud/Type$GPSData;-><init>()V

    add-int/lit8 v12, v6, 0x0

    aget-byte v12, v3, v12

    add-int/lit8 v13, v6, 0x1

    aget-byte v13, v3, v13

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, v3, v14

    add-int/lit8 v15, v6, 0x3

    aget-byte v15, v3, v15

    move/from16 v0, p2

    invoke-static {v12, v13, v14, v15, v0}, Lcom/car/cloud/Type$GPSData;->byteToInt(BBBBZ)I

    move-result v12

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->time:I

    int-to-double v12, v8

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    iput-wide v12, v2, Lcom/car/cloud/Type$GPSData;->latitude:D

    int-to-double v12, v9

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    iput-wide v12, v2, Lcom/car/cloud/Type$GPSData;->longitude:D

    add-int/lit8 v12, v6, 0xc

    aget-byte v12, v3, v12

    add-int/lit8 v13, v6, 0xd

    aget-byte v13, v3, v13

    add-int/lit8 v14, v6, 0xe

    aget-byte v14, v3, v14

    add-int/lit8 v15, v6, 0xf

    aget-byte v15, v3, v15

    move/from16 v0, p2

    invoke-static {v12, v13, v14, v15, v0}, Lcom/car/cloud/Type$GPSData;->byteToInt(BBBBZ)I

    move-result v4

    const/high16 v12, -0x40000000    # -2.0f

    and-int/2addr v12, v4

    const/high16 v13, -0x40000000    # -2.0f

    if-ne v12, v13, :cond_6

    sget v12, Lcom/car/cloud/Type;->COORD_TYPE_GPS:I

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->coordType:I

    shr-int/lit8 v12, v4, 0x10

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->altitude:I

    const v12, 0xffff

    and-int/2addr v12, v4

    ushr-int/lit8 v12, v12, 0x7

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->angle:I

    and-int/lit8 v12, v4, 0x7f

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->speed:I

    :goto_4
    if-eqz v11, :cond_7

    iget-wide v12, v11, Lcom/car/cloud/Type$GPSData;->latitude:D

    iget-wide v14, v2, Lcom/car/cloud/Type$GPSData;->latitude:D

    cmpl-double v12, v12, v14

    if-nez v12, :cond_7

    iget-wide v12, v11, Lcom/car/cloud/Type$GPSData;->longitude:D

    iget-wide v14, v2, Lcom/car/cloud/Type$GPSData;->longitude:D

    cmpl-double v12, v12, v14

    if-nez v12, :cond_7

    if-nez p3, :cond_5

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    move-object v11, v2

    goto :goto_3

    :cond_6
    ushr-int/lit8 v12, v4, 0x1e

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->coordType:I

    shl-int/lit8 v12, v4, 0x2

    and-int/lit8 v12, v12, -0x1

    shr-int/lit8 v12, v12, 0x12

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->altitude:I

    const v12, 0xffff

    and-int/2addr v12, v4

    ushr-int/lit8 v12, v12, 0x7

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->angle:I

    and-int/lit8 v12, v4, 0x7f

    iput v12, v2, Lcom/car/cloud/Type$GPSData;->speed:I

    goto :goto_4

    :cond_7
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const-string v12, "CarSvc_CloudType"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GPS list size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",ignore="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/car/cloud/Type$GPSData;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/car/cloud/Type$GPSData;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/car/cloud/Type$GPSData;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", altitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/car/cloud/Type$GPSData;->altitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", angle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/car/cloud/Type$GPSData;->angle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", speed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/car/cloud/Type$GPSData;->speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
