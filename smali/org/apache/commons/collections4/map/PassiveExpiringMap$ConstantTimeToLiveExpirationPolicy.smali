.class public Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/PassiveExpiringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstantTimeToLiveExpirationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final timeToLiveMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->access$000(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    return-void
.end method


# virtual methods
.method public expirationTime(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)J"
        }
    .end annotation

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    iget-wide v6, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    sub-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;->timeToLiveMillis:J

    add-long/2addr v0, v2

    goto :goto_0
.end method
