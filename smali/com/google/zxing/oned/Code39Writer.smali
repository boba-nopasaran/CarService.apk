.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
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

    move v2, v3

    :goto_1
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x40

    const/16 v8, 0x20

    const/16 v7, 0x3a

    const/16 v6, 0x2f

    const/16 v5, 0x25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_b

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    if-lez v0, :cond_0

    const/16 v4, 0x1b

    if-ge v0, v4, :cond_0

    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    const-string v4, "%U"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v4, "%V"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v4, "%W"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v4, 0x1a

    if-le v0, v4, :cond_1

    if-ge v0, v8, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1b

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-le v0, v8, :cond_2

    const/16 v4, 0x2d

    if-lt v0, v4, :cond_3

    :cond_2
    if-eq v0, v6, :cond_3

    if-ne v0, v7, :cond_4

    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x21

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-le v0, v6, :cond_5

    if-ge v0, v7, :cond_5

    add-int/lit8 v4, v0, -0x30

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-le v0, v7, :cond_6

    if-ge v0, v9, :cond_6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x3b

    add-int/lit8 v4, v4, 0x46

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-le v0, v9, :cond_7

    const/16 v4, 0x5b

    if-ge v0, v4, :cond_7

    add-int/lit8 v4, v0, -0x41

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v4, 0x5a

    if-le v0, v4, :cond_8

    const/16 v4, 0x60

    if-ge v0, v4, :cond_8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x5b

    add-int/lit8 v4, v4, 0x4b

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 v4, 0x60

    if-le v0, v4, :cond_9

    const/16 v4, 0x7b

    if-ge v0, v4, :cond_9

    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x7a

    if-le v0, v4, :cond_a

    const/16 v4, 0x80

    if-ge v0, v4, :cond_a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x7b

    add-int/lit8 v4, v4, 0x50

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Requested content contains a non-encodable character: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_1
        0x40 -> :sswitch_2
        0x60 -> :sswitch_3
    .end sparse-switch
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

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_39, but got "

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

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v9, 0x50

    if-le v3, v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_1

    invoke-static {p1}, Lcom/google/zxing/oned/Code39Writer;->tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v9, 0x50

    if-le v3, v9, :cond_2

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (extended full ASCII mode)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v9, 0x9

    new-array v8, v9, [I

    add-int/lit8 v0, v3, 0x19

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v2

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x9

    if-ge v9, v10, :cond_3

    aget v7, v8, v9

    add-int/2addr v0, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-array v6, v0, [Z

    const/16 v9, 0x94

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v6, v9, v8, v10}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v5

    const/4 v9, 0x1

    new-array v4, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v4, v9

    const/4 v9, 0x0

    invoke-static {v6, v5, v4, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_5

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v9, v2

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v9, 0x1

    invoke-static {v6, v5, v8, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    const/4 v9, 0x0

    invoke-static {v6, v5, v4, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/16 v9, 0x94

    invoke-static {v9, v8}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v9, 0x1

    invoke-static {v6, v5, v8, v9}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    return-object v6
.end method
