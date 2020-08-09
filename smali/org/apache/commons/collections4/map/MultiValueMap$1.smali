.class final Lorg/apache/commons/collections4/map/MultiValueMap$1;
.super Lorg/apache/commons/collections4/c/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/map/MultiValueMap;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/c/k",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Iterator;

.field private synthetic b:Lorg/apache/commons/collections4/map/MultiValueMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->b:Lorg/apache/commons/collections4/map/MultiValueMap;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;

    invoke-direct {v2, v1}, Lorg/apache/commons/collections4/map/MultiValueMap$1$1;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/commons/collections4/c/m;

    new-instance v3, Lorg/apache/commons/collections4/map/MultiValueMap$c;

    iget-object v4, p0, Lorg/apache/commons/collections4/map/MultiValueMap$1;->b:Lorg/apache/commons/collections4/map/MultiValueMap;

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/collections4/map/MultiValueMap$c;-><init>(Lorg/apache/commons/collections4/map/MultiValueMap;Ljava/lang/Object;)V

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/collections4/c/m;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/q;)V

    goto :goto_0
.end method
