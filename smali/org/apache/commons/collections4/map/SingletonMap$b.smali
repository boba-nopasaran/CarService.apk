.class final Lorg/apache/commons/collections4/map/SingletonMap$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/SingletonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/map/SingletonMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/SingletonMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/SingletonMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/SingletonMap",
            "<*TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/SingletonMap$b;->a:Lorg/apache/commons/collections4/map/SingletonMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$b;->a:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/SingletonMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/c/l;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/SingletonMap$b;->a:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/c/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
