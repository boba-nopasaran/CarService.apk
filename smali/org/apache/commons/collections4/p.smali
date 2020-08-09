.class public final Lorg/apache/commons/collections4/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections4/l;
.implements Lorg/apache/commons/collections4/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/p;->b:Ljava/util/List;

    iput v1, p0, Lorg/apache/commons/collections4/p;->c:I

    iput v1, p0, Lorg/apache/commons/collections4/p;->d:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/collections4/p;->c:I

    iget v1, p0, Lorg/apache/commons/collections4/p;->d:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/p;->c:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/p;->c:I

    iget v1, p0, Lorg/apache/commons/collections4/p;->d:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/apache/commons/collections4/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/p;->c:I

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->b:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/collections4/p;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/p;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/apache/commons/collections4/p;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/p;->c:I

    iget v1, p0, Lorg/apache/commons/collections4/p;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/p;->d:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/collections4/p;->e:Z

    goto :goto_0
.end method

.method public final nextIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/p;->c:I

    goto :goto_0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/p;->c:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lorg/apache/commons/collections4/p;->d:I

    iget v1, p0, Lorg/apache/commons/collections4/p;->c:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/collections4/p;->e:Z

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->b:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/collections4/p;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/p;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final previousIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/p;->c:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final remove()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/p;->c:I

    iget v1, p0, Lorg/apache/commons/collections4/p;->c:I

    iget v2, p0, Lorg/apache/commons/collections4/p;->d:I

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/collections4/p;->e:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/commons/collections4/p;->d:I

    iget v2, p0, Lorg/apache/commons/collections4/p;->c:I

    sub-int/2addr v1, v2

    if-le v1, v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot remove element at index {0}."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lorg/apache/commons/collections4/p;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput v0, p0, Lorg/apache/commons/collections4/p;->c:I

    iget v0, p0, Lorg/apache/commons/collections4/p;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/p;->d:I

    iput-boolean v4, p0, Lorg/apache/commons/collections4/p;->e:Z

    goto :goto_0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/util/ListIterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/p;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIteratorWrapper does not support optional operations of ListIterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
