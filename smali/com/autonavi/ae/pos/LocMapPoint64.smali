.class public Lcom/autonavi/ae/pos/LocMapPoint64;
.super Ljava/lang/Object;
.source "LocMapPoint64.java"


# instance fields
.field public lat:D

.field public lon:D

.field public zLevel:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/autonavi/ae/pos/LocMapPoint64;->lon:D

    iput-wide p3, p0, Lcom/autonavi/ae/pos/LocMapPoint64;->lat:D

    iput-wide p5, p0, Lcom/autonavi/ae/pos/LocMapPoint64;->zLevel:D

    return-void
.end method
