.class final Lorg/apache/commons/collections4/map/ListOrderedMap$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/map/ListOrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/ListOrderedMap",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/ListOrderedMap",
            "<TK;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$b;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$b;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$b;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$b$1;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$b;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/ListOrderedMap$b$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$b;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->size()I

    move-result v0

    return v0
.end method
