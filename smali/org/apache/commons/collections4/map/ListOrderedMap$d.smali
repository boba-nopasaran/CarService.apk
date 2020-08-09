.class final Lorg/apache/commons/collections4/map/ListOrderedMap$d;
.super Lorg/apache/commons/collections4/d/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/d/b",
        "<TK;TV;>;"
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


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/ListOrderedMap",
            "<TK;TV;>;TK;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/collections4/d/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$d;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$d;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$d;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
