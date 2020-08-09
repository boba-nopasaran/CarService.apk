.class public final Lcom/car/common/util/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/util/IntHashMap$Entry;
    }
.end annotation


# static fields
.field public static final nullValue:I


# instance fields
.field private final mCapacity:I

.field private mCollision:I

.field private mSize:I

.field private final mTables:[Lcom/car/common/util/IntHashMap$Entry;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/car/common/util/IntHashMap;->mCapacity:I

    new-array v0, p1, [Lcom/car/common/util/IntHashMap$Entry;

    iput-object v0, p0, Lcom/car/common/util/IntHashMap;->mTables:[Lcom/car/common/util/IntHashMap$Entry;

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget v0, p0, Lcom/car/common/util/IntHashMap;->mCapacity:I

    return v0
.end method

.method public collision()I
    .locals 1

    iget v0, p0, Lcom/car/common/util/IntHashMap;->mCollision:I

    return v0
.end method

.method public get(I)I
    .locals 4

    move v0, p1

    iget-object v2, p0, Lcom/car/common/util/IntHashMap;->mTables:[Lcom/car/common/util/IntHashMap$Entry;

    iget v3, p0, Lcom/car/common/util/IntHashMap;->mCapacity:I

    rem-int v3, v0, v3

    aget-object v1, v2, v3

    :goto_0
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/car/common/util/IntHashMap$Entry;->key:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/car/common/util/IntHashMap$Entry;->value:I

    :goto_1
    return v2

    :cond_0
    iget-object v1, v1, Lcom/car/common/util/IntHashMap$Entry;->next:Lcom/car/common/util/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public put(II)I
    .locals 6

    move v0, p1

    iget v5, p0, Lcom/car/common/util/IntHashMap;->mCapacity:I

    rem-int v1, v0, v5

    iget-object v5, p0, Lcom/car/common/util/IntHashMap;->mTables:[Lcom/car/common/util/IntHashMap$Entry;

    aget-object v3, v5, v1

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget v5, v3, Lcom/car/common/util/IntHashMap$Entry;->key:I

    if-ne v5, p1, :cond_0

    iget v2, v3, Lcom/car/common/util/IntHashMap$Entry;->value:I

    iput p2, v3, Lcom/car/common/util/IntHashMap$Entry;->value:I

    :goto_1
    return v2

    :cond_0
    iget v5, p0, Lcom/car/common/util/IntHashMap;->mCollision:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/car/common/util/IntHashMap;->mCollision:I

    move-object v4, v3

    iget-object v3, v3, Lcom/car/common/util/IntHashMap$Entry;->next:Lcom/car/common/util/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/car/common/util/IntHashMap$Entry;

    invoke-direct {v3, p1, p2}, Lcom/car/common/util/IntHashMap$Entry;-><init>(II)V

    if-eqz v4, :cond_2

    iput-object v3, v4, Lcom/car/common/util/IntHashMap$Entry;->next:Lcom/car/common/util/IntHashMap$Entry;

    :goto_2
    iget v5, p0, Lcom/car/common/util/IntHashMap;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/car/common/util/IntHashMap;->mSize:I

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/car/common/util/IntHashMap;->mTables:[Lcom/car/common/util/IntHashMap$Entry;

    aput-object v3, v5, v1

    goto :goto_2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/car/common/util/IntHashMap;->mSize:I

    return v0
.end method
