.class public Lcom/autonavi/rtbt/RTBT;
.super Ljava/lang/Object;
.source "RTBT.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rtbt800"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native destroy()V
.end method

.method public native errorPointReport(IDD)I
.end method

.method public native getAllRouteID()[I
.end method

.method public native getConfirmReroute()I
.end method

.method public native getEndCoor()[D
.end method

.method public native getEndPoiID()Ljava/lang/String;
.end method

.method public native getEndPoiName()Ljava/lang/String;
.end method

.method public native getLinkCoor(II)[D
.end method

.method public native getLinkFormWay(II)I
.end method

.method public native getLinkIOFlag(II)I
.end method

.method public native getLinkIsBranched(II)I
.end method

.method public native getLinkLength(II)I
.end method

.method public native getLinkRoadClass(II)I
.end method

.method public native getLinkRoadName(II)Ljava/lang/String;
.end method

.method public native getLinkTime(II)I
.end method

.method public native getLinkType(II)I
.end method

.method public native getMileageInfo()Lcom/autonavi/rtbt/RMileageInfo;
.end method

.method public native getNaviGuideList()[Lcom/autonavi/rtbt/NaviGuideItem;
.end method

.method public native getNaviGuideSplitList()[Lcom/autonavi/rtbt/NaviGuideItem;
.end method

.method public native getNaviID()Ljava/lang/String;
.end method

.method public native getNaviStaticInfo()Lcom/autonavi/rtbt/NaviStaticInfo;
.end method

.method public native getRecentGPS(III)[Lcom/autonavi/rtbt/GPSDataInfo;
.end method

.method public native getRouteCrossingCount()I
.end method

.method public native getRouteHawkEyePoints()[Lcom/autonavi/rtbt/RPoint;
.end method

.method public native getRouteLength()I
.end method

.method public native getRouteMilestones()[Lcom/autonavi/rtbt/RMilestone;
.end method

.method public native getRouteSearchPoints()[Lcom/autonavi/rtbt/RPoint;
.end method

.method public native getRouteStrategy()I
.end method

.method public native getRouteTime()I
.end method

.method public native getRouteTravelTime()I
.end method

.method public native getSegChargeLength(I)I
.end method

.method public native getSegCoor(I)[D
.end method

.method public native getSegIndoor(I)I
.end method

.method public native getSegLength(I)I
.end method

.method public native getSegLinkNum(I)I
.end method

.method public native getSegNum()I
.end method

.method public native getSegTime(I)I
.end method

.method public native getSegTollCost(I)I
.end method

.method public native getStartCoor()[D
.end method

.method public native getStartDirection()I
.end method

.method public native getStartPoiID()Ljava/lang/String;
.end method

.method public native getStartPoiName()Ljava/lang/String;
.end method

.method public native getVersion()Ljava/lang/String;
.end method

.method public native haveTrafficLights(II)I
.end method

.method public native init(Lcom/autonavi/rtbt/IFrameForRTBT;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native pauseNavi()V
.end method

.method public native playNaviManual()I
.end method

.method public native pushRouteData(II[BI)I
.end method

.method public native receiveNetData(II[BI)V
.end method

.method public native requestRoute(III[DI[D)I
.end method

.method public native requestRouteWithStart(III[DI[DI[D)I
.end method

.method public native reroute(II)I
.end method

.method public native resumeNavi()V
.end method

.method public native selectRoute(I)I
.end method

.method public native setCarLocation(IDD)V
.end method

.method public native setEmulatorSpeed(I)V
.end method

.method public native setGPSInfo(IIDDDDDIIIIII)V
.end method

.method public native setNaviEnd(IDD)V
.end method

.method public native setNetRequestState(III)V
.end method

.method public native setParam(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setTimeForOneWord(I)V
.end method

.method public native startEmulatorNavi()I
.end method

.method public native startGPSNavi()I
.end method

.method public native stopEmulatorNavi()V
.end method

.method public native stopNavi()V
.end method
