.class final Lorg/apache/commons/collections4/map/StaticBucketMap$h;
.super Lorg/apache/commons/collections4/map/StaticBucketMap$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/map/StaticBucketMap",
        "<TK;TV;>.a;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/StaticBucketMap$a;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections4/map/StaticBucketMap;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/StaticBucketMap$h;-><init>(Lorg/apache/commons/collections4/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/StaticBucketMap$h;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
