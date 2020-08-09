.class public final Lcom/car/common/pinyin/LevenshteinAlgo;
.super Ljava/lang/Object;
.source "LevenshteinAlgo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Ljava/lang/String;Ljava/lang/String;)F
    .locals 14

    const/4 v13, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v5, 0x1

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v4, :cond_0

    aget-object v8, v1, v0

    aput v0, v8, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v5, :cond_1

    aget-object v8, v1, v13

    aput v0, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_2
    if-gt v2, v4, :cond_4

    const/4 v3, 0x1

    :goto_3
    if-gt v3, v5, :cond_3

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_2

    const/4 v7, 0x0

    :goto_4
    aget-object v8, v1, v2

    const/4 v9, 0x3

    new-array v9, v9, [I

    add-int/lit8 v10, v2, -0x1

    aget-object v10, v1, v10

    add-int/lit8 v11, v3, -0x1

    aget v10, v10, v11

    add-int/2addr v10, v7

    aput v10, v9, v13

    const/4 v10, 0x1

    aget-object v11, v1, v2

    add-int/lit8 v12, v3, -0x1

    aget v11, v11, v12

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    const/4 v10, 0x2

    add-int/lit8 v11, v2, -0x1

    aget-object v11, v1, v11

    aget v11, v11, v3

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    invoke-static {v9}, Lcom/car/common/pinyin/LevenshteinAlgo;->min([I)I

    move-result v9

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    aget-object v9, v1, v4

    aget v9, v9, v5

    int-to-float v9, v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float v6, v8, v9

    return v6
.end method

.method private static final varargs min([I)I
    .locals 5

    const v4, 0x7fffffff

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    if-le v4, v1, :cond_0

    move v4, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method
