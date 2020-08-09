.class final Lorg/apache/commons/collections4/map/AbstractReferenceMap$c;
.super Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
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
        "Lorg/apache/commons/collections4/map/AbstractReferenceMap$a",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$c;->a()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method
