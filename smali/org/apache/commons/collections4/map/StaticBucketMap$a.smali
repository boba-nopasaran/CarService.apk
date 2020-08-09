.class Lorg/apache/commons/collections4/map/StaticBucketMap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private synthetic d:Lorg/apache/commons/collections4/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->d:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap$a;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->c:Ljava/util/Map$Entry;

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->c:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->b:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->d:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->d:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->b:I

    aget-object v2, v1, v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->d:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    move-result-object v1

    iget v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->b:I

    aget-object v1, v1, v3

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->b:I

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->c:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->d:Lorg/apache/commons/collections4/map/StaticBucketMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$a;->c:Ljava/util/Map$Entry;

    return-void
.end method
