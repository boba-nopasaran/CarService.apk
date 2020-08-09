.class public abstract Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/m;


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
        "Lorg/apache/commons/collections4/m",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/m",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/m;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Lorg/apache/commons/collections4/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/m",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->decorated()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/m;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/m;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/m;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/m;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/m;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic mapIterator()Lorg/apache/commons/collections4/j;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->mapIterator$500fa5e0()Lorg/apache/commons/collections4/j;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator$500fa5e0()Lorg/apache/commons/collections4/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/j",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/m;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/m;->mapIterator$500fa5e0()Lorg/apache/commons/collections4/j;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/m;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->decorated()Lorg/apache/commons/collections4/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/m;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
