.class public Lcom/autonavi/ae/pos/LocMapPoint;
.super Ljava/lang/Object;
.source "LocMapPoint.java"


# instance fields
.field public lat:I

.field public lon:I

.field public zLevel:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/ae/pos/LocMapPoint;->lon:I

    iput p2, p0, Lcom/autonavi/ae/pos/LocMapPoint;->lat:I

    iput p3, p0, Lcom/autonavi/ae/pos/LocMapPoint;->zLevel:I

    return-void
.end method
