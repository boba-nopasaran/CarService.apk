.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    return-object v1
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/high16 v8, 0x3f000000    # 0.5f

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    :cond_1
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, p2, p3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    mul-int/lit8 v6, p2, 0x2

    new-array v3, v6, [F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p3, :cond_5

    array-length v2, v3

    int-to-float v6, v5

    add-float v1, v6, v8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v8

    aput v6, v3, v4

    add-int/lit8 v6, v4, 0x1

    aput v1, v3, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p4, v3}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    invoke-static {p1, v3}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    :try_start_0
    aget v6, v3, v4

    float-to-int v6, v6

    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_3

    div-int/lit8 v6, v4, 0x2

    invoke-virtual {v0, v6, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method
