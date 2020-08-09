.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v12, 0xc

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-le v8, v12, :cond_3

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-le v3, v12, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_1
    add-int v10, v8, v3

    sub-int v6, v10, p2

    and-int/lit8 v11, v8, 0x1

    if-eqz p1, :cond_9

    move v10, v9

    :goto_2
    if-ne v11, v10, :cond_a

    move v7, v9

    :goto_3
    and-int/lit8 v10, v3, 0x1

    if-ne v10, v9, :cond_2

    move v2, v9

    :cond_2
    if-ne v6, v9, :cond_f

    if-eqz v7, :cond_d

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_3
    if-ge v8, v11, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    if-ge v3, v11, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/16 v10, 0xb

    if-le v8, v10, :cond_7

    const/4 v1, 0x1

    :cond_6
    :goto_4
    const/16 v10, 0xa

    if-le v3, v10, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v10, 0x5

    if-ge v8, v10, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    if-ge v3, v11, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    move v10, v2

    goto :goto_2

    :cond_a
    move v7, v2

    goto :goto_3

    :cond_b
    const/4 v1, 0x1

    :cond_c
    :goto_5
    if-eqz v5, :cond_19

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_d
    if-nez v2, :cond_e

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_e
    const/4 v0, 0x1

    goto :goto_5

    :cond_f
    const/4 v9, -0x1

    if-ne v6, v9, :cond_13

    if-eqz v7, :cond_11

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_10
    const/4 v5, 0x1

    goto :goto_5

    :cond_11
    if-nez v2, :cond_12

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_12
    const/4 v4, 0x1

    goto :goto_5

    :cond_13
    if-nez v6, :cond_17

    if-eqz v7, :cond_16

    if-nez v2, :cond_14

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_14
    if-ge v8, v3, :cond_15

    const/4 v5, 0x1

    const/4 v0, 0x1

    goto :goto_5

    :cond_15
    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_16
    if-eqz v2, :cond_c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_18
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    :cond_19
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    :cond_1a
    if-eqz v4, :cond_1c

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_1b
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    :cond_1c
    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    :cond_1d
    return-void
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x4f

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v3

    add-int v1, v2, v3

    const/16 v2, 0x48

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/32 v8, 0x453af5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v7

    int-to-long v10, v7

    mul-long/2addr v8, v10

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0xe

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v3, v7, 0xd

    :goto_0
    if-lez v3, :cond_0

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v7, 0xd

    if-ge v3, v7, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    add-int/lit8 v2, v7, -0x30

    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_1

    mul-int/lit8 v2, v2, 0x3

    :cond_1
    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    rem-int/lit8 v7, v1, 0xa

    rsub-int/lit8 v1, v7, 0xa

    const/16 v7, 0xa

    if-ne v1, v7, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    new-instance v7, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/zxing/ResultPoint;

    aget-object v11, v4, v12

    aput-object v11, v10, v12

    aget-object v11, v4, v13

    aput-object v11, v10, v13

    const/4 v11, 0x2

    aget-object v12, v5, v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aget-object v12, v5, v13

    aput-object v12, v10, v11

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v7
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v5

    const/16 v29, 0x0

    :goto_0
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    const/16 v30, 0x0

    aput v30, v5, v29

    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    :cond_1
    if-eqz p3, :cond_4

    const/16 v16, 0x10

    :goto_1
    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v6, v30, v31

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v9

    const/4 v14, 0x0

    :goto_2
    array-length v0, v5

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v14, v0, :cond_7

    aget v30, v5, v14

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v28, v30, v6

    const/high16 v30, 0x3f000000    # 0.5f

    add-float v30, v30, v28

    move/from16 v0, v30

    float-to-int v4, v0

    if-gtz v4, :cond_5

    const/4 v4, 0x1

    :cond_2
    :goto_3
    div-int/lit8 v22, v14, 0x2

    and-int/lit8 v30, v14, 0x1

    if-nez v30, :cond_6

    aput v4, v18, v22

    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v28, v30

    aput v30, v19, v22

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v30

    const/16 v31, 0x1

    aget v30, v30, v31

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v1, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v14, 0x0

    array-length v0, v5

    move/from16 v30, v0

    add-int/lit8 v15, v30, -0x1

    :goto_5
    if-ge v14, v15, :cond_1

    aget v25, v5, v14

    aget v30, v5, v15

    aput v30, v5, v14

    aput v25, v5, v15

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    :cond_4
    const/16 v16, 0xf

    goto :goto_1

    :cond_5
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v4, v0, :cond_2

    const/16 v4, 0x8

    goto :goto_3

    :cond_6
    aput v4, v8, v22

    int-to-float v0, v4

    move/from16 v30, v0

    sub-float v30, v28, v30

    aput v30, v9, v22

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_6
    if-ltz v14, :cond_8

    mul-int/lit8 v30, v17, 0x9

    aget v31, v18, v14

    add-int v17, v30, v31

    aget v30, v18, v14

    add-int v20, v20, v30

    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    const/4 v10, 0x0

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v14, v30, -0x1

    :goto_7
    if-ltz v14, :cond_9

    mul-int/lit8 v30, v7, 0x9

    aget v31, v8, v14

    add-int v7, v30, v31

    aget v30, v8, v14

    add-int v10, v10, v30

    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    :cond_9
    mul-int/lit8 v30, v7, 0x3

    add-int v3, v17, v30

    if-eqz p3, :cond_c

    and-int/lit8 v30, v20, 0x1

    if-nez v30, :cond_a

    const/16 v30, 0xc

    move/from16 v0, v20

    move/from16 v1, v30

    if-gt v0, v1, :cond_a

    const/16 v30, 0x4

    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    :cond_b
    rsub-int/lit8 v30, v20, 0xc

    div-int/lit8 v13, v30, 0x2

    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v21, v30, v13

    rsub-int/lit8 v11, v21, 0x9

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v23, v30, v13

    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v12, v30, v13

    new-instance v30, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v31, v27, v23

    add-int v31, v31, v26

    add-int v31, v31, v12

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    :goto_8
    return-object v30

    :cond_c
    and-int/lit8 v30, v10, 0x1

    if-nez v30, :cond_d

    const/16 v30, 0xa

    move/from16 v0, v30

    if-gt v10, v0, :cond_d

    const/16 v30, 0x4

    move/from16 v0, v30

    if-ge v10, v0, :cond_e

    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v30

    throw v30

    :cond_e
    rsub-int/lit8 v30, v10, 0xa

    div-int/lit8 v13, v30, 0x2

    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v21, v30, v13

    rsub-int/lit8 v11, v21, 0x9

    const/16 v30, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v27

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v8, v11, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v26

    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v24, v30, v13

    sget-object v30, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v12, v30, v13

    new-instance v30, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v31, v26, v24

    add-int v31, v31, v27

    add-int v31, v31, v12

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    goto :goto_8
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I

    move-result-object v5

    invoke-direct {p0, p1, p3, p2, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    if-nez p4, :cond_2

    move-object v4, v7

    :goto_0
    if-eqz v4, :cond_1

    const/4 v6, 0x0

    aget v6, v5, v6

    const/4 v8, 0x1

    aget v8, v5, v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v0, v6, v8

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    sub-float v0, v6, v0

    :cond_0
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v6, v0, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v4, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_1
    const/4 v6, 0x1

    invoke-direct {p0, p1, v3, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct {p0, p1, v3, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v1

    new-instance v6, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x63d

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v9, v10

    invoke-direct {v6, v8, v9, v3}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    :goto_1
    return-object v6

    :cond_2
    sget-object v6, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/ResultPointCallback;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v6, v7

    goto :goto_1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;Z)[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v1

    aput v8, v1, v8

    aput v8, v1, v7

    aput v8, v1, v11

    aput v8, v1, v12

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-virtual {p1, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_0

    move v2, v7

    :goto_1
    if-eq p2, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v2, v8

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v3, v4

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_6

    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v2, :cond_2

    aget v9, v1, v0

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    if-ne v0, v12, :cond_4

    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_3

    new-array v9, v11, [I

    aput v3, v9, v8

    aput v6, v9, v7

    return-object v9

    :cond_3
    aget v9, v1, v8

    aget v10, v1, v7

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    aget v9, v1, v11

    aput v9, v1, v8

    aget v9, v1, v12

    aput v9, v1, v7

    aput v8, v1, v11

    aput v8, v1, v12

    add-int/lit8 v0, v0, -0x1

    :goto_4
    aput v7, v1, v0

    if-nez v2, :cond_5

    move v2, v7

    :goto_5
    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v2, v8

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v5, 0x0

    aget v0, p4, v5

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    aget v0, p4, v5

    add-int/lit8 v8, v0, -0x1

    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eq v9, v0, :cond_0

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v8, 0x1

    aget v0, p4, v5

    sub-int v7, v0, v8

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5, v6, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v7, v6, v5

    sget-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v1

    move v3, v8

    aget v4, p4, v10

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    :cond_1
    new-instance v0, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v8, v2, v5

    aget v5, p4, v10

    aput v5, v2, v10

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2, v4, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v1

    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v4, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    invoke-direct {p0, p2, v7, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v3

    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v5

    if-le v5, v7, :cond_0

    iget-object v5, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v4

    return-object v4

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
