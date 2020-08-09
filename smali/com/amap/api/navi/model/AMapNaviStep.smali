.class public Lcom/amap/api/navi/model/AMapNaviStep;
.super Ljava/lang/Object;
.source "AMapNaviStep.java"


# instance fields
.field private mAMapNaviLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviLink;",
            ">;"
        }
    .end annotation
.end field

.field private mChargeLength:I

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

.field private mEndIndex:I

.field private mLength:I

.field private mStartIndex:I

.field private mTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargeLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mChargeLength:I

    return v0
.end method

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

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mCoords:Ljava/util/List;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mEndIndex:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mLength:I

    return v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mAMapNaviLinks:Ljava/util/List;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mStartIndex:I

    return v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mTime:I

    return v0
.end method

.method public getTrafficLightNumber()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mAMapNaviLinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/AMapNaviLink;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviLink;->getTrafficLights()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setChargeLength(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mChargeLength:I

    return-void
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

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mCoords:Ljava/util/List;

    return-void
.end method

.method public setEndIndex(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mEndIndex:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mLength:I

    return-void
.end method

.method public setLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviLink;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mAMapNaviLinks:Ljava/util/List;

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mStartIndex:I

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/AMapNaviStep;->mTime:I

    return-void
.end method
