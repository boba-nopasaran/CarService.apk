.class public Lorg/apache/commons/collections4/map/CompositeMap;
.super Lorg/apache/commons/collections4/map/AbstractIterableMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractIterableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x549ca6b25f2a5542L


# instance fields
.field private composite:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;->addComposited(Ljava/util/Map;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/c;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key collision adding Map to CompositeMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v2, p0, v3, p1, v1}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v1, Lorg/apache/commons/collections4/f/c;

    invoke-direct {v1}, Lorg/apache/commons/collections4/f/c;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections4/f/c;->a(Ljava/util/Set;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    new-instance v1, Lorg/apache/commons/collections4/f/c;

    invoke-direct {v1}, Lorg/apache/commons/collections4/f/c;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections4/f/c;->a(Ljava/util/Set;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->put(Lorg/apache/commons/collections4/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->putAll(Lorg/apache/commons/collections4/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized removeComposited(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    new-array v2, v2, [Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMutator(Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    return-void
.end method

.method public size()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    new-instance v1, Lorg/apache/commons/collections4/a/b;

    invoke-direct {v1}, Lorg/apache/commons/collections4/a/b;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections4/a/b;->a(Ljava/util/Collection;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
