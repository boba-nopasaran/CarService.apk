.class public Lcom/amap/api/navi/model/AMapNaviLink;
.super Ljava/lang/Object;
.source "AMapNaviLink.java"


# instance fields
.field private mCoords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTrafficLightIn:Z

.field private mLength:I

.field private mRoadClass:I

.field private mRoadName:Ljava/lang/String;

.field private mRoadType:I

.field private mTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mCoords:Ljava/util/List;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mLength:I

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mRoadClass:I

    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mRoadType:I

    return v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mTime:I

    return v0
.end method

.method public getTrafficLights()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mIsTrafficLightIn:Z

    return v0
.end method

.method public setCoords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mCoords:Ljava/util/List;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mLength:I

    return-void
.end method

.method public setRoadClass(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mRoadClass:I

    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mRoadName:Ljava/lang/String;

    return-void
.end method

.method public setRoadType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mRoadType:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mTime:I

    return-void
.end method

.method public setTrafficLights(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/model/AMapNaviLink;->mIsTrafficLightIn:Z

    return-void
.end method
