.class public Lorg/apache/commons/collections4/map/TransformedMap;
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
.field private static final serialVersionUID:J = 0x61773fe05df15a70L


# instance fields
.field protected final keyTransformer:Lorg/apache/commons/collections4/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TK;>;"
        }
    .end annotation
.end field

.field protected final valueTransformer:Lorg/apache/commons/collections4/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/q",
            "<-TV;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TK;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TV;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/a;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lorg/apache/commons/collections4/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections4/q;

    iput-object p3, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/q;

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

    iput-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->map:Ljava/util/Map;

    return-void
.end method

.method public static transformedMap(Ljava/util/Map;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)Lorg/apache/commons/collections4/map/TransformedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TK;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/map/TransformedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/TransformedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/map/TransformedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/TransformedMap;->clear()V

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/TransformedMap;->decorated()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public static transformingMap(Ljava/util/Map;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)Lorg/apache/commons/collections4/map/TransformedMap;
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
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TK;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TV;+TV;>;)",
            "Lorg/apache/commons/collections4/map/TransformedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/TransformedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;Lorg/apache/commons/collections4/q;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/q;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/map/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isSetValueChecking()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/TransformedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/map/TransformedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedMap;->decorated()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/TransformedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/TransformedMap;->decorated()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected transformKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections4/q;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections4/q;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method protected transformMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v1, Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/map/LinkedMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/map/TransformedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/TransformedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object p1, v1

    goto :goto_0
.end method

.method protected transformValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/q;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections4/q;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method
