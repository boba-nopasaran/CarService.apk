.class public Lorg/apache/commons/collections4/map/MultiValueMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections4/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/MultiValueMap$a;,
        Lorg/apache/commons/collections4/map/MultiValueMap$c;,
        Lorg/apache/commons/collections4/map/MultiValueMap$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator",
        "<TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/collections4/k",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1eba46b504a846b7L


# instance fields
.field private final collectionFactory:Lorg/apache/commons/collections4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/d",
            "<+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/apache/commons/collections4/map/MultiValueMap$a;

    const-class v2, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections4/map/MultiValueMap$a;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/d;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<TV;>;>(",
            "Ljava/util/Map",
            "<TK;-TC;>;",
            "Lorg/apache/commons/collections4/d",
            "<TC;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->collectionFactory:Lorg/apache/commons/collections4/d;

    return-void
.end method

.method public static multiValueMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;-",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap",
            "<TK;TV;>;"
        }
    .end annotation

    const-class v0, Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections4/map/MultiValueMap;

    move-result-object v0

    return-object v0
.end method

.method public static multiValueMap(Ljava/util/Map;Ljava/lang/Class;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection",
            "<TV;>;>(",
            "Ljava/util/Map",
            "<TK;-TC;>;",
            "Ljava/lang/Class",
            "<TC;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap;

    new-instance v1, Lorg/apache/commons/collections4/map/MultiValueMap$a;

    invoke-direct {v1, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$a;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/d;)V

    return-object v0
.end method

.method public static multiValueMap(Ljava/util/Map;Lorg/apache/commons/collections4/d;)Lorg/apache/commons/collections4/map/MultiValueMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection",
            "<TV;>;>(",
            "Ljava/util/Map",
            "<TK;-TC;>;",
            "Lorg/apache/commons/collections4/d",
            "<TC;>;)",
            "Lorg/apache/commons/collections4/map/MultiValueMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/d;)V

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

    iput-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->map:Ljava/util/Map;

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

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected createCollection(I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->collectionFactory:Lorg/apache/commons/collections4/d;

    invoke-interface {v0}, Lorg/apache/commons/collections4/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

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
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/map/MultiValueMap$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections4/map/MultiValueMap$1;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/c/e;->a()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap$c;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$c;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->createCollection(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object p2

    :cond_0
    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/commons/collections4/k;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/collections4/k;

    invoke-interface {p1}, Lorg/apache/commons/collections4/k;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->createCollection(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0
.end method

.method public totalSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/MultiValueMap;->decorated()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/collections4/c;->a(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->valuesView:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/MultiValueMap$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap$b;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;B)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap;->valuesView:Ljava/util/Collection;

    goto :goto_0
.end method
