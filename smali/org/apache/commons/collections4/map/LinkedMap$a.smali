.class final Lorg/apache/commons/collections4/map/LinkedMap$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/LinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/map/LinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/LinkedMap",
            "<TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/LinkedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/LinkedMap",
            "<TK;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/c/n;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TK;>;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/c/o;->a(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TK;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/c/o;->a(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->size()I

    move-result v0

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/e/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap$a;->a:Lorg/apache/commons/collections4/map/LinkedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/LinkedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
