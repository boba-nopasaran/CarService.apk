.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    const/4 v11, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v2, v10, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    if-nez v10, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    mul-int/lit8 v9, v2, 0xc

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1, v9}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v0, 0x0

    const/4 v10, 0x0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v4

    const/16 v5, 0xb

    :goto_0
    if-ltz v5, :cond_2

    shl-int v10, v11, v5

    and-int/2addr v10, v4

    if-eqz v10, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    const/16 v6, 0xb

    :goto_2
    if-ltz v6, :cond_4

    shl-int v10, v11, v6

    and-int/2addr v10, v7

    if-eqz v10, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    const/16 v6, 0xb

    :goto_3
    if-ltz v6, :cond_6

    shl-int v10, v11, v6

    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    invoke-virtual {v1, v0}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method
