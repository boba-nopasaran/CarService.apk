.class public Lcom/amap/api/navi/AMapNaviView;
.super Landroid/widget/FrameLayout;
.source "AMapNaviView.java"


# static fields
.field public static final CAR_UP_MODE:I = 0x0

.field public static final NORTH_UP_MODE:I = 0x1


# instance fields
.field private core:Lcom/amap/api/navi/IAMapNaviView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/navi/AMapNaviView;->init(Lcom/amap/api/navi/AMapNaviViewOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/navi/AMapNaviView;->init(Lcom/amap/api/navi/AMapNaviViewOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/navi/AMapNaviView;->init(Lcom/amap/api/navi/AMapNaviViewOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/navi/AMapNaviViewOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/amap/api/navi/AMapNaviView;->init(Lcom/amap/api/navi/AMapNaviViewOptions;)V

    return-void
.end method

.method private init(Lcom/amap/api/navi/AMapNaviViewOptions;)V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/navi/AMapNaviView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapNaviView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/col/ds;->a()Lcom/amap/api/col/eo;

    move-result-object v1

    const-string v2, "com.amap.api.navi.wrapper.AMapNaviViewWrapper"

    const-class v3, Lcom/amap/api/col/cy;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/amap/api/navi/AMapNaviView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/amap/api/navi/AMapNaviViewOptions;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/fr;->a(Landroid/content/Context;Lcom/amap/api/col/eo;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/IAMapNaviView;

    iput-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->init()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/amap/api/col/cy;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/cy;-><init>(Lcom/amap/api/navi/AMapNaviView;Lcom/amap/api/navi/AMapNaviViewOptions;)V

    iput-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    goto :goto_0
.end method


# virtual methods
.method public displayOverview()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->displayOverview()V

    return-void
.end method

.method public getAnchorX()D
    .locals 2

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getAnchorX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAnchorY()D
    .locals 2

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getAnchorY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLazyDirectionView()Lcom/amap/api/navi/view/DirectionView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getLazyDirectionView()Lcom/amap/api/navi/view/DirectionView;

    move-result-object v0

    return-object v0
.end method

.method public getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;

    move-result-object v0

    return-object v0
.end method

.method public getLazyNextTurnTipView()Lcom/amap/api/navi/view/NextTurnTipView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getLazyNextTurnTipView()Lcom/amap/api/navi/view/NextTurnTipView;

    move-result-object v0

    return-object v0
.end method

.method public getLazyTrafficBarView()Lcom/amap/api/navi/view/TrafficBarView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getLazyTrafficBarView()Lcom/amap/api/navi/view/TrafficBarView;

    move-result-object v0

    return-object v0
.end method

.method public getLazyTrafficButtonView()Lcom/amap/api/navi/view/TrafficButtonView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getLazyTrafficButtonView()Lcom/amap/api/navi/view/TrafficButtonView;

    move-result-object v0

    return-object v0
.end method

.method public getLazyZoomInIntersectionView()Lcom/amap/api/navi/view/ZoomInIntersectionView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getLazyZoomInIntersectionView()Lcom/amap/api/navi/view/ZoomInIntersectionView;

    move-result-object v0

    return-object v0
.end method

.method public getLockTilt()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getLockTilt()I

    move-result v0

    return v0
.end method

.method public getLockZoom()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getLockZoom()I

    move-result v0

    return v0
.end method

.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    return-object v0
.end method

.method public getNaviMode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getNaviMode()I

    move-result v0

    return v0
.end method

.method public getViewOptions()Lcom/amap/api/navi/AMapNaviViewOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->getViewOptions()Lcom/amap/api/navi/AMapNaviViewOptions;

    move-result-object v0

    return-object v0
.end method

.method public isAutoChangeZoom()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->isAutoChangeZoom()Z

    move-result v0

    return v0
.end method

.method public isOrientationLandscape()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->isOrientationLandscape()Z

    move-result v0

    return v0
.end method

.method public isRouteOverviewNow()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->isRouteOverviewNow()Z

    move-result v0

    return v0
.end method

.method public isShowRoadEnlarge()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->isShowRoadEnlarge()Z

    move-result v0

    return v0
.end method

.method public isTrafficLine()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->isTrafficLine()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->onDestroy()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/amap/api/navi/IAMapNaviView;->layout(ZIIII)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->onResume()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public openNorthMode()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->openNorthMode()V

    return-void
.end method

.method public recoverLockMode()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->recoverLockMode()V

    return-void
.end method

.method public setAMapNaviViewListener(Lcom/amap/api/navi/AMapNaviViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setAMapNaviViewListener(Lcom/amap/api/navi/AMapNaviViewListener;)V

    return-void
.end method

.method public setLazyDirectionView(Lcom/amap/api/navi/view/DirectionView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLazyDirectionView(Lcom/amap/api/navi/view/DirectionView;)V

    return-void
.end method

.method public setLazyDriveWayView(Lcom/amap/api/navi/view/DriveWayView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLazyDriveWayView(Lcom/amap/api/navi/view/DriveWayView;)V

    return-void
.end method

.method public setLazyNextTurnTipView(Lcom/amap/api/navi/view/NextTurnTipView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLazyNextTurnTipView(Lcom/amap/api/navi/view/NextTurnTipView;)V

    return-void
.end method

.method public setLazyOverviewButtonView(Lcom/amap/api/navi/view/OverviewButtonView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLazyOverviewButtonView(Lcom/amap/api/navi/view/OverviewButtonView;)V

    return-void
.end method

.method public setLazyTrafficBarView(Lcom/amap/api/navi/view/TrafficBarView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLazyTrafficBarView(Lcom/amap/api/navi/view/TrafficBarView;)V

    return-void
.end method

.method public setLazyTrafficButtonView(Lcom/amap/api/navi/view/TrafficButtonView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLazyTrafficButtonView(Lcom/amap/api/navi/view/TrafficButtonView;)V

    return-void
.end method

.method public setLazyZoomButtonView(Lcom/amap/api/navi/view/ZoomButtonView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLazyZoomButtonView(Lcom/amap/api/navi/view/ZoomButtonView;)V

    return-void
.end method

.method public setLazyZoomInIntersectionView(Lcom/amap/api/navi/view/ZoomInIntersectionView;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLazyZoomInIntersectionView(Lcom/amap/api/navi/view/ZoomInIntersectionView;)V

    return-void
.end method

.method public setLockTilt(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLockTilt(I)V

    return-void
.end method

.method public setLockZoom(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setLockZoom(I)V

    return-void
.end method

.method public setNaviMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setNaviMode(I)V

    return-void
.end method

.method public setTrafficLine(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setTrafficLine(Z)V

    return-void
.end method

.method public setViewOptions(Lcom/amap/api/navi/AMapNaviViewOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0, p1}, Lcom/amap/api/navi/IAMapNaviView;->setViewOptions(Lcom/amap/api/navi/AMapNaviViewOptions;)V

    return-void
.end method

.method public zoomIn()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->zoomIn()V

    return-void
.end method

.method public zoomOut()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapNaviView;->core:Lcom/amap/api/navi/IAMapNaviView;

    invoke-interface {v0}, Lcom/amap/api/navi/IAMapNaviView;->zoomOut()V

    return-void
.end method
