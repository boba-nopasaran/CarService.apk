.class public Lorg/apache/commons/collections4/map/LinkedMap;
.super Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/LinkedMap$a;
    }
.end annotation

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
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7df8d0862476476aL


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(Ljava/util/Map;)V

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

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

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

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/LinkedMap$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/LinkedMap$a;-><init>(Lorg/apache/commons/collections4/map/LinkedMap;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LinkedMap;->clone()Lorg/apache/commons/collections4/map/LinkedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LinkedMap;->clone()Lorg/apache/commons/collections4/map/LinkedMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/LinkedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/LinkedMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/LinkedMap;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->getEntry(I)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->getEntry(I)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/LinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/LinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v3, :cond_1

    iget-object v3, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections4/map/LinkedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v1

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LinkedMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LinkedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
