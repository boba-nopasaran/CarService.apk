.class public Lcom/amap/api/navi/model/AMapNaviInfo;
.super Ljava/lang/Object;
.source "AMapNaviInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private pathRemainDistance:I

.field private pathRemainTime:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviInfo;->pathRemainDistance:I

    iput p2, p0, Lcom/amap/api/navi/model/AMapNaviInfo;->pathRemainTime:I

    return-void
.end method


# virtual methods
.method public getPathRemainDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviInfo;->pathRemainDistance:I

    return v0
.end method

.method public getPathRemainTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviInfo;->pathRemainTime:I

    return v0
.end method
