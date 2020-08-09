.class public abstract Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$j;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$i;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$f;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$h;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$e;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$c;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$g;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$d;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;,
        Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

.field private purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    iput-boolean p5, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeValues:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeValues:Z

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method protected createEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;ITK;TV;)",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

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

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$c;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$c;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-object v0
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

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$e;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$e;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-object v0
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

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$h;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$h;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->resolve(I)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->resolve(I)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->init()V

    new-array v0, v0, [Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->threshold:I

    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->value:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->valueType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->value:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->mapIterator()Lorg/apache/commons/collections4/j;

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
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
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

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$b;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    goto :goto_0
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_1

    :goto_0
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    check-cast p2, Ljava/lang/ref/Reference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected isKeyType(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keyType:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$d;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$d;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections4/map/AbstractHashedMap$KeySet;

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

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$f;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$f;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected purge()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected purge(Ljava/lang/ref/Reference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->hashIndex(II)I

    move-result v3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v1, v1, v3

    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aput-object v1, v0, v3

    :goto_1
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->size:I

    :cond_0
    return-void

    :cond_1
    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    iput-object v0, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method protected purgeBeforeRead()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purge()V

    return-void
.end method

.method protected purgeBeforeWrite()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purge()V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null keys not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null values not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeWrite()V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeWrite()V

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->purgeBeforeRead()V

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
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

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$g;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$g;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections4/map/AbstractHashedMap$Values;

    return-object v0
.end method
