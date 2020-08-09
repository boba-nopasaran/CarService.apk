.class final Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/collections4/queue/CircularFifoQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private synthetic d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->c:Z

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->c:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->a:I

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->c:Z

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->a:I

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->a:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->a:I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final remove()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    if-ne v0, v5, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    iget-object v4, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v4}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput v5, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->b:I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->f(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)Z

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->a:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->a:I

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I

    move-result v2

    if-lt v0, v2, :cond_4

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v3}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v3, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v4}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;->d:Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    invoke-static {v2, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I

    move-result v0

    goto :goto_1
.end method
