.class public interface abstract Lcom/autonavi/rtbt/IFrameForRTBT;
.super Ljava/lang/Object;
.source "IFrameForRTBT.java"

# interfaces
.implements Lcom/amap/api/col/de;


# virtual methods
.method public abstract GetDialect()I
.end method

.method public abstract PlayVoiceType(I)V
.end method

.method public abstract arriveWay(I)V
.end method

.method public abstract carLocationChange(Lcom/autonavi/rtbt/CarLocation;)V
.end method

.method public abstract carProjectionChange(Lcom/autonavi/rtbt/CarLocation;)V
.end method

.method public abstract endEmulatorNavi()V
.end method

.method public abstract getPlayState()I
.end method

.method public abstract lockScreenNaviTips(Ljava/lang/String;II)V
.end method

.method public abstract offRoute()V
.end method

.method public abstract playNaviSound(ILjava/lang/String;)V
.end method

.method public abstract requestHttp(IIILjava/lang/String;Ljava/lang/String;[BI)V
.end method

.method public abstract routeDestroy()V
.end method

.method public abstract setRouteRequestState(I)V
.end method

.method public abstract updateNaviInfo(Lcom/autonavi/rtbt/DGNaviInfo;)V
.end method

.method public abstract vibratePhoneTips(II)V
.end method
