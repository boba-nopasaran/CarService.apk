.class final Lorg/apache/commons/collections4/map/StaticBucketMap$i;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/apache/commons/collections4/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$i;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap$i;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$i;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/StaticBucketMap$h;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$i;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/map/StaticBucketMap$h;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/StaticBucketMap$i;->a:Lorg/apache/commons/collections4/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
