.class final Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$b;
.super Lorg/apache/commons/collections4/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;
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


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/c/c;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$a;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$b;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$a;-><init>(Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
