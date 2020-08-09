.class public Lorg/apache/commons/collections4/map/MultiKeyMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator",
        "<",
        "Lorg/apache/commons/collections4/d/e",
        "<+TK;>;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap",
            "<",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    return-void
.end method

.method public static multiKeyMap(Lorg/apache/commons/collections4/map/AbstractHashedMap;)Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap",
            "<",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;>;)",
            "Lorg/apache/commons/collections4/map/MultiKeyMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/map/MultiKeyMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiKeyMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkKey(Lorg/apache/commons/collections4/d/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/d/e",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->clone()Lorg/apache/commons/collections4/map/MultiKeyMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/MultiKeyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/MultiKeyMap",
            "<TK;TV;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/MultiKeyMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

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

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

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

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v6, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    aget-object v1, v0, v1

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v6, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v7, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    aget-object v1, v0, v1

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v7, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap",
            "<",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

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

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

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

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v6, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    aget-object v1, v0, v1

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v6, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v7, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    aget-object v1, v0, v1

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v7, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
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

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
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

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_3
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

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_4
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

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/d/e;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p3, v3, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/d/e;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p3, v3, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {v0, v5}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p4, v3, :cond_2

    if-eqz p4, :cond_3

    invoke-virtual {v0, v5}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/d/e;->a()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p3, v3, :cond_1

    if-eqz p3, :cond_4

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    invoke-virtual {v0, v5}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p4, v3, :cond_2

    if-eqz p4, :cond_4

    invoke-virtual {v0, v5}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    invoke-virtual {v0, v6}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p5, v3, :cond_3

    if-eqz p5, :cond_4

    invoke-virtual {v0, v6}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/d/e;->a()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p2, v3, :cond_0

    if-eqz p2, :cond_5

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p3, v3, :cond_1

    if-eqz p3, :cond_5

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {v0, v5}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p4, v3, :cond_2

    if-eqz p4, :cond_5

    invoke-virtual {v0, v5}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    invoke-virtual {v0, v6}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p5, v3, :cond_3

    if-eqz p5, :cond_5

    invoke-virtual {v0, v6}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual {v0, v7}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    if-eq p6, v3, :cond_4

    if-eqz p6, :cond_5

    invoke-virtual {v0, v7}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/j",
            "<",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->put(Lorg/apache/commons/collections4/d/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v3

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/d/e;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/collections4/d/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v2, v1, p3}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v3

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {v2, v1, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/d/e;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/commons/collections4/d/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v2, v1, p4}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v1, v0, v7

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v6, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {v2, v1, p5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/d/e;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/commons/collections4/d/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v6, v1, p5}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v8

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v1, v0, v8

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v7, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {v2, v1, p6}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v6

    new-instance v0, Lorg/apache/commons/collections4/d/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/d/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8, v7, v0, p6}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public put(Lorg/apache/commons/collections4/d/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/d/e;)V

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/commons/collections4/d/e",
            "<+TK;>;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->checkKey(Lorg/apache/commons/collections4/d/e;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/d/e;->a()I

    move-result v4

    if-lez v4, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {v3}, Lorg/apache/commons/collections4/j;->remove()V

    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/d/e;->a()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    if-nez p2, :cond_3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->remove()V

    move v0, v3

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    return v1
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/d/e;->a()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    if-nez p2, :cond_3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    :goto_1
    if-nez p3, :cond_4

    invoke-virtual {v0, v7}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->remove()V

    move v0, v3

    :goto_3
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v7}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_5
    return v1
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/d/e;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/d/e;->a()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    if-nez p2, :cond_3

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    :goto_1
    if-nez p3, :cond_4

    invoke-virtual {v0, v7}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    :goto_2
    if-nez p4, :cond_5

    invoke-virtual {v0, v8}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_3
    invoke-interface {v4}, Lorg/apache/commons/collections4/j;->remove()V

    move v0, v3

    :goto_4
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v0, v1

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v7}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v8}, Lorg/apache/commons/collections4/d/e;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_6
    return v1
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v1, v4

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_0

    iget v5, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v3, :cond_1

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v1, v4

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_0

    iget v5, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v3, :cond_1

    invoke-virtual {p0, v2, p1, p2, p3}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, v2, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v8, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v1, v0, v9

    move-object v7, v6

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v8, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {v2, v1, v9, v7}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v7, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1
.end method

.method public removeMultiKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {v0, v8, v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashIndex(II)I

    move-result v9

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v9

    const/4 v1, 0x0

    move-object v7, v1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v8, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections4/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiKeyMap;->decorated()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v2

    invoke-virtual {v2, v1, v9, v7}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v7, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
