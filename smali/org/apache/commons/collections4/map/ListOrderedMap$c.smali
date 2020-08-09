.class final Lorg/apache/commons/collections4/map/ListOrderedMap$c;
.super Lorg/apache/commons/collections4/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/c/d",
        "<TK;",
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

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/ListOrderedMap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/ListOrderedMap",
            "<TK;TV;>;",
            "Ljava/util/List",
            "<TK;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/c/d;-><init>(Ljava/util/Iterator;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$c;->b:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$c;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/ListOrderedMap$c;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$c;->b:Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap$d;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$c;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$c;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/ListOrderedMap$d;-><init>(Lorg/apache/commons/collections4/map/ListOrderedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-super {p0}, Lorg/apache/commons/collections4/c/d;->remove()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$c;->a:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->decorated()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/ListOrderedMap$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
