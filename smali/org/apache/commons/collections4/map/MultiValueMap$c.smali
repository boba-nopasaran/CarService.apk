.class final Lorg/apache/commons/collections4/map/MultiValueMap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field

.field private synthetic d:Lorg/apache/commons/collections4/map/MultiValueMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->d:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/map/MultiValueMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->b:Ljava/util/Collection;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->d:Lorg/apache/commons/collections4/map/MultiValueMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
