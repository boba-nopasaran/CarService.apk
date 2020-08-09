.class public interface abstract Lcom/amap/api/navi/INavi;
.super Ljava/lang/Object;
.source "INavi.java"


# virtual methods
.method public abstract addAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
.end method

.method public abstract calculateDriveRoute(Ljava/util/List;Ljava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public abstract calculateDriveRoute(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public abstract calculateRideRoute(Lcom/amap/api/navi/model/NaviLatLng;)Z
.end method

.method public abstract calculateRideRoute(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
.end method

.method public abstract calculateWalkRoute(Lcom/amap/api/navi/model/NaviLatLng;)Z
.end method

.method public abstract calculateWalkRoute(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getEngineType()I
.end method

.method public abstract getIsUseExtraGPSData()Z
.end method

.method public abstract getNaviGuideList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapNaviGuide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNaviInfo()Lcom/amap/api/navi/model/NaviInfo;
.end method

.method public abstract getNaviPath()Lcom/amap/api/navi/model/AMapNaviPath;
.end method

.method public abstract getNaviPaths()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/navi/model/AMapNaviPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNaviSetting()Lcom/amap/api/navi/NaviSetting;
.end method

.method public abstract getNaviType()I
.end method

.method public abstract getTrafficStatuses(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapTrafficStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isGpsReady()Z
.end method

.method public abstract pauseNavi()V
.end method

.method public abstract reCalculateRoute(I)Z
.end method

.method public abstract readNaviInfo()Z
.end method

.method public abstract readTrafficInfo(I)Z
.end method

.method public abstract removeAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V
.end method

.method public abstract resumeNavi()V
.end method

.method public abstract selectRouteId(I)Z
.end method

.method public abstract setBroadcastMode(I)Z
.end method

.method public abstract setCarInfo(Lcom/amap/api/navi/model/AMapCarInfo;)V
.end method

.method public abstract setCarNumber(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setConnectionTimeout(I)V
.end method

.method public abstract setDetectedMode(I)V
.end method

.method public abstract setEmulatorNaviSpeed(I)V
.end method

.method public abstract setExtraGPSData(ILandroid/location/Location;)V
.end method

.method public abstract setExtraGPSData(Landroid/location/Location;)V
.end method

.method public abstract setIsUseExtraGPSData(Z)V
.end method

.method public abstract setReCalculateRouteForTrafficJam(Z)V
.end method

.method public abstract setReCalculateRouteForYaw(Z)V
.end method

.method public abstract setSoTimeout(I)V
.end method

.method public abstract setTimeForOneWord(I)V
.end method

.method public abstract startAimlessMode(I)V
.end method

.method public abstract startGPS()Z
.end method

.method public abstract startGPS(JI)Z
.end method

.method public abstract startNavi(I)Z
.end method

.method public abstract stopAimlessMode()V
.end method

.method public abstract stopGPS()Z
.end method

.method public abstract stopNavi()V
.end method

.method public abstract strategyConvert(ZZZZZ)I
.end method

.method public abstract switchParallelRoad()V
.end method
