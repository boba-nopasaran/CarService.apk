.class public Lorg/apache/commons/collections4/map/AbstractHashedMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$ValuesIterator;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySetIterator;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;,
        Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Lorg/apache/commons/collections4/g",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0x10

.field protected static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field protected static final DEFAULT_THRESHOLD:I = 0xc

.field protected static final GETKEY_INVALID:Ljava/lang/String; = "getKey() can only be called after next() and before remove()"

.field protected static final GETVALUE_INVALID:Ljava/lang/String; = "getValue() can only be called after next() and before remove()"

.field protected static final MAXIMUM_CAPACITY:I = 0x40000000

.field protected static final NO_NEXT_ENTRY:Ljava/lang/String; = "No next() entry in the iteration"

.field protected static final NO_PREVIOUS_ENTRY:Ljava/lang/String; = "No previous() entry in the iteration"

.field protected static final NULL:Ljava/lang/Object;

.field protected static final REMOVE_INVALID:Ljava/lang/String; = "remove() can only be called once after next()"

.field protected static final SETVALUE_INVALID:Ljava/lang/String; = "setValue() can only be called after next() and before remove()"


# instance fields
.field transient data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient loadFactor:F

.field transient modCount:I

.field transient size:I

.field transient threshold:I

.field transient values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$Values",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial capacity must be a non negative number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Load factor must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    new-array v0, v0, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->init()V

    return-void
.end method

.method protected constructor <init>(IFI)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    new-array v0, p1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput p3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->init()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->_putAll(Ljava/util/Map;)V

    return-void
.end method

.method private _putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    return-void
.end method

.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->checkCapacity()V

    return-void
.end method

.method protected calculateNewCapacity(I)I
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_2

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-gt v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected calculateThreshold(IF)I
    .locals 1

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method protected checkCapacity()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->ensureCapacity(I)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    return-void
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap",
            "<TK;TV;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->init()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget v3, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v2, :cond_0

    iget-object v3, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object v4, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v2, v4, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_2
    return v0

    :cond_1
    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v5, v4

    move v3, v1

    :goto_3
    if-ge v3, v5, :cond_5

    aget-object v2, v4, v3

    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method protected createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;ITK;TV;)",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/c/e;->a()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/c/e;->a()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySetIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/c/e;->a()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected destroyEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->init()V

    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    new-array v0, v0, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    if-nez v1, :cond_1

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    new-array v0, p1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    new-array v4, p1, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    aget-object v0, v3, v2

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aput-object v1, v3, v2

    :goto_2
    iget-object v1, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget v5, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v5, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v5

    aget-object v6, v4, v5

    iput-object v6, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aput-object v0, v4, v5

    if-nez v1, :cond_4

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->threshold:I

    iput-object v4, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method protected entryHashCode(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    iget v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    return v0
.end method

.method protected entryKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected entryNext(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method protected entryValue(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/util/Map;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v2

    :cond_4
    :try_start_0
    invoke-interface {v2}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/commons/collections4/j;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget v3, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v2, :cond_0

    iget-object v3, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget v3, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v2, :cond_0

    iget-object v3, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected hashIndex(II)I
    .locals 1

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/j",
            "<TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/c/f;->a()Lorg/apache/commons/collections4/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v4

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v4

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, v3, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->_putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v4

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v4, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v5

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v1, v5

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_0

    iget v6, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v6, v4, :cond_1

    iget-object v6, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v3, v6}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v5, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0
.end method

.method protected removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aput-object v1, v0, p2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, p3, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;I",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->modCount:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->destroyEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    return-void
.end method

.method protected reuseEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;IITK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput p3, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    iput-object p4, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    iput-object p5, p1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v0

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v3}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3}, Lorg/apache/commons/collections4/j;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, p0, :cond_2

    const-string v0, "(this Map)"

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, p0, :cond_3

    const-string v0, "(this Map)"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    return-object v0
.end method
