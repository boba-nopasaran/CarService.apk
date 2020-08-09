.class public final Lorg/apache/commons/collections4/map/UnmodifiableMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections4/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/collections4/r;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25fbdc4e444af805L


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
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

    iput-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    return-void
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lorg/apache/commons/collections4/r;

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/UnmodifiableMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final entrySet()Ljava/util/Set;
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

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/f/d;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final mapIterator()Lorg/apache/commons/collections4/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/j",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    instance-of v0, v0, Lorg/apache/commons/collections4/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections4/g;

    invoke-interface {v0}, Lorg/apache/commons/collections4/g;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/c/p;->a(Lorg/apache/commons/collections4/j;)Lorg/apache/commons/collections4/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/c/i;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/c/i;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lorg/apache/commons/collections4/c/p;->a(Lorg/apache/commons/collections4/j;)Lorg/apache/commons/collections4/j;

    move-result-object v0

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/a/c;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
