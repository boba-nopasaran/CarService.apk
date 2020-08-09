.class final Lorg/apache/commons/collections4/map/StaticBucketMap$e;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/apache/commons/collections4/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap$e;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$d;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/StaticBucketMap$d;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$900(Lorg/apache/commons/collections4/map/StaticBucketMap;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    move-result-object v1

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections4/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    move-result-object v2

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_1
    return v0

    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    goto :goto_0

    :cond_2
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
