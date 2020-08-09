.class public final Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;
.super Lorg/apache/commons/collections4/f/b;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$a;,
        Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/f/b",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Lorg/apache/commons/collections4/r;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x174ab5b03b1856e1L


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/f/b;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    instance-of v0, p0, Lorg/apache/commons/collections4/r;

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public final add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
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

    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$b;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$b;-><init>(Ljava/util/Iterator;)V

    return-object v0
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

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    new-instance v3, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$a;

    aget-object v0, v2, v1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v3, v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$a;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v0, p1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move v2, v3

    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_0

    new-instance v4, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$a;

    aget-object v0, v1, v2

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v4, v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$a;-><init>(Ljava/util/Map$Entry;)V

    aput-object v4, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    array-length v0, v1

    array-length v2, p1

    if-le v0, v2, :cond_1

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    :goto_2
    return-object v0

    :cond_1
    array-length v0, v1

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, v1

    if-le v0, v2, :cond_2

    array-length v0, v1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_2
    move-object v0, p1

    goto :goto_2

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method
