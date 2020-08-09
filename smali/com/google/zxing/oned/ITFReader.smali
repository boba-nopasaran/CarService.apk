.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.5f

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3

.field private static final w:I = 0x2


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    const/16 v0, 0x14

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const v1, 0x3ec28f5c    # 0.38f

    const/4 v0, -0x1

    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v3, v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    sget-object v6, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v4, v6, v2

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {p0, v4, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_1

    move v1, v5

    move v0, v2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v6, v5, v1

    if-nez v6, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    if-ltz v0, :cond_3

    rem-int/lit8 v6, v0, 0xa

    return v6

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    :try_start_2
    aget v3, v0, v3

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    const/4 v3, 0x0

    aget v2, v0, v3

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v5, v0, v5

    sub-int/2addr v4, v5

    aput v4, v0, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    sub-int/2addr v4, v2

    aput v4, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    return-object v0

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {p1, v1, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v3
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v9, 0xa

    const/4 v8, 0x5

    new-array v3, v9, [I

    new-array v1, v8, [I

    new-array v4, v8, [I

    :cond_0
    if-ge p1, p2, :cond_2

    invoke-static {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_1

    mul-int/lit8 v6, v5, 0x2

    aget v7, v3, v6

    aput v7, v1, v5

    add-int/lit8 v7, v6, 0x1

    aget v7, v3, v7

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v0

    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_0

    aget v2, v3, v7

    add-int/2addr p1, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    sget-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v2}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v1, v2

    aget v3, v1, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    aget v2, v1, v4

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    array-length v3, p2

    new-array v1, v3, [I

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, p1

    move v6, p1

    :goto_0
    if-ge v6, v5, :cond_4

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v2, :cond_0

    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v9, v3, -0x1

    if-ne v0, v9, :cond_2

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v9

    const v10, 0x3ec28f5c    # 0.38f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    new-array v9, v11, [I

    aput v4, v9, v8

    aput v6, v9, v7

    return-object v9

    :cond_1
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    add-int/lit8 v9, v0, -0x1

    invoke-static {v1, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v0, -0x1

    aput v8, v1, v9

    aput v8, v1, v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    aput v7, v1, v0

    if-nez v2, :cond_3

    move v2, v7

    :goto_3
    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v2, v8

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_0
    return v0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v1, v2, 0xa

    if-ge v1, p2, :cond_0

    :goto_0
    add-int/lit8 v0, p2, -0x1

    :goto_1
    if-lez v1, :cond_1

    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    move v1, p2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    :cond_2
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v11, 0x1

    aget v11, v10, v11

    const/4 v12, 0x0

    aget v12, v4, v12

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12, v8}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    sget-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v3, v11

    check-cast v3, [I

    :cond_0
    if-nez v3, :cond_1

    sget-object v3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v12, v3

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_2

    aget v2, v3, v11

    if-ne v5, v2, :cond_4

    const/4 v6, 0x1

    :cond_2
    if-nez v6, :cond_3

    if-le v5, v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-nez v6, :cond_6

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11

    :cond_4
    if-le v2, v7, :cond_5

    move v7, v2

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    new-instance v11, Lcom/google/zxing/Result;

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/google/zxing/ResultPoint;

    const/4 v14, 0x0

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x1

    aget v16, v10, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Lcom/google/zxing/ResultPoint;

    const/16 v16, 0x0

    aget v16, v4, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    sget-object v14, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v11, v9, v12, v13, v14}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v11
.end method
