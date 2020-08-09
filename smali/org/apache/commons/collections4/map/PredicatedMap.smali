.class public Lorg/apache/commons/collections4/map/PredicatedMap;
.super Lorg/apache/commons/collections4/map/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/a",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x66deecd99f9e25b4L


# instance fields
.field protected final keyPredicate:Lorg/apache/commons/collections4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/n",
            "<-TK;>;"
        }
    .end annotation
.end field

.field protected final valuePredicate:Lorg/apache/commons/collections4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/n",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/n",
            "<-TK;>;",
            "Lorg/apache/commons/collections4/n",
            "<-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/a;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections4/n;

    iput-object p3, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/n;

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

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)Lorg/apache/commons/collections4/map/PredicatedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/n",
            "<-TK;>;",
            "Lorg/apache/commons/collections4/n",
            "<-TV;>;)",
            "Lorg/apache/commons/collections4/map/PredicatedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/PredicatedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)V

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

    iput-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->map:Ljava/util/Map;

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

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/n;

    invoke-interface {v0}, Lorg/apache/commons/collections4/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set value - Predicate rejected it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/map/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isSetValueChecking()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

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

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/a;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected validate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections4/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections4/n;

    invoke-interface {v0}, Lorg/apache/commons/collections4/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add key - Predicate rejected it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections4/n;

    invoke-interface {v0}, Lorg/apache/commons/collections4/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add value - Predicate rejected it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
