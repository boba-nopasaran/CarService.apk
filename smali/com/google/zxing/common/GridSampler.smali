.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_6

    if-eqz v1, :cond_6

    aget v6, p1, v2

    float-to-int v4, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    if-lt v4, v8, :cond_0

    if-gt v4, v3, :cond_0

    if-lt v5, v8, :cond_0

    if-le v5, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    :cond_1
    const/4 v1, 0x0

    if-ne v4, v8, :cond_4

    aput v9, p1, v2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-ne v5, v8, :cond_5

    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    const/4 v1, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    if-ne v4, v3, :cond_2

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    if-ne v5, v0, :cond_3

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    array-length v6, p1

    add-int/lit8 v2, v6, -0x2

    :goto_3
    if-ltz v2, :cond_d

    if-eqz v1, :cond_d

    aget v6, p1, v2

    float-to-int v4, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v5, v6

    if-lt v4, v8, :cond_7

    if-gt v4, v3, :cond_7

    if-lt v5, v8, :cond_7

    if-le v5, v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    :cond_8
    const/4 v1, 0x0

    if-ne v4, v8, :cond_b

    aput v9, p1, v2

    const/4 v1, 0x1

    :cond_9
    :goto_4
    if-ne v5, v8, :cond_c

    add-int/lit8 v6, v2, 0x1

    aput v9, p1, v6

    const/4 v1, 0x1

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_3

    :cond_b
    if-ne v4, v3, :cond_9

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    const/4 v1, 0x1

    goto :goto_4

    :cond_c
    if-ne v5, v0, :cond_a

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v0, -0x1

    int-to-float v7, v7

    aput v7, p1, v6

    const/4 v1, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 0

    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
