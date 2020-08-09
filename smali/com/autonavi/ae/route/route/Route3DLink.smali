.class public Lcom/autonavi/ae/route/route/Route3DLink;
.super Ljava/lang/Object;
.source "Route3DLink.java"


# instance fields
.field private mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/autonavi/ae/route/route/Route3DLink;->mPtr:J

    return-void
.end method


# virtual methods
.method public native getCoor()[Lcom/autonavi/ae/route/model/Geo3DPoint;
.end method

.method public native getDist()I
.end method

.method public getRoute3DLinkId()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/route/route/Route3DLink;->mPtr:J

    return-wide v0
.end method
