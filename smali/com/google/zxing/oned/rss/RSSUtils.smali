.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .locals 6

    sub-int v5, p0, p1

    if-le v5, p1, :cond_1

    move v3, p1

    sub-int v2, p0, p1

    :goto_0
    const/4 v4, 0x1

    const/4 v1, 0x1

    move v0, p0

    :goto_1
    if-le v0, v2, :cond_2

    mul-int/2addr v4, v0

    if-gt v1, v3, :cond_0

    div-int/2addr v4, v1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    sub-int v3, p0, p1

    move v2, p1

    goto :goto_0

    :cond_2
    :goto_2
    if-gt v1, v3, :cond_3

    div-int/2addr v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v4
.end method

.method public static getRSSvalue([IIZ)I
    .locals 13

    const/4 v12, 0x1

    const/4 v5, 0x0

    array-length v11, p0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget v9, p0, v10

    add-int/2addr v5, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v6, 0x0

    array-length v1, p0

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v10, v1, -0x1

    if-ge v0, v10, :cond_6

    const/4 v2, 0x1

    shl-int v10, v12, v0

    or-int/2addr v6, v10

    :goto_2
    aget v10, p0, v0

    if-ge v2, v10, :cond_5

    sub-int v10, v5, v2

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v7

    if-eqz p2, :cond_1

    if-nez v6, :cond_1

    sub-int v10, v5, v2

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    if-lt v10, v11, :cond_1

    sub-int v10, v5, v2

    sub-int v11, v1, v0

    sub-int/2addr v10, v11

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    sub-int/2addr v7, v10

    :cond_1
    sub-int v10, v1, v0

    add-int/lit8 v10, v10, -0x1

    if-le v10, v12, :cond_4

    const/4 v3, 0x0

    sub-int v10, v5, v2

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x2

    sub-int v4, v10, v11

    :goto_3
    if-le v4, p1, :cond_2

    sub-int v10, v5, v2

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v1, v0

    add-int/lit8 v11, v11, -0x3

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v10

    add-int/2addr v3, v10

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v10, v0

    mul-int/2addr v10, v3

    sub-int/2addr v7, v10

    :cond_3
    :goto_4
    add-int/2addr v8, v7

    add-int/lit8 v2, v2, 0x1

    shl-int v10, v12, v0

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v6, v10

    goto :goto_2

    :cond_4
    sub-int v10, v5, v2

    if-le v10, p1, :cond_3

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_5
    sub-int/2addr v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return v8
.end method
