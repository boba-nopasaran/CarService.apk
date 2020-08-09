.class public Lcom/amap/api/navi/model/AMapTrafficStatus;
.super Ljava/lang/Object;
.source "AMapTrafficStatus.java"


# instance fields
.field private mLength:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Lcom/autonavi/ae/route/model/TmcBarItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/autonavi/ae/route/model/TmcBarItem;->status:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapTrafficStatus;->mStatus:I

    iget v0, p1, Lcom/autonavi/ae/route/model/TmcBarItem;->length:I

    iput v0, p0, Lcom/amap/api/navi/model/AMapTrafficStatus;->mLength:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapTrafficStatus;->mLength:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapTrafficStatus;->mStatus:I

    return v0
.end method

.method setLength(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapTrafficStatus;->mLength:I

    return-void
.end method

.method setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapTrafficStatus;->mStatus:I

    return-void
.end method
