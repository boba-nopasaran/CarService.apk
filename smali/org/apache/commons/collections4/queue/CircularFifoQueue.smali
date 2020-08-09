.class public Lorg/apache/commons/collections4/queue/CircularFifoQueue;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Queue;
.implements Lorg/apache/commons/collections4/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Lorg/apache/commons/collections4/a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient b:I

.field private transient c:I

.field private transient d:Z

.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d:Z

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    return v0
.end method

.method static synthetic a(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method static synthetic b(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method static synthetic b(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d:Z

    return v0
.end method

.method static synthetic c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    return v0
.end method

.method static synthetic c(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 0

    iput p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    return p1
.end method

.method static synthetic d(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    return v0
.end method

.method static synthetic f(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d:Z

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to add null object to queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->size()I

    move-result v0

    iget v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    aput-object p1, v0, v3

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    iget v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    if-lt v0, v3, :cond_2

    iput v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    iget v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    if-ne v0, v2, :cond_3

    iput-boolean v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d:Z

    :cond_3
    return v1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d:Z

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "The specified index (%1$d) is outside the available range [0, %2$d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;-><init>(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->a:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    iget v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    if-lt v1, v2, :cond_1

    iput v4, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    :cond_1
    iput-boolean v4, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d:Z

    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->e:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->c:I

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
