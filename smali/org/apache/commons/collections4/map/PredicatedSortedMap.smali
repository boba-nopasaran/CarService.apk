.class public Lorg/apache/commons/collections4/map/PredicatedSortedMap;
.super Lorg/apache/commons/collections4/map/PredicatedMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/PredicatedMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ea0924bb894128cL


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/n",
            "<-TK;>;",
            "Lorg/apache/commons/collections4/n",
            "<-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)V

    return-void
.end method

.method public static predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)Lorg/apache/commons/collections4/map/PredicatedSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/apache/commons/collections4/n",
            "<-TK;>;",
            "Lorg/apache/commons/collections4/n",
            "<-TV;>;)",
            "Lorg/apache/commons/collections4/map/PredicatedSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->keyPredicate:Lorg/apache/commons/collections4/n;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->valuePredicate:Lorg/apache/commons/collections4/n;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->keyPredicate:Lorg/apache/commons/collections4/n;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->valuePredicate:Lorg/apache/commons/collections4/n;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/collections4/map/PredicatedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->keyPredicate:Lorg/apache/commons/collections4/n;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/PredicatedSortedMap;->valuePredicate:Lorg/apache/commons/collections4/n;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections4/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections4/n;Lorg/apache/commons/collections4/n;)V

    return-object v1
.end method
