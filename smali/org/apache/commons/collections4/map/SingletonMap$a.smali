.class final Lorg/apache/commons/collections4/map/SingletonMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/j;
.implements Lorg/apache/commons/collections4/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/SingletonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/j",
        "<TK;TV;>;",
        "Lorg/apache/commons/collections4/o",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/map/SingletonMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/SingletonMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/map/SingletonMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/SingletonMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->c:Z

    iput-object p1, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->a:Lorg/apache/commons/collections4/map/SingletonMap;

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

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->a:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->b:Z

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->c:Z

    iget-object v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->a:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "Iterator[]"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->c:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/SingletonMap$a;->a:Lorg/apache/commons/collections4/map/SingletonMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/SingletonMap$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
