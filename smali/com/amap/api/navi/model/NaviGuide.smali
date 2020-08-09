.class public Lcom/amap/api/navi/model/NaviGuide;
.super Lcom/autonavi/wtbt/NaviGuideItem;
.source "NaviGuide.java"


# instance fields
.field public aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

.field private coord:Lcom/amap/api/navi/model/NaviLatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/wtbt/NaviGuideItem;-><init>()V

    new-instance v0, Lcom/amap/api/navi/model/AMapNaviGuide;

    invoke-direct {v0}, Lcom/amap/api/navi/model/AMapNaviGuide;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/rtbt/NaviGuideItem;)V
    .locals 6

    invoke-direct {p0}, Lcom/autonavi/wtbt/NaviGuideItem;-><init>()V

    iget v0, p1, Lcom/autonavi/rtbt/NaviGuideItem;->m_Length:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Length:I

    iget v0, p1, Lcom/autonavi/rtbt/NaviGuideItem;->m_Icon:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Icon:I

    iget-object v0, p1, Lcom/autonavi/rtbt/NaviGuideItem;->m_Name:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Name:Ljava/lang/String;

    iget v0, p1, Lcom/autonavi/rtbt/NaviGuideItem;->m_UseTime:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_UseTime:I

    new-instance v0, Lcom/amap/api/navi/model/NaviLatLng;

    iget-wide v2, p1, Lcom/autonavi/rtbt/NaviGuideItem;->m_Latitude:D

    iget-wide v4, p1, Lcom/autonavi/rtbt/NaviGuideItem;->m_Longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->coord:Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v0, Lcom/amap/api/navi/model/AMapNaviGuide;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/model/AMapNaviGuide;-><init>(Lcom/amap/api/navi/model/NaviGuide;)V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/wtbt/NaviGuideItem;)V
    .locals 6

    invoke-direct {p0}, Lcom/autonavi/wtbt/NaviGuideItem;-><init>()V

    iget v0, p1, Lcom/autonavi/wtbt/NaviGuideItem;->m_Length:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Length:I

    iget v0, p1, Lcom/autonavi/wtbt/NaviGuideItem;->m_Icon:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Icon:I

    iget-object v0, p1, Lcom/autonavi/wtbt/NaviGuideItem;->m_Name:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Name:Ljava/lang/String;

    iget v0, p1, Lcom/autonavi/wtbt/NaviGuideItem;->m_UseTime:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_UseTime:I

    new-instance v0, Lcom/amap/api/navi/model/NaviLatLng;

    iget-wide v2, p1, Lcom/autonavi/wtbt/NaviGuideItem;->m_Latitude:D

    iget-wide v4, p1, Lcom/autonavi/wtbt/NaviGuideItem;->m_Longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->coord:Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v0, Lcom/amap/api/navi/model/AMapNaviGuide;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/model/AMapNaviGuide;-><init>(Lcom/amap/api/navi/model/NaviGuide;)V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    return-void
.end method


# virtual methods
.method public getCoord()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->coord:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Icon:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Length:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_UseTime:I

    return v0
.end method

.method public setCoord(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviGuide;->coord:Lcom/amap/api/navi/model/NaviLatLng;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    iget-object v1, p0, Lcom/amap/api/navi/model/NaviGuide;->coord:Lcom/amap/api/navi/model/NaviLatLng;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviGuide;->setCoord(Lcom/amap/api/navi/model/NaviLatLng;)V

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Latitude:D

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Longitude:D

    return-void
.end method

.method public setIconType(I)V
    .locals 2

    iput p1, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Icon:I

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    iget v1, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Icon:I

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviGuide;->setIconType(I)V

    return-void
.end method

.method public setLength(I)V
    .locals 2

    iput p1, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Length:I

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    iget v1, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Length:I

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviGuide;->setLength(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Name:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    iget-object v1, p0, Lcom/amap/api/navi/model/NaviGuide;->m_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviGuide;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setTime(I)V
    .locals 2

    iput p1, p0, Lcom/amap/api/navi/model/NaviGuide;->m_UseTime:I

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviGuide;->aMapNaviGuide:Lcom/amap/api/navi/model/AMapNaviGuide;

    iget v1, p0, Lcom/amap/api/navi/model/NaviGuide;->m_UseTime:I

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/model/AMapNaviGuide;->setTime(I)V

    return-void
.end method
