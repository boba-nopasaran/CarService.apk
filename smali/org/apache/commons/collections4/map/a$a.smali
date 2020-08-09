.class final Lorg/apache/commons/collections4/map/a$a;
.super Lorg/apache/commons/collections4/f/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/f/b",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/map/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/a",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/a;Ljava/util/Set;Lorg/apache/commons/collections4/map/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lorg/apache/commons/collections4/map/a",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/f/b;-><init>(Ljava/util/Set;)V

    iput-object p3, p0, Lorg/apache/commons/collections4/map/a$a;->a:Lorg/apache/commons/collections4/map/a;

    return-void
.end method


# virtual methods
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

    new-instance v0, Lorg/apache/commons/collections4/map/a$b;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a$a;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/a$a;->a:Lorg/apache/commons/collections4/map/a;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/a$b;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/map/a;)V

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a$a;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    new-instance v3, Lorg/apache/commons/collections4/map/a$c;

    aget-object v0, v2, v1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/a$a;->a:Lorg/apache/commons/collections4/map/a;

    invoke-direct {v3, v0, v4}, Lorg/apache/commons/collections4/map/a$c;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/a;)V

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
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
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a$a;->decorated()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move v2, v3

    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_0

    new-instance v4, Lorg/apache/commons/collections4/map/a$c;

    aget-object v0, v1, v2

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v5, p0, Lorg/apache/commons/collections4/map/a$a;->a:Lorg/apache/commons/collections4/map/a;

    invoke-direct {v4, v0, v5}, Lorg/apache/commons/collections4/map/a$c;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/a;)V

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
