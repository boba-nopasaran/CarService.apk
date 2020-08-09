.class public Lcom/car/common/map/Gps;
.super Ljava/lang/Object;
.source "Gps.java"


# instance fields
.field private wgLat:D

.field private wgLon:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/car/common/map/Gps;->setWgLat(D)V

    invoke-virtual {p0, p3, p4}, Lcom/car/common/map/Gps;->setWgLon(D)V

    return-void
.end method


# virtual methods
.method public getWgLat()D
    .locals 2

    iget-wide v0, p0, Lcom/car/common/map/Gps;->wgLat:D

    return-wide v0
.end method

.method public getWgLon()D
    .locals 2

    iget-wide v0, p0, Lcom/car/common/map/Gps;->wgLon:D

    return-wide v0
.end method

.method public setWgLat(D)V
    .locals 1

    iput-wide p1, p0, Lcom/car/common/map/Gps;->wgLat:D

    return-void
.end method

.method public setWgLon(D)V
    .locals 1

    iput-wide p1, p0, Lcom/car/common/map/Gps;->wgLon:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/car/common/map/Gps;->wgLat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/car/common/map/Gps;->wgLon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
