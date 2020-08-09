.class public Lcom/amap/api/navi/AMapNaviViewOptions;
.super Ljava/lang/Object;
.source "AMapNaviViewOptions.java"


# static fields
.field public static final HUD_MIRROR_SHOW:I = 0x2

.field public static final HUD_NORMAL_SHOW:I = 0x1


# instance fields
.field private autoDrawRoute:Z

.field private carBitmap:Landroid/graphics/Bitmap;

.field private defaultOverBitmap:Landroid/graphics/Bitmap;

.field private defaultTrafficBitmap:Landroid/graphics/Bitmap;

.field private endBitmap:Landroid/graphics/Bitmap;

.field private fourCornersBitmap:Landroid/graphics/Bitmap;

.field private isAutoChangeZoom:Z

.field private isCameraInfoUpdateEnabled:Z

.field private isCompassEnabled:Z

.field private isLaneInfoShow:Z

.field private isLayoutVisible:Z

.field private isModelCrossDisplayShow:Z

.field private isNaviNight:Z

.field private isReCalculateRouteForTrafficJam:Z

.field private isReCalculateRouteForYaw:Z

.field private isRealCrossDisplayShow:Z

.field private isRouteListButtonShow:Z

.field private isScreenAlwaysBright:Z

.field private isSettingMenuEnabled:Z

.field private isTrafficBarEnabled:Z

.field private isTrafficInfoUpdateEnabled:Z

.field private isTrafficLayerEnabled:Z

.field private isTrafficLine:Z

.field private landscape:Landroid/graphics/Rect;

.field private leaderLineColor:I

.field private lockMapDelayed:J

.field private mRouteOverlayOptions:Lcom/amap/api/navi/model/RouteOverlayOptions;

.field private mapCenter_X:D

.field private mapCenter_Y:D

.field private mapStylePath:Ljava/lang/String;

.field private monitorBitmap:Landroid/graphics/Bitmap;

.field private pressedOverBitmap:Landroid/graphics/Bitmap;

.field private pressedTrafficBitmap:Landroid/graphics/Bitmap;

.field private startBitmap:Landroid/graphics/Bitmap;

.field private tilt:I

.field private vertical:Landroid/graphics/Rect;

.field private wayBitmap:Landroid/graphics/Bitmap;

.field private zoom:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->autoDrawRoute:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isModelCrossDisplayShow:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isRealCrossDisplayShow:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isLaneInfoShow:Z

    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->zoom:I

    const/16 v0, 0x29

    iput v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->tilt:I

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isCompassEnabled:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficBarEnabled:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficLayerEnabled:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isRouteListButtonShow:Z

    iput-boolean v2, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isNaviNight:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isScreenAlwaysBright:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficInfoUpdateEnabled:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isCameraInfoUpdateEnabled:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForYaw:Z

    iput-boolean v2, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForTrafficJam:Z

    iput-boolean v2, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isSettingMenuEnabled:Z

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficLine:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->leaderLineColor:I

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isLayoutVisible:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->lockMapDelayed:J

    iput-boolean v2, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isAutoChangeZoom:Z

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapCenter_X:D

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    iput-wide v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapCenter_Y:D

    return-void
.end method


# virtual methods
.method public getCarBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->carBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCustomMapStylePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapStylePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultOverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->defaultOverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDefaultTrafficBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->defaultTrafficBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEndMarker()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->endBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFourCornersBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->fourCornersBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLandscapeCross()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->landscape:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLeaderLineColor()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->leaderLineColor:I

    return v0
.end method

.method public getLockMapDelayed()J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->lockMapDelayed:J

    return-wide v0
.end method

.method public getMapCenter_X()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapCenter_X:D

    return-wide v0
.end method

.method public getMapCenter_Y()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapCenter_Y:D

    return-wide v0
.end method

.method public getMonitorMarker()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->monitorBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPressedOverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->pressedOverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPressedTrafficBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->pressedTrafficBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRouteOverlayOptions()Lcom/amap/api/navi/model/RouteOverlayOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mRouteOverlayOptions:Lcom/amap/api/navi/model/RouteOverlayOptions;

    return-object v0
.end method

.method public getStartMarker()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->startBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTilt()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->tilt:I

    return v0
.end method

.method public getVerticalCross()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->vertical:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWayMarker()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->wayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getZoom()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->zoom:I

    return v0
.end method

.method public isAutoChangeZoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isAutoChangeZoom:Z

    return v0
.end method

.method public isAutoDrawRoute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->autoDrawRoute:Z

    return v0
.end method

.method public isCameraInfoUpdateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isCameraInfoUpdateEnabled:Z

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isCompassEnabled:Z

    return v0
.end method

.method public isLaneInfoShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isLaneInfoShow:Z

    return v0
.end method

.method public isLayoutVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isLayoutVisible:Z

    return v0
.end method

.method public isLeaderLineEnabled()Z
    .locals 2

    iget v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->leaderLineColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModelCrossDisplayShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isModelCrossDisplayShow:Z

    return v0
.end method

.method public isNaviNight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isNaviNight:Z

    return v0
.end method

.method public isReCalculateRouteForTrafficJam()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForTrafficJam:Z

    return v0
.end method

.method public isReCalculateRouteForYaw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForYaw:Z

    return v0
.end method

.method public isRealCrossDisplayShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isRealCrossDisplayShow:Z

    return v0
.end method

.method public isRouteListButtonShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isRouteListButtonShow:Z

    return v0
.end method

.method public isScreenAlwaysBright()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isScreenAlwaysBright:Z

    return v0
.end method

.method public isSettingMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isSettingMenuEnabled:Z

    return v0
.end method

.method public isTrafficBarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficBarEnabled:Z

    return v0
.end method

.method public isTrafficInfoUpdateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficInfoUpdateEnabled:Z

    return v0
.end method

.method public isTrafficLayerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficLayerEnabled:Z

    return v0
.end method

.method public isTrafficLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficLine:Z

    return v0
.end method

.method public setAutoChangeZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isAutoChangeZoom:Z

    return-void
.end method

.method public setAutoDrawRoute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->autoDrawRoute:Z

    return-void
.end method

.method public setCameraInfoUpdateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isCameraInfoUpdateEnabled:Z

    return-void
.end method

.method public setCarBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->carBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCompassEnabled(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isCompassEnabled:Z

    return-void
.end method

.method public setCrossDisplayShow(Z)V
    .locals 0

    if-nez p1, :cond_0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isModelCrossDisplayShow:Z

    :cond_0
    return-void
.end method

.method public setCrossLocation(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->landscape:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->vertical:Landroid/graphics/Rect;

    return-void
.end method

.method public setCustomMapStylePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapStylePath:Ljava/lang/String;

    return-void
.end method

.method public setEndPointBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->endBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFourCornersBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->fourCornersBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setLaneInfoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isLaneInfoShow:Z

    return-void
.end method

.method public setLayoutVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isLayoutVisible:Z

    return-void
.end method

.method public setLeaderLineEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->leaderLineColor:I

    return-void
.end method

.method public setLockMapDelayed(J)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->lockMapDelayed:J

    return-void
.end method

.method public setMonitorCameraBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->monitorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMonitorCameraEnabled(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public setNaviNight(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isNaviNight:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapStylePath:Ljava/lang/String;

    return-void
.end method

.method public setOverBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->defaultOverBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->pressedOverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPointToCenter(DD)V
    .locals 1

    iput-wide p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapCenter_X:D

    iput-wide p3, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mapCenter_Y:D

    return-void
.end method

.method public setReCalculateRouteForTrafficJam(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForTrafficJam:Z

    return-void
.end method

.method public setReCalculateRouteForYaw(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForYaw:Z

    return-void
.end method

.method public setRealCrossDisplayShow(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isRealCrossDisplayShow:Z

    :cond_0
    return-void
.end method

.method public setRouteListButtonShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isRouteListButtonShow:Z

    return-void
.end method

.method public setRouteOverlayOptions(Lcom/amap/api/navi/model/RouteOverlayOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->mRouteOverlayOptions:Lcom/amap/api/navi/model/RouteOverlayOptions;

    return-void
.end method

.method public setScreenAlwaysBright(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isScreenAlwaysBright:Z

    return-void
.end method

.method public setSettingMenuEnabled(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isSettingMenuEnabled:Z

    return-void
.end method

.method public setStartPointBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->startBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTilt(I)V
    .locals 1

    const/16 v0, 0x3c

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->tilt:I

    return-void

    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public setTrafficBarEnabled(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficBarEnabled:Z

    return-void
.end method

.method public setTrafficBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->defaultTrafficBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->pressedTrafficBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setTrafficInfoUpdateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficInfoUpdateEnabled:Z

    return-void
.end method

.method public setTrafficLayerEnabled(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficLayerEnabled:Z

    return-void
.end method

.method public setTrafficLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficLine:Z

    return-void
.end method

.method public setWayPointBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->wayBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setZoom(I)V
    .locals 2

    const/16 v1, 0x13

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/amap/api/navi/AMapNaviViewOptions;->zoom:I

    return-void

    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method
