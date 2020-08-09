.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 8

    const/4 v5, 0x0

    move v0, p3

    const/4 v3, 0x0

    array-length v7, p2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget v2, p2, v6

    const/4 v1, 0x0

    move v4, p1

    :goto_1
    if-ge v1, v2, :cond_0

    add-int/lit8 p1, v4, 0x1

    aput-boolean v0, p0, v4

    add-int/lit8 v1, v1, 0x1

    move v4, p1

    goto :goto_1

    :cond_0
    add-int/2addr v3, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move p1, v4

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_2

    :cond_2
    return v3
.end method

.method private static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .locals 10

    array-length v1, p0

    add-int v0, v1, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v9, 0x1

    invoke-static {v9, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int v4, v7, v0

    mul-int v9, v1, v4

    sub-int v9, v7, v9

    div-int/lit8 v3, v9, 0x2

    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v7, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    move v8, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-boolean v9, p0, v2

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v4, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v8, v4

    goto :goto_0

    :cond_1
    return-object v5
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 4
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

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Found empty contents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-ltz p3, :cond_1

    if-gez p4, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative size is not allowed. Input: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result v0

    if-eqz p5, :cond_3

    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object v1

    invoke-static {v1, p3, p4, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
