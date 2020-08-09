.class public final Lorg/apache/commons/collections4/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/j;
.implements Lorg/apache/commons/collections4/r;


# annotations
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
        "Lorg/apache/commons/collections4/r;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/collections4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/j",
            "<+TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/j",
            "<TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/c/q;->a:Lorg/apache/commons/collections4/j;

    return-void
.end method

.method public static a(Lorg/apache/commons/collections4/j;)Lorg/apache/commons/collections4/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/j",
            "<TK;+TV;>;)",
            "Lorg/apache/commons/collections4/j",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OrderedMapIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections4/r;

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/c/q;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/c/q;-><init>(Lorg/apache/commons/collections4/j;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/c/q;->a:Lorg/apache/commons/collections4/j;

    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/c/q;->a:Lorg/apache/commons/collections4/j;

    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/c/q;->a:Lorg/apache/commons/collections4/j;

    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
