.class public final Lorg/apache/commons/collections4/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/Iterator",
            "<+TE;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/c/j;->a:Ljava/util/Queue;

    iput-object v1, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    iput-object v1, p0, Lorg/apache/commons/collections4/c/j;->c:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/c/j;->d:Z

    return-void
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/c/j;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections4/c/j;->d:Z

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/commons/collections4/c/e;->a()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/c/j;->c:Ljava/util/Iterator;

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/collections4/c/j;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IteratorChain cannot be changed after the first use of a method from the Iterator interface"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/j;->a()V

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/j;->b()V

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/c/j;->c:Ljava/util/Iterator;

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/j;->a()V

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/j;->b()V

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections4/c/j;->c:Ljava/util/Iterator;

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/j;->a()V

    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/collections4/c/j;->b()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/c/j;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
