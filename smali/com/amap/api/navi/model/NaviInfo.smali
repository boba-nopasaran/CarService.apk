.class public Lcom/amap/api/navi/model/NaviInfo;
.super Ljava/lang/Object;
.source "NaviInfo.java"


# instance fields
.field private cameraCoord:Lcom/amap/api/navi/model/NaviLatLng;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private currentCoord:Lcom/amap/api/navi/model/NaviLatLng;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private currentSpeed:I

.field public m_CameraDist:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_CameraSpeed:I

.field public m_CameraType:I

.field public m_CarDirection:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_CurLinkNum:I

.field public m_CurPointNum:I

.field public m_CurRoadName:Ljava/lang/String;

.field public m_CurSegNum:I

.field public m_HawkIndex:I

.field public m_Icon:I

.field public m_Latitude:D

.field public m_LimitedSpeed:I

.field public m_Longitude:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_NextRoadName:Ljava/lang/String;

.field public m_RouteRemainDis:I

.field public m_RouteRemainTime:I

.field public m_SAPADist:I

.field public m_SAPAType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public m_SegRemainDis:I

.field public m_SegRemainTime:I

.field public m_SegTipsDis:I

.field public m_Split:I

.field public m_Type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/rtbt/DGNaviInfo;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_Type:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Type:I

    iget-object v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_CurRoadName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurRoadName:Ljava/lang/String;

    iget-object v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_NextRoadName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_NextRoadName:Ljava/lang/String;

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_SAPADist:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SAPADist:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_CameraDist:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraDist:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_CameraType:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraType:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_CameraSpeed:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraSpeed:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_RouteRemainDis:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainDis:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_RouteRemainTime:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainTime:I

    iget-wide v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_Latitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Latitude:D

    iget-wide v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_Longitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Longitude:D

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_SegRemainDis:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainDis:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_SegRemainTime:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainTime:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_CarDirection:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CarDirection:I

    new-instance v0, Lcom/amap/api/navi/model/NaviLatLng;

    iget-wide v2, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_Latitude:D

    iget-wide v4, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_Longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->currentCoord:Lcom/amap/api/navi/model/NaviLatLng;

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_CurSegNum:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurSegNum:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_CurLinkNum:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurLinkNum:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_CurPointNum:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurPointNum:I

    iget v0, p1, Lcom/autonavi/rtbt/DGNaviInfo;->m_Icon:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Icon:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/wtbt/DGNaviInfo;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_Type:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Type:I

    iget-object v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_CurRoadName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurRoadName:Ljava/lang/String;

    iget-object v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_NextRoadName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_NextRoadName:Ljava/lang/String;

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_SAPADist:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SAPADist:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_CameraDist:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraDist:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_CameraType:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraType:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_CameraSpeed:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraSpeed:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_RouteRemainDis:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainDis:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_RouteRemainTime:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainTime:I

    iget-wide v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_Latitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Latitude:D

    iget-wide v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_Longitude:D

    iput-wide v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Longitude:D

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_SegRemainDis:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainDis:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_SegRemainTime:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainTime:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_CarDirection:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CarDirection:I

    new-instance v0, Lcom/amap/api/navi/model/NaviLatLng;

    iget-wide v2, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_Latitude:D

    iget-wide v4, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_Longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->currentCoord:Lcom/amap/api/navi/model/NaviLatLng;

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_CurSegNum:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurSegNum:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_CurLinkNum:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurLinkNum:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_CurPointNum:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurPointNum:I

    iget v0, p1, Lcom/autonavi/wtbt/DGNaviInfo;->m_Icon:I

    iput v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Icon:I

    return-void
.end method


# virtual methods
.method public getCameraCoord()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->cameraCoord:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getCameraDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraDist:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraType:I

    return v0
.end method

.method public getCoord()Lcom/amap/api/navi/model/NaviLatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->currentCoord:Lcom/amap/api/navi/model/NaviLatLng;

    return-object v0
.end method

.method public getCurLink()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurLinkNum:I

    return v0
.end method

.method public getCurPoint()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurPointNum:I

    return v0
.end method

.method public getCurStep()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurSegNum:I

    return v0
.end method

.method public getCurStepRetainDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainDis:I

    return v0
.end method

.method public getCurStepRetainTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainTime:I

    return v0
.end method

.method public getCurrentRoadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSpeed()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->currentSpeed:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CarDirection:I

    return v0
.end method

.method public getIconType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Icon:I

    return v0
.end method

.method public getLimitSpeed()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraSpeed:I

    return v0
.end method

.method public getNaviType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Type:I

    return v0
.end method

.method public getNextRoadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_NextRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRetainDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainDis:I

    return v0
.end method

.method public getPathRetainTime()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainTime:I

    return v0
.end method

.method public getServiceAreaDistance()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SAPADist:I

    return v0
.end method

.method public setCameraCoord(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviInfo;->cameraCoord:Lcom/amap/api/navi/model/NaviLatLng;

    return-void
.end method

.method public setCameraDistance(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraDist:I

    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraType:I

    return-void
.end method

.method public setCoord(Lcom/amap/api/navi/model/NaviLatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviInfo;->currentCoord:Lcom/amap/api/navi/model/NaviLatLng;

    return-void
.end method

.method public setCurLink(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurLinkNum:I

    return-void
.end method

.method public setCurPoint(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurPointNum:I

    return-void
.end method

.method public setCurStep(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurSegNum:I

    return-void
.end method

.method public setCurStepRetainDistance(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainDis:I

    return-void
.end method

.method public setCurStepRetainTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainTime:I

    return-void
.end method

.method public setCurrentRoadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CurRoadName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->currentSpeed:I

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CarDirection:I

    return-void
.end method

.method public setIconType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Icon:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Latitude:D

    return-void
.end method

.method public setLimitSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_CameraSpeed:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Longitude:D

    return-void
.end method

.method public setNaviType(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_Type:I

    return-void
.end method

.method public setNextRoadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_NextRoadName:Ljava/lang/String;

    return-void
.end method

.method public setPathRetainDistance(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainDis:I

    return-void
.end method

.method public setPathRetainTime(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainTime:I

    return-void
.end method

.method public setServiceAreaDistance(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/NaviInfo;->m_SAPADist:I

    return-void
.end method
