.class final Lorg/apache/commons/collections4/map/ListOrderedMap$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/map/ListOrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/ListOrderedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/ListOrderedMap",
            "<TK;TV;>;",
            "Ljava/util/List",
            "<TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->b:Ljava/util/List;

    return-void
.end method

.method private a()Ljava/util/Set;
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

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->c:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$c;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/ListOrderedMap$c;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap;Ljava/util/List;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
