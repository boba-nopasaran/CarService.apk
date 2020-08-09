.class abstract Lorg/apache/commons/collections4/map/a;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/a$c;,
        Lorg/apache/commons/collections4/map/a$b;,
        Lorg/apache/commons/collections4/map/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected abstract checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a;->isSetValueChecking()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/collections4/map/a$a;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/a;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lorg/apache/commons/collections4/map/a$a;-><init>(Lorg/apache/commons/collections4/map/a;Ljava/util/Set;Lorg/apache/commons/collections4/map/a;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/a;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method protected isSetValueChecking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
