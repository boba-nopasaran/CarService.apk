.class public Lcom/autonavi/ae/route/route/Route3D;
.super Ljava/lang/Object;
.source "Route3D.java"


# instance fields
.field private mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/route/route/Route3D;->mPtr:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/route/route/Route3D;->mPtr:J

    iput-wide p1, p0, Lcom/autonavi/ae/route/route/Route3D;->mPtr:J

    return-void
.end method


# virtual methods
.method public getRoute3DId()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/route/route/Route3D;->mPtr:J

    return-wide v0
.end method

.method public native getRoute3DLink(I)Lcom/autonavi/ae/route/route/Route3DLink;
.end method

.method public native getRoute3DLinkNum()I
.end method
