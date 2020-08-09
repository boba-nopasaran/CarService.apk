.class public final Lorg/apache/commons/collections4/map/StaticBucketMap;
.super Lorg/apache/commons/collections4/map/AbstractIterableMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/StaticBucketMap$i;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$e;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$c;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$d;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$h;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$b;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$a;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$f;,
        Lorg/apache/commons/collections4/map/StaticBucketMap$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractIterableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BUCKETS:I = 0xff


# instance fields
.field private final buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/map/StaticBucketMap$g",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;-><init>()V

    const/16 v0, 0x11

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    new-array v1, v0, [Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    new-array v1, v0, [Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    new-instance v4, Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    invoke-direct {v4, v2}, Lorg/apache/commons/collections4/map/StaticBucketMap$f;-><init>(B)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$g;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/map/StaticBucketMap;)[Lorg/apache/commons/collections4/map/StaticBucketMap$f;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/commons/collections4/map/StaticBucketMap;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private atomic(Ljava/lang/Runnable;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v1, v0, p2

    monitor-enter v1

    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getHash(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v1, v0, 0xf

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xb

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    array-length v1, v1

    rem-int/2addr v0, v1

    if-gez v0, :cond_0

    neg-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final atomic(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$f;->a:I

    monitor-exit v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
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

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v3, v2, v0

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v2, v2, v0

    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    if-eq v4, p1, :cond_0

    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    monitor-exit v3

    :cond_1
    return v1

    :cond_2
    iget-object v2, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    goto :goto_1

    :cond_3
    monitor-exit v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$c;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v1, v1, v0

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    iget-object v2, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    monitor-exit v1

    :goto_1
    return-object v0

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

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v4, v2, v0

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v2, v2, v0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    move-object v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    monitor-exit v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$e;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v3

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v4, v1, v3

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/collections4/map/StaticBucketMap$g;-><init>(B)V

    iput-object p1, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    iput-object p2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aput-object v1, v2, v3

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v1, v1, v3

    iget v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$f;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$f;->a:I

    monitor-exit v4

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    iget-object v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    iput-object p2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lorg/apache/commons/collections4/map/StaticBucketMap$g;-><init>(B)V

    iput-object p1, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    iput-object p2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    iput-object v1, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v1, v1, v3

    iget v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$f;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$f;->a:I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
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

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v3

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v4, v1, v3

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aget-object v2, v1, v3

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v5, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    if-eq v5, p1, :cond_0

    iget-object v5, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->a:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    iget-object v1, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    aput-object v1, v0, v3

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v0, v0, v3

    iget v1, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$f;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/apache/commons/collections4/map/StaticBucketMap$f;->a:I

    iget-object v0, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->b:Ljava/lang/Object;

    monitor-exit v4

    :goto_2
    return-object v0

    :cond_1
    iget-object v0, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    iput-object v0, v1, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, v2, Lorg/apache/commons/collections4/map/StaticBucketMap$g;->c:Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final size()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections4/map/StaticBucketMap$g;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v2, v2, v0

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections4/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections4/map/StaticBucketMap$f;

    aget-object v3, v3, v0

    iget v3, v3, Lorg/apache/commons/collections4/map/StaticBucketMap$f;->a:I

    add-int/2addr v1, v3

    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return v1
.end method

.method public final values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/map/StaticBucketMap$i;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V

    return-object v0
.end method
