.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final END_PATTERN:[I

.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.48f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    new-array v4, v10, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    new-array v4, v11, [I

    fill-array-data v4, :array_2

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    const/16 v4, 0xa

    new-array v4, v4, [[I

    new-array v5, v7, [I

    fill-array-data v5, :array_3

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_6

    aput-object v5, v4, v9

    new-array v5, v7, [I

    fill-array-data v5, :array_7

    aput-object v5, v4, v7

    new-array v5, v7, [I

    fill-array-data v5, :array_8

    aput-object v5, v4, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_9

    aput-object v5, v4, v11

    const/4 v5, 0x7

    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    const/16 v4, 0x14

    new-array v4, v4, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    const/16 v6, 0xa

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xa

    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v5, v0, -0xa

    aget-object v3, v4, v5

    array-length v4, v3

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    array-length v4, v3

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const v1, 0x3ef5c28f    # 0.48f

    const/4 v0, -0x1

    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p3, v2

    const v6, 0x3f333333    # 0.7f

    invoke-static {p1, v4, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    move v1, v5

    move v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    :goto_0
    const/4 v0, 0x0

    move v3, p1

    array-length v2, p3

    move v1, p2

    move v5, p1

    :goto_1
    if-ge v5, v4, :cond_5

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eq v8, v1, :cond_1

    aget v8, p4, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, p4, v0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p1

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v2, -0x1

    if-ne v0, v8, :cond_3

    const v8, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v8}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v8

    const v9, 0x3ef5c28f    # 0.48f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    new-array v8, v10, [I

    aput v3, v8, v7

    aput v5, v8, v6

    return-object v8

    :cond_2
    aget v8, p4, v7

    aget v9, p4, v6

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    add-int/lit8 v8, v0, -0x1

    invoke-static {p4, v10, p4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v0, -0x1

    aput v7, p4, v8

    aput v7, p4, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    aput v6, p4, v0

    if-nez v1, :cond_4

    move v1, v6

    :goto_4
    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v1, v7

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6
.end method

.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    new-array v0, v6, [I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    invoke-static {v0, v7, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p0, v2, v7, v6, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v5

    aget v4, v5, v7

    const/4 v6, 0x1

    aget v2, v5, v6

    sub-int v6, v2, v4

    sub-int v3, v4, v6

    if-ltz v3, :cond_0

    invoke-virtual {p0, v3, v4, v7}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method static getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v5, 0x9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v4, -0x30

    if-ltz v0, :cond_0

    if-le v0, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_1
    add-int/2addr v3, v0

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_2
    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v2, -0x2

    :goto_1
    if-ltz v1, :cond_5

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v4, -0x30

    if-ltz v0, :cond_3

    if-le v0, v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    :cond_4
    add-int/2addr v3, v0

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_5
    rsub-int v4, v3, 0x3e8

    rem-int/lit8 v4, v4, 0xa

    return v4
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-nez p4, :cond_4

    const/16 v17, 0x0

    :goto_0
    if-eqz v17, :cond_0

    new-instance v21, Lcom/google/zxing/ResultPoint;

    const/16 v22, 0x0

    aget v22, p3, v22

    const/16 v23, 0x1

    aget v23, p3, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v9

    if-eqz v17, :cond_1

    new-instance v21, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v9

    move/from16 v22, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v8

    if-eqz v17, :cond_2

    new-instance v21, Lcom/google/zxing/ResultPoint;

    const/16 v22, 0x0

    aget v22, v8, v22

    const/16 v23, 0x1

    aget v23, v8, v23

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_2
    const/16 v21, 0x1

    aget v7, v8, v21

    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v21, v7, v21

    add-int v15, v7, v21

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_3

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v7, v15, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v21

    if-nez v21, :cond_5

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    :cond_4
    sget-object v21, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/zxing/ResultPointCallback;

    move-object/from16 v17, v21

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v21

    throw v21

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v21

    throw v21

    :cond_7
    const/16 v21, 0x1

    aget v21, p3, v21

    const/16 v22, 0x0

    aget v22, p3, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v13, v21, v22

    const/16 v21, 0x1

    aget v21, v8, v21

    const/16 v22, 0x0

    aget v22, v8, v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v19, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v12

    new-instance v6, Lcom/google/zxing/Result;

    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v13, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    const/16 v23, 0x1

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v0, v1, v2, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v22, v8, v22

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object v11

    sget-object v21, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_1
    if-nez p4, :cond_9

    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_b

    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    aget v14, v4, v21

    if-ne v10, v14, :cond_a

    const/16 v20, 0x1

    :cond_8
    if-nez v20, :cond_b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v21

    throw v21

    :cond_9
    sget-object v21, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    check-cast v21, [I

    move-object/from16 v4, v21

    goto :goto_2

    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_b
    sget-object v21, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    if-eq v12, v0, :cond_c

    sget-object v21, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v21

    if-ne v12, v0, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    sget-object v21, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v5}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_d
    return-object v6

    :catch_0
    move-exception v21

    goto :goto_1
.end method

.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
