.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "ReedSolomonDecoder.java"


# instance fields
.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v2

    if-ne v2, v5, :cond_1

    new-array v3, v5, [I

    const/4 v4, 0x0

    invoke-virtual {p1, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v5

    aput v5, v3, v4

    :cond_0
    return-object v3

    :cond_1
    new-array v3, v2, [I

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_3

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v0, v2, :cond_0

    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v5, "Error locator degree does not match number of roots"

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I
    .locals 11

    array-length v4, p2

    new-array v3, v4, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, p2, v1

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v7

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    if-eq v1, v2, :cond_0

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, p2, v2

    invoke-virtual {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v5

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_1

    or-int/lit8 v6, v5, 0x1

    :goto_2
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8, v0, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v5, -0x2

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {p1, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    aput v8, v3, v1

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v9, v3, v1

    invoke-virtual {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    aput v8, v3, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v17, p1

    move-object/from16 p1, p2

    move-object/from16 p2, v17

    :cond_0
    move-object/from16 v9, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v14

    :cond_1
    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    div-int/lit8 v19, p3, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    move-object v10, v9

    move-object/from16 v16, v15

    move-object v9, v8

    move-object v15, v14

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v18

    if-eqz v18, :cond_2

    new-instance v18, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v19, "r_{i-1} was zero"

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_2
    move-object v8, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v4

    :goto_0
    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    sub-int v2, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v7

    invoke-virtual {v9, v2, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v15}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v14

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual {v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "Division algorithm failed to reduce polynomial?"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v13

    if-nez v13, :cond_5

    new-instance v18, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v19, "sigmaTilde(0) was zero"

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v12

    invoke-virtual {v8, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v6, v18, v19

    return-object v18
.end method


# virtual methods
.method public decode([II)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    new-instance v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v0, p1

    invoke-direct {v8, v14, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move/from16 v0, p2

    new-array v13, v0, [I

    const/4 v6, 0x1

    const/4 v5, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v5, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getGeneratorBase()I

    move-result v15

    add-int/2addr v15, v5

    invoke-virtual {v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v4

    add-int/lit8 v14, p2, -0x1

    sub-int/2addr v14, v5

    aput v4, v13, v14

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v12, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v12, v14, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v15, 0x1

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v12, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    const/4 v14, 0x0

    aget-object v10, v11, v14

    const/4 v14, 0x1

    aget-object v7, v11, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[I)[I

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    array-length v14, v2

    if-ge v5, v14, :cond_2

    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v16, v2, v5

    invoke-virtual/range {v15 .. v16}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v15

    sub-int v9, v14, v15

    if-gez v9, :cond_4

    new-instance v14, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v15, "Bad error location"

    invoke-direct {v14, v15}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    aget v14, p1, v9

    aget v15, v3, v5

    invoke-static {v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v14

    aput v14, p1, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
