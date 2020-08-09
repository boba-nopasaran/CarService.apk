.class Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b:I

    iget v0, p1, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->h:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->h:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c()V

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method protected final b()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b:I

    :goto_1
    if-nez v1, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, v1

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move v2, v1

    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->b:I

    if-nez v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->g:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->c()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->d:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->e:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->a:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$a;->h:I

    return-void
.end method
