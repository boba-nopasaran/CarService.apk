.class public Lorg/apache/commons/collections4/map/PassiveExpiringMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;,
        Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final expirationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final expiringPolicy:Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    new-instance v0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;-><init>(Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ConstantTimeToLiveExpirationPolicy;-><init>(J)V

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;-><init>(Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->validateAndConvertToMillis(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->validateAndConvertToMillis(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p4}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;-><init>(JLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;-><init>(JLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy",
            "<TK;TV;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;-><init>(Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->expirationMap:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Policy must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->expiringPolicy:Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;

    return-void
.end method

.method static synthetic access$000(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->validateAndConvertToMillis(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method private isExpired(JLjava/lang/Long;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private now()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->expiringPolicy:Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/map/PassiveExpiringMap$ExpirationPolicy;->expirationTime(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->expirationMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->map:Ljava/util/Map;

    return-void
.end method

.method private removeAllExpired(J)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->expirationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->isExpired(JLjava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeIfExpired(Ljava/lang/Object;J)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->expirationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->isExpired(JLjava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static validateAndConvertToMillis(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time unit must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->clear()V

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->expirationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->removeIfExpired(Ljava/lang/Object;J)V

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->removeAllExpired(J)V

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
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

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->removeAllExpired(J)V

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->removeIfExpired(Ljava/lang/Object;J)V

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->removeAllExpired(J)V

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->removeAllExpired(J)V

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->expirationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->removeAllExpired(J)V

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/PassiveExpiringMap;->removeAllExpired(J)V

    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
