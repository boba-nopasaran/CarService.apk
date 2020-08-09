.class public Lcom/google/zxing/oned/Code93Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code93Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static appendPattern([ZI[I)I
    .locals 6

    const/4 v3, 0x0

    array-length v5, p2

    move v4, v3

    move v1, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget v0, p2, v4

    add-int/lit8 p1, v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    aput-boolean v2, p0, v1

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, p1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x9

    return v2
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v0

    return v0
.end method

.method private static computeChecksumIndex(Ljava/lang/String;I)I
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    mul-int v4, v1, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    if-le v3, p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 v4, v2, 0x2f

    return v4
.end method

.method private static toIntArray(I[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    rsub-int/lit8 v2, v0, 0x8

    shl-int v2, v3, v2

    and-int v1, p0, v2

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_93, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 12

    const/16 v11, 0x2f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v9, 0x50

    if-le v5, v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/16 v9, 0x9

    new-array v8, v9, [I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x9

    add-int/lit8 v2, v9, 0x1

    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v11

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    new-array v7, v2, [Z

    const/4 v9, 0x0

    invoke-static {v7, v9, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v4

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    invoke-static {v7, v6, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v9, 0x14

    invoke-static {p1, v9}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v0

    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v0

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    invoke-static {v7, v6, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v9

    add-int/2addr v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xf

    invoke-static {v9, v10}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v1

    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v1

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    invoke-static {v7, v6, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v9

    add-int/2addr v6, v9

    sget-object v9, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v11

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    invoke-static {v7, v6, v8}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[I)I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aput-boolean v9, v7, v6

    return-object v7
.end method
