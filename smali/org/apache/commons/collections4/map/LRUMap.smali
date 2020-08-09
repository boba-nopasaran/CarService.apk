.class public Lorg/apache/commons/collections4/map/LRUMap;
.super Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/commons/collections4/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractLinkedMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/commons/collections4/b",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_MAX_SIZE:I = 0x64

.field private static final serialVersionUID:J = -0x87eab066ef95b52L


# instance fields
.field private transient maxSize:I

.field private scanUntilRemovable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x64

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 2

    if-gtz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(IF)V

    if-gtz p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LRUMap max size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    iput p1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    iput-boolean p3, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entry.after=null, header.after"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " header.before"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Please check that your keys are immutable, and that you have used synchronization properly. If so, then please report this to dev@commons.apache.org as a bug."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v1

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1
    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reuse=null, header.after="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " header.before"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Please check that your keys are immutable, and that you have used synchronization properly. If so, then please report this to dev@commons.apache.org as a bug."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections4/map/LRUMap;->reuseMapping(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->clone()Lorg/apache/commons/collections4/map/LRUMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->clone()Lorg/apache/commons/collections4/map/LRUMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/LRUMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/LRUMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/LRUMap;

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScanUntilRemovable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    return v0
.end method

.method public maxSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    return v0
.end method

.method protected moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry.before is null. Please check that your keys are immutable, and that you have used synchronization properly. If so, then please report this to dev@commons.apache.org as a bug."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t move header to MRU (please report this to dev@commons.apache.org)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected reuseMapping(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry",
            "<TK;TV;>;IITK;TV;)V"
        }
    .end annotation

    :try_start_0
    iget v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->hashCode:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/map/LRUMap;->hashIndex(II)I

    move-result v2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v1, v0, v2

    const/4 v0, 0x0

    :goto_0
    if-eq v1, p1, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entry.next=null, data[removeIndex]="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " maxSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Please check that your keys are immutable, and that you have used synchronization properly. If so, then please report this to dev@commons.apache.org as a bug."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NPE, entry="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " entryIsHeader="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " maxSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Please check that your keys are immutable, and that you have used synchronization properly. If so, then please report this to dev@commons.apache.org as a bug."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_1
    iget v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/LRUMap;->reuseEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/LRUMap;->addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V

    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
