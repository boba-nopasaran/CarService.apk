.class public Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReferenceEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;ITK;TV;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p3}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    invoke-virtual {p0, v0, p5, p3}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v5, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    if-ne v2, p1, :cond_4

    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$000(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    :goto_2
    return v1

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$300(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    goto :goto_2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$100(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->hashCode:I

    invoke-virtual {p0, v0, p1, v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->value:Ljava/lang/Object;

    return-object v1
.end method

.method protected toReference(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;",
            "TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_1

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$i;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$200(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$i;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->WEAK:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_2

    new-instance v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$j;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->access$200(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$j;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p2, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method
