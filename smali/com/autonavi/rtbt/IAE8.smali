.class public interface abstract Lcom/autonavi/rtbt/IAE8;
.super Ljava/lang/Object;
.source "IAE8.java"

# interfaces
.implements Lcom/amap/api/col/dd;


# virtual methods
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

.method public abstract getAllRouteID()[I
.end method

.method public abstract getMultipleNaviPathsCalculated()Ljava/util/HashMap;
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

.method public abstract isCalculateMultipleRoutes()Z
.end method

.method public abstract reCalculateRoute(I)Z
.end method

.method public abstract readNaviInfo()Z
.end method

.method public abstract readTrafficInfo(I)Z
.end method

.method public abstract refreshTrafficStatuses()V
.end method

.method public abstract setBroadcastMode(I)Z
.end method

.method public abstract setCameraInfoUpdateEnabled(Z)V
.end method

.method public abstract setCarInfo(Lcom/amap/api/navi/model/AMapCarInfo;)V
.end method

.method public abstract setCarNumber(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDetectedMode(I)V
.end method

.method public abstract setReCalculateRouteForTrafficJam(Z)V
.end method

.method public abstract setReCalculateRouteForYaw(Z)V
.end method

.method public abstract setTrafficInfoUpdateEnabled(Z)V
.end method

.method public abstract setTrafficStatusUpdateEnabled(Z)V
.end method

.method public abstract startAimlessMode(I)V
.end method

.method public abstract stopAimlessMode()V
.end method

.method public abstract strategyConvert(ZZZZZ)I
.end method

.method public abstract switchParallelRoad()V
.end method
