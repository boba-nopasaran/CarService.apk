.class public Lorg/apache/commons/collections4/map/Flat3Map;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/commons/collections4/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/Flat3Map$i;,
        Lorg/apache/commons/collections4/map/Flat3Map$h;,
        Lorg/apache/commons/collections4/map/Flat3Map$g;,
        Lorg/apache/commons/collections4/map/Flat3Map$f;,
        Lorg/apache/commons/collections4/map/Flat3Map$c;,
        Lorg/apache/commons/collections4/map/Flat3Map$a;,
        Lorg/apache/commons/collections4/map/Flat3Map$d;,
        Lorg/apache/commons/collections4/map/Flat3Map$b;,
        Lorg/apache/commons/collections4/map/Flat3Map$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/commons/collections4/g",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5cff0b811e8e7b68L


# instance fields
.field private transient delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hash1:I

.field private transient hash2:I

.field private transient hash3:I

.field private transient key1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient key2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient key3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient size:I

.field private transient value1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient value2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient value3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/commons/collections4/map/Flat3Map;)Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-object v0
.end method

.method private convertToMap()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_3
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iput-object v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/commons/collections4/j;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clear()V

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->clone()Lorg/apache/commons/collections4/map/Flat3Map;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/Flat3Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/Flat3Map",
            "<TK;TV;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/Flat3Map;

    iget-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_3

    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :cond_4
    :pswitch_3
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    :pswitch_5
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_3

    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :cond_4
    :pswitch_3
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :pswitch_5
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$b;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Ljava/util/Map;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Ljava/util/Map;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v2, :cond_0

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :cond_5
    :pswitch_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_9
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_b

    if-eqz v2, :cond_5

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v3, :cond_d

    if-eqz v2, :cond_0

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_4

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :cond_5
    :pswitch_3
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    :pswitch_5
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashCode()I

    move-result v1

    :goto_0
    :pswitch_0
    return v1

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x0

    :goto_2
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v2, :cond_2

    move v2, v1

    :goto_3
    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    :goto_4
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v3, :cond_3

    :goto_5
    xor-int/2addr v1, v2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :pswitch_2
    move v0, v1

    goto :goto_2

    :pswitch_3
    move v0, v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$f;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$f;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    goto :goto_0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/j",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/commons/collections4/c/f;->a()Lorg/apache/commons/collections4/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$e;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$e;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_4

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v2, :pswitch_data_1

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->convertToMap()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :pswitch_1
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v3, :pswitch_data_2

    goto :goto_1

    :cond_5
    :pswitch_3
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v3, v2, :cond_6

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    :pswitch_5
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v3, v2, :cond_5

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    if-nez p1, :cond_7

    :goto_2
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    :goto_3
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :pswitch_7
    if-nez p1, :cond_8

    :goto_4
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :pswitch_8
    if-nez p1, :cond_9

    :goto_5
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->convertToMap()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eqz v1, :cond_0

    if-nez p1, :cond_5

    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_5
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v1, :cond_8

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    move-object v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2c

    const/16 v2, 0x3d

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    const-string v0, "{}"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-ne v0, p0, :cond_2

    const-string v0, "(this Map)"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-ne v0, p0, :cond_3

    const-string v0, "(this Map)"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-ne v0, p0, :cond_4

    const-string v0, "(this Map)"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-ne v0, p0, :cond_5

    const-string v0, "(this Map)"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const-string v0, "(this Map)"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-ne v0, p0, :cond_7

    const-string v0, "(this Map)"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$h;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$h;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    goto :goto_0
.end method
