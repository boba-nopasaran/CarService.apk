.class public Lorg/apache/commons/collections4/map/DefaultedMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
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
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x11ea71c4da63L


# instance fields
.field private final value:Lorg/apache/commons/collections4/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/collections4/b/a;->b(Ljava/lang/Object;)Lorg/apache/commons/collections4/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Lorg/apache/commons/collections4/q;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transformer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->value:Lorg/apache/commons/collections4/q;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/q",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;)V

    return-void
.end method

.method public static defaultedMap(Ljava/util/Map;Lorg/apache/commons/collections4/q;)Ljava/util/Map;
    .locals 2
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
            "<-TK;+TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;)V

    return-object v0
.end method

.method public static defaultedMap(Ljava/util/Map;Ljava/lang/Object;)Lorg/apache/commons/collections4/map/DefaultedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TV;)",
            "Lorg/apache/commons/collections4/map/DefaultedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/b/a;->b(Ljava/lang/Object;)Lorg/apache/commons/collections4/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;)V

    return-object v0
.end method

.method public static defaultedMap(Ljava/util/Map;Lorg/apache/commons/collections4/d;)Lorg/apache/commons/collections4/map/DefaultedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/d",
            "<+TV;>;)",
            "Lorg/apache/commons/collections4/map/DefaultedMap",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/DefaultedMap;

    invoke-static {p1}, Lorg/apache/commons/collections4/b/b;->a(Lorg/apache/commons/collections4/d;)Lorg/apache/commons/collections4/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/DefaultedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/q;)V

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

    iput-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->map:Ljava/util/Map;

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

    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->value:Lorg/apache/commons/collections4/q;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
