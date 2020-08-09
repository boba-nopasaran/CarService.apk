.class public interface abstract Lcom/autonavi/ae/guide/observer/GNaviObserver;
.super Ljava/lang/Object;
.source "GNaviObserver.java"


# virtual methods
.method public abstract ThreeDLastPass()V
.end method

.method public abstract arrayViaPoint(I)V
.end method

.method public abstract get3DDataVersion(I)I
.end method

.method public abstract hideCross()V
.end method

.method public abstract hideLaneInfo()V
.end method

.method public abstract navigationEnd(I)V
.end method

.method public abstract onCarOnGuideRouteAgain()V
.end method

.method public abstract onCheckNaviVoiceCfg(I)I
.end method

.method public abstract onExitDirectionInfo(Lcom/autonavi/ae/guide/model/GuideBoardInfo;)V
.end method

.method public abstract onNaviEtaIncidentReport(III)V
.end method

.method public abstract onNaviEtaIncidentReportHide(I)V
.end method

.method public abstract onNaviRenderManeuverIcon([BLcom/autonavi/ae/guide/model/ManeuverIconConfig;)V
.end method

.method public abstract onNaviShowManeuver(II[BI)V
.end method

.method public abstract onReroute(I)V
.end method

.method public abstract onServiceAreaUpdate([Lcom/autonavi/ae/guide/model/ServiceAreaInfo;)V
.end method

.method public abstract onTmcUpdate([Lcom/autonavi/ae/route/model/TmcBarItem;II)V
.end method

.method public abstract onfinishRecover3DPath(I)V
.end method

.method public abstract showCross(I[B[B)V
.end method

.method public abstract showLaneInfo([B[B)V
.end method

.method public abstract updateCameraInfo([Lcom/autonavi/ae/guide/model/NaviCamera;)V
.end method

.method public abstract updateCongestion(Lcom/autonavi/ae/guide/model/CongestionInfo;)V
.end method

.method public abstract updateCruiseInfo(Ljava/lang/String;)V
.end method

.method public abstract updateDataMiningTrafficEvent(Lcom/autonavi/ae/guide/model/TrafficEventInfo;)V
.end method

.method public abstract updateNaviInfo(Lcom/autonavi/ae/guide/model/NaviInfo;)V
.end method

.method public abstract updateRouteTrafficEvent(Lcom/autonavi/ae/guide/model/RouteTrafficEventInfo;)V
.end method

.method public abstract updateSoundFlag(II)V
.end method

.method public abstract updateTrafficEvent([Lcom/autonavi/ae/guide/model/TrafficEventInfo;I)V
.end method
