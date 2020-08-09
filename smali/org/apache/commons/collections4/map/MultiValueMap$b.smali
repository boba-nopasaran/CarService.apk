.class final Lorg/apache/commons/collections4/map/MultiValueMap$b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/MultiValueMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/apache/commons/collections4/map/MultiValueMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->a:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/MultiValueMap$b;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->a:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/c/j;

    invoke-direct {v0}, Lorg/apache/commons/collections4/c/j;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->a:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/collections4/map/MultiValueMap$c;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->a:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/collections4/map/MultiValueMap$c;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/c/j;->a(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$b;->a:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/MultiValueMap;->totalSize()I

    move-result v0

    return v0
.end method
