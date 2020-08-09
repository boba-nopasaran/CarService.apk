.class final Lorg/apache/commons/collections4/map/a$b;
.super Lorg/apache/commons/collections4/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/c/c",
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
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections4/map/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/a",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/c/c;-><init>(Ljava/util/Iterator;)V

    iput-object p2, p0, Lorg/apache/commons/collections4/map/a$b;->a:Lorg/apache/commons/collections4/map/a;

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/a$b;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lorg/apache/commons/collections4/map/a$c;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/a$b;->a:Lorg/apache/commons/collections4/map/a;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections4/map/a$c;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections4/map/a;)V

    return-object v1
.end method
