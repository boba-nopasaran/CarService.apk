.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x61

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3

    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(II)Z
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    aget v5, v3, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v5, v3, v8

    if-nez v5, :cond_2

    :cond_1
    :goto_1
    return v4

    :cond_2
    :goto_2
    if-lt p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_3

    aget v5, v3, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    aget v5, v3, v9

    if-eqz v5, :cond_1

    :goto_3
    if-lt p1, v0, :cond_4

    if-lt p2, v0, :cond_4

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    aget v5, v3, v4

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    const/4 v0, 0x1

    :goto_4
    add-int v5, p1, v0

    if-ge v5, v1, :cond_5

    add-int v5, p2, v0

    if-ge v5, v2, :cond_5

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    aget v5, v3, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int v5, p1, v0

    if-ge v5, v1, :cond_6

    add-int v5, p2, v0

    if-ge v5, v2, :cond_6

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_6

    aget v5, v3, v10

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    aget v5, v3, v10

    if-eqz v5, :cond_1

    :goto_6
    add-int v5, p1, v0

    if-ge v5, v1, :cond_7

    add-int v5, p2, v0

    if-ge v5, v2, :cond_7

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    aget v5, v3, v11

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    aget v5, v3, v11

    if-eqz v5, :cond_1

    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternDiagonal([I)Z

    move-result v4

    goto/16 :goto_1
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 7

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    move v1, p1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/high16 v5, 0x7fc00000    # Float.NaN

    :goto_1
    return v5

    :cond_1
    :goto_2
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    if-ltz v1, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4

    :cond_3
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_4
    :goto_3
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5

    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_6
    add-int/lit8 v1, p1, 0x1

    :goto_4
    if-ge v1, v2, :cond_7

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    if-ne v1, v2, :cond_8

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_8
    :goto_5
    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_9

    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    if-eq v1, v2, :cond_a

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_b

    :cond_a
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_b
    :goto_6
    if-ge v1, v2, :cond_c

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_c

    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-lt v5, p4, :cond_e

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    :cond_e
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_f
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1
.end method

.method private crossCheckVertical(IIII)F
    .locals 7

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    move v0, p1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/high16 v5, 0x7fc00000    # Float.NaN

    :goto_1
    return v5

    :cond_1
    :goto_2
    if-ltz v0, :cond_2

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    if-ltz v0, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4

    :cond_3
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_4
    :goto_3
    if-ltz v0, :cond_5

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5

    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_6
    add-int/lit8 v0, p1, 0x1

    :goto_4
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    if-ne v0, v2, :cond_8

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_8
    :goto_5
    if-ge v0, v2, :cond_9

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_9

    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    if-eq v0, v2, :cond_a

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_b

    :cond_a
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_b
    :goto_6
    if-ge v0, v2, :cond_c

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_c

    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_e

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1

    :cond_e
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_f
    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_1
.end method

.method private findRowSkip()I
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    if-nez v1, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_3
    iput-boolean v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method protected static foundPatternCross([I)Z
    .locals 10

    const/4 v6, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    aget v0, p0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return v5

    :cond_1
    add-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x7

    if-lt v4, v7, :cond_0

    int-to-float v7, v4

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v3, v7, v8

    const/high16 v7, 0x40000000    # 2.0f

    div-float v2, v3, v7

    aget v7, p0, v5

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    aget v7, p0, v6

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    mul-float v7, v9, v3

    const/4 v8, 0x2

    aget v8, p0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v9, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    const/4 v7, 0x3

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    const/4 v7, 0x4

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method protected static foundPatternDiagonal([I)Z
    .locals 10

    const/4 v6, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    aget v0, p0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return v5

    :cond_1
    add-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x7

    if-lt v4, v7, :cond_0

    int-to-float v7, v4

    const/high16 v8, 0x40e00000    # 7.0f

    div-float v3, v7, v8

    const v7, 0x3faa9fbe    # 1.333f

    div-float v2, v3, v7

    aget v7, p0, v5

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    aget v7, p0, v6

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    mul-float v7, v9, v3

    const/4 v8, 0x2

    aget v8, p0, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v9, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    const/4 v7, 0x3

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    const/4 v7, 0x4

    aget v7, p0, v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    move v5, v6

    goto :goto_1
.end method

.method private getCrossCheckStateCount()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v5, v8

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    if-ge v1, v7, :cond_3

    :cond_2
    :goto_1
    return v6

    :cond_3
    int-to-float v7, v2

    div-float v0, v5, v7

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v4, v8

    goto :goto_2

    :cond_4
    const v7, 0x3d4ccccd    # 0.05f

    mul-float/2addr v7, v5

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x3

    if-ge v6, v9, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    :cond_0
    const/4 v9, 0x3

    if-le v6, v9, :cond_3

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    add-float/2addr v8, v4

    mul-float v9, v4, v4

    add-float/2addr v5, v9

    goto :goto_0

    :cond_1
    int-to-float v9, v6

    div-float v0, v8, v9

    int-to-float v9, v6

    div-float v9, v5, v9

    mul-float v10, v0, v0

    sub-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v0

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_3

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    sub-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v2

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_5

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    add-float/2addr v8, v10

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    div-float v0, v8, v9

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    :cond_5
    const/4 v9, 0x3

    new-array v10, v9, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v9, v10, v11

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v9, v10, v11

    const/4 v11, 0x2

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v9, v10, v11

    return-object v10
.end method


# virtual methods
.method protected final clearCounts([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_3

    sget-object v11, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    :goto_0
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    mul-int/lit8 v11, v5, 0x3

    div-int/lit16 v3, v11, 0x184

    const/4 v11, 0x3

    if-lt v3, v11, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    const/4 v3, 0x3

    :cond_1
    const/4 v1, 0x0

    const/4 v11, 0x5

    new-array v9, v11, [I

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ge v2, v5, :cond_d

    if-nez v1, :cond_d

    invoke-virtual {p0, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_b

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_4

    and-int/lit8 v11, v0, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    and-int/lit8 v11, v0, 0x1

    if-nez v11, :cond_a

    const/4 v11, 0x4

    if-ne v0, v11, :cond_9

    invoke-static {v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {p0, v9, v2, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v3, 0x2

    iget-boolean v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v11, :cond_6

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v1

    :cond_5
    :goto_4
    const/4 v0, 0x0

    invoke-virtual {p0, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v8

    const/4 v11, 0x2

    aget v11, v9, v11

    if-le v8, v11, :cond_5

    const/4 v11, 0x2

    aget v11, v9, v11

    sub-int v11, v8, v11

    add-int/lit8 v11, v11, -0x2

    add-int/2addr v2, v11

    add-int/lit8 v4, v6, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    const/4 v0, 0x3

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    const/4 v0, 0x3

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_3

    :cond_a
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_3

    :cond_b
    invoke-static {v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {p0, v9, v2, v6}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x0

    aget v3, v9, v11

    iget-boolean v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v11, :cond_c

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v1

    :cond_c
    add-int/2addr v2, v3

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v11, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v11, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v11
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([III)Z
    .locals 11

    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, p1, v9

    add-int v7, v8, v9

    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    float-to-int v8, v2

    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3

    float-to-int v8, v2

    float-to-int v9, v1

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_3

    float-to-int v8, v1

    float-to-int v9, v2

    invoke-direct {p0, v8, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(II)Z

    move-result v8

    if-eqz v8, :cond_3

    int-to-float v8, v7

    const/high16 v9, 0x40e00000    # 7.0f

    div-float v3, v8, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_1
    const/4 v8, 0x1

    :goto_1
    return v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v0

    return v0
.end method

.method protected final shiftCounts2([I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p1, v3

    aput v0, p1, v1

    aget v0, p1, v4

    aput v0, p1, v2

    aget v0, p1, v5

    aput v0, p1, v3

    aput v2, p1, v4

    aput v1, p1, v5

    return-void
.end method
