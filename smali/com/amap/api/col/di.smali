.class public Lcom/amap/api/col/di;
.super Ljava/lang/Object;
.source "NaviUIController.java"

# interfaces
.implements Lcom/amap/api/navi/MyNaviListener;


# instance fields
.field private a:Lcom/amap/api/navi/model/NaviInfo;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:F

.field private j:Lcom/amap/api/navi/view/RouteOverLay;

.field private k:Lcom/amap/api/col/dh;

.field private l:Lcom/amap/api/navi/view/AmapCameraOverlay;

.field private m:Lcom/amap/api/navi/INavi;

.field private n:Lcom/amap/api/maps/AMap;

.field private o:Landroid/content/Context;

.field private p:Lcom/amap/api/col/cy;

.field private q:Z

.field private r:Lcom/amap/api/navi/model/AMapNaviPath;

.field private s:I

.field private t:Lcom/amap/api/navi/model/AMapNaviPath;

.field private u:I

.field private v:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/MapView;Lcom/amap/api/col/cy;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/amap/api/col/di;->b:Z

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/amap/api/col/di;->c:Ljava/lang/String;

    const-string v0, "#ffffff"

    iput-object v0, p0, Lcom/amap/api/col/di;->d:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/di;->e:I

    iput-boolean v1, p0, Lcom/amap/api/col/di;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/col/di;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/col/di;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/di;->i:F

    iput-object v3, p0, Lcom/amap/api/col/di;->m:Lcom/amap/api/navi/INavi;

    iput-boolean v2, p0, Lcom/amap/api/col/di;->q:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/di;->s:I

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/di;->o:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {p2}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/di;->o:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v2}, Lcom/amap/api/navi/view/RouteOverLay;-><init>(Lcom/amap/api/maps/AMap;Lcom/amap/api/navi/model/AMapNaviPath;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    new-instance v0, Lcom/amap/api/col/dh;

    invoke-direct {v0, p2, p3}, Lcom/amap/api/col/dh;-><init>(Lcom/amap/api/maps/MapView;Lcom/amap/api/col/cy;)V

    iput-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    new-instance v0, Lcom/amap/api/navi/view/AmapCameraOverlay;

    invoke-direct {v0, p1}, Lcom/amap/api/navi/view/AmapCameraOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    iget-object v0, p0, Lcom/amap/api/col/di;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/navi/AMapNavi;->getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/di;->m:Lcom/amap/api/navi/INavi;

    iput-object p3, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {p2}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_0

    const-string v0, "NaviUIControl-->\u6784\u9020\u51fd\u6570 amap==null"

    invoke-static {v0}, Lcom/amap/api/col/dw;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/navi/model/NaviInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->c:Lcom/amap/api/navi/view/NextTurnTipView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->c:Lcom/amap/api/navi/view/NextTurnTipView;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getIconType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/NextTurnTipView;->setIconType(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyNextTurnTipView()Lcom/amap/api/navi/view/NextTurnTipView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyNextTurnTipView()Lcom/amap/api/navi/view/NextTurnTipView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getIconType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/NextTurnTipView;->setIconType(I)V

    :cond_1
    return-void
.end method

.method private a(Lcom/amap/api/navi/view/TrafficBarView;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/di;->r:Lcom/amap/api/navi/model/AMapNaviPath;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->r:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getAllLength()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/di;->u:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/col/di;->r:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v1}, Lcom/amap/api/navi/model/AMapNaviPath;->getAllLength()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/di;->m:Lcom/amap/api/navi/INavi;

    invoke-interface {v2, v0, v1}, Lcom/amap/api/navi/INavi;->getTrafficStatuses(II)Ljava/util/List;

    move-result-object v0

    const-string v1, "AE8"

    const-string v2, "trafficBarView.update~"

    invoke-static {v1, v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/amap/api/col/di;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/navi/view/TrafficBarView;->update(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private b(Lcom/amap/api/navi/model/NaviInfo;)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/di;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/di;->s:I

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCurStep()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCurStep()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/RouteOverLay;->getArrowPoints(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v1, v0}, Lcom/amap/api/navi/view/RouteOverLay;->drawArrow(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCurStep()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/di;->s:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "NaviUIController"

    const-string v2, "drawArrow(NaviInfo naviInfo)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Lcom/amap/api/navi/model/NaviInfo;)V
    .locals 3

    const/16 v2, 0x32

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCurStep()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->isRouteOverviewNow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCurStepRetainDistance()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/di;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v1, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getLockZoom()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy;->setLockZoom(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/di;->b:Z

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCurStepRetainDistance()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/di;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v1, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v1}, Lcom/amap/api/col/cy;->getLockZoom()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy;->setLockZoom(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/di;->b:Z

    :cond_1
    return-void
.end method

.method private d(Lcom/amap/api/navi/model/NaviInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCurStepRetainDistance()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/col/ds;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getNextRoadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainTime()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/di;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/col/di;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ds;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainDistance()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/di;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/di;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/ds;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<big>\u8ddd\u79bb\u7ec8\u70b9:</big><big><big>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainDistance()I

    move-result v3

    invoke-static {v3}, Lcom/amap/api/col/ds;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</big></big>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v3, v3, Lcom/amap/api/col/cy;->f:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v3, v3, Lcom/amap/api/col/cy;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private e(Lcom/amap/api/navi/model/NaviInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/di;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/navi/AMapNavi;->getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNavi;->getEngineType()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/di;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/navi/AMapNavi;->getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNavi;->getNaviType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCoord()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getDirection()I

    move-result v1

    int-to-float v7, v1

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iput v7, p0, Lcom/amap/api/col/di;->i:F

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    iget-object v2, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v2, v1, v7}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/maps/AMap;Lcom/amap/api/maps/model/LatLng;F)V

    goto :goto_0
.end method

.method private h()V
    .locals 0

    return-void
.end method

.method private i()V
    .locals 0

    return-void
.end method


# virtual methods
.method public OnUpdateTrafficFacility(Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V
    .locals 0

    return-void
.end method

.method public OnUpdateTrafficFacility(Lcom/autonavi/tbt/TrafficFacilityInfo;)V
    .locals 0

    return-void
.end method

.method public OnUpdateTrafficFacility([Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V
    .locals 0

    return-void
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->m:Lcom/amap/api/navi/INavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->m:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviPath()Lcom/amap/api/navi/model/AMapNaviPath;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/di;->r:Lcom/amap/api/navi/model/AMapNaviPath;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyTrafficBarView()Lcom/amap/api/navi/view/TrafficBarView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/di;->a(Lcom/amap/api/navi/view/TrafficBarView;)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-direct {p0, v0}, Lcom/amap/api/col/di;->a(Lcom/amap/api/navi/view/TrafficBarView;)V

    :cond_1
    return-void
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/dh;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/RouteOverLay;->setStartPointBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method a(Lcom/amap/api/navi/model/AMapNaviPath;)V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/di;->t:Lcom/amap/api/navi/model/AMapNaviPath;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/di;->g:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/RouteOverLay;->setAMapNaviPath(Lcom/amap/api/navi/model/AMapNaviPath;)V

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/RouteOverLay;->addToMap()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v1}, Lcom/amap/api/col/dh;->c()V

    iget-object v1, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    iget-object v2, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    iget v3, p0, Lcom/amap/api/col/di;->i:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/maps/AMap;Lcom/amap/api/maps/model/LatLng;F)V

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/maps/model/LatLng;)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getAllLength()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/di;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/di;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ds;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviPath;->getAllTime()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v1, v1, Lcom/amap/api/col/cy;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amap/api/col/di;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/di;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/ds;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iput-object p1, p0, Lcom/amap/api/col/di;->t:Lcom/amap/api/navi/model/AMapNaviPath;

    goto/16 :goto_0
.end method

.method public a(Lcom/amap/api/navi/model/RouteOverlayOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/RouteOverLay;->setRouteOverlayOptions(Lcom/amap/api/navi/model/RouteOverlayOptions;)V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/amap/api/col/di;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/di;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    invoke-virtual {v1}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainDistance()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/di;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/di;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/ds;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainTime()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v1, v1, Lcom/amap/api/col/cy;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amap/api/col/di;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/col/di;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/ds;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/di;->g:Z

    return-void
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/di;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/amap/api/col/di;->r:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/navi/view/RouteOverLay;->zoomToSpan(ILcom/amap/api/navi/model/AMapNaviPath;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    iget-object v1, p0, Lcom/amap/api/col/di;->r:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/RouteOverLay;->setAMapNaviPath(Lcom/amap/api/navi/model/AMapNaviPath;)V

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/RouteOverLay;->zoomToSpan()V

    goto :goto_0
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/RouteOverLay;->setEndPointBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/di;->h:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/RouteOverLay;->setEmulateGPSLocationVisible()V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/RouteOverLay;->setWayPointBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/di;->f:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/amap/api/col/di;->f:Z

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/dh;->a(Z)V

    goto :goto_0
.end method

.method public carProjectionChange(Lcom/amap/api/navi/model/AmapCarLocation;)V
    .locals 6

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/amap/api/navi/model/AmapCarLocation;->m_Latitude:D

    iget-wide v4, p1, Lcom/amap/api/navi/model/AmapCarLocation;->m_Longitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/col/di;->v:Lcom/amap/api/maps/model/LatLng;

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0}, Lcom/amap/api/col/dh;->a()V

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/AmapCameraOverlay;->setCameraBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method d(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/col/di;->q:Z

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    iget-boolean v1, p0, Lcom/amap/api/col/di;->q:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/RouteOverLay;->setTrafficLine(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0}, Lcom/amap/api/col/dh;->b()V

    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/dh;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, "NaviUIControl-->destroy()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amap/api/col/di;->i()V

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/RouteOverLay;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0}, Lcom/amap/api/col/dh;->d()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AmapCameraOverlay;->destroy()V

    :cond_2
    return-void
.end method

.method public f(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/dh;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0}, Lcom/amap/api/col/dh;->f()V

    :cond_0
    return-void
.end method

.method public hideCross()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyZoomInIntersectionView()Lcom/amap/api/navi/view/ZoomInIntersectionView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyZoomInIntersectionView()Lcom/amap/api/navi/view/ZoomInIntersectionView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->b()V

    return-void
.end method

.method public hideLaneInfo()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DriveWayView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/view/DriveWayView;->recycleResource()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-boolean v0, v0, Lcom/amap/api/col/cy;->K:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/di;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DriveWayView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/DriveWayView;->recycleResource()V

    goto :goto_0
.end method

.method public notifyParallelRoad(I)V
    .locals 0

    return-void
.end method

.method public onArriveDestination()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "NaviUIControl-->onArriveDestination()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/col/di;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/RouteOverLay;->removeFromMap()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AmapCameraOverlay;->destroy()V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/amap/api/col/di;->c(Z)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    invoke-virtual {v0}, Lcom/amap/api/col/dh;->e()V

    :cond_3
    iput-boolean v2, p0, Lcom/amap/api/col/di;->b:Z

    goto :goto_0
.end method

.method public onArrivedWayPoint(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviUIControl-->onArrivedWayPoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCalculateMultipleRoutesSuccess([I)V
    .locals 1

    const-string v0, "NaviUIControl-->onCalculateMultipleRoutesSuccess()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onCalculateRouteFailure(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviUIControl-->onCalculateRouteFailure(),errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amap/api/col/di;->i()V

    return-void
.end method

.method public onCalculateRouteSuccess()V
    .locals 2

    const-string v0, "NaviUIControl-->onCalculateRouteSuccess(),\u7b97\u8def\u6210\u529f"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/amap/api/col/di;->i()V

    iget-object v0, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->m:Lcom/amap/api/navi/INavi;

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviUIControl-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviUIControl-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/di;->m:Lcom/amap/api/navi/INavi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v0, "false"

    goto :goto_0

    :cond_3
    const-string v0, "false"

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/di;->m:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviPath()Lcom/amap/api/navi/model/AMapNaviPath;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getAllLength()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/di;->u:I

    invoke-virtual {p0, v0}, Lcom/amap/api/col/di;->a(Lcom/amap/api/navi/model/AMapNaviPath;)V

    invoke-virtual {p0}, Lcom/amap/api/col/di;->a()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/di;->s:I

    invoke-virtual {p0}, Lcom/amap/api/col/di;->hideCross()V

    goto :goto_2
.end method

.method public onEndEmulatorNavi()V
    .locals 1

    const-string v0, "NaviUIControl-->onEndEmulatorNavi()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AmapCameraOverlay;->destroy()V

    :cond_0
    return-void
.end method

.method public onGetNavigationText(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviUIControl-->onGetNavigationText(),msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onGpsOpenStatus(Z)V
    .locals 0

    return-void
.end method

.method public onInitNaviFailure()V
    .locals 1

    const-string v0, "NaviUIControl-->onInitNaviFailure()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onInitNaviSuccess()V
    .locals 1

    const-string v0, "NaviUIControl-->onInitNaviSuccess()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onLocationChange(Lcom/amap/api/navi/model/AMapNaviLocation;)V
    .locals 8

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->v:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/navi/AMapNavi;->getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNavi;->getEngineType()I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/navi/AMapNavi;->getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNavi;->getNaviType()I

    move-result v0

    if-ne v0, v6, :cond_1

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviLocation;->getCoord()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviLocation;->getCoord()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviLocation;->isMatchNaviPath()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    iget-object v2, p0, Lcom/amap/api/col/di;->v:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v0, v2, v6}, Lcom/amap/api/navi/view/RouteOverLay;->drawGuideLink(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Z)V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviLocation;->getCoord()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviLocation;->getBearing()F

    move-result v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/amap/api/col/di;->k:Lcom/amap/api/col/dh;

    iget-object v3, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v3, v2, v1}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/maps/AMap;Lcom/amap/api/maps/model/LatLng;F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    iget-object v2, p0, Lcom/amap/api/col/di;->v:Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/navi/view/RouteOverLay;->drawGuideLink(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/di;->v:Lcom/amap/api/maps/model/LatLng;

    goto :goto_1
.end method

.method public onNaviInfoUpdate(Lcom/amap/api/navi/model/NaviInfo;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    iget-object v0, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainDistance()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/di;->u:I

    invoke-direct {p0, p1}, Lcom/amap/api/col/di;->b(Lcom/amap/api/navi/model/NaviInfo;)V

    invoke-direct {p0, p1}, Lcom/amap/api/col/di;->e(Lcom/amap/api/navi/model/NaviInfo;)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->isAutoChangeZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/amap/api/col/di;->c(Lcom/amap/api/navi/model/NaviInfo;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/col/di;->a(Lcom/amap/api/navi/model/NaviInfo;)V

    invoke-direct {p0, p1}, Lcom/amap/api/col/di;->d(Lcom/amap/api/navi/model/NaviInfo;)V

    goto :goto_0
.end method

.method public onNaviInfoUpdated(Lcom/amap/api/navi/model/AMapNaviInfo;)V
    .locals 0

    return-void
.end method

.method public onPlayRing(I)V
    .locals 0

    return-void
.end method

.method public onReCalculateRouteForTrafficJam()V
    .locals 1

    const-string v0, "NaviUIControl-->onReCalculateRouteForTrafficJam()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/di;->s:I

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AmapCameraOverlay;->removeAllCamera()V

    :cond_0
    return-void
.end method

.method public onReCalculateRouteForYaw()V
    .locals 1

    const-string v0, "NaviUIControl-->onReCalculateRouteForYaw()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/di;->s:I

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getViewOptions()Lcom/amap/api/navi/AMapNaviViewOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForYaw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/di;->h()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AmapCameraOverlay;->removeAllCamera()V

    :cond_1
    return-void
.end method

.method public onServiceAreaUpdate([Lcom/amap/api/navi/model/AMapServiceAreaInfo;)V
    .locals 0

    return-void
.end method

.method public onStartNavi(I)V
    .locals 2

    const-string v0, "NaviUIControl-->onStartNavi()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    iput p1, p0, Lcom/amap/api/col/di;->e:I

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->d()V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->a()V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/col/cy;->J:Z

    return-void
.end method

.method public onTrafficStatusUpdate()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/di;->a()V

    iget-boolean v0, p0, Lcom/amap/api/col/di;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/di;->q:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/col/di;->d(Z)V

    :cond_0
    return-void
.end method

.method public showCross(Lcom/amap/api/navi/model/AMapNaviCross;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyZoomInIntersectionView()Lcom/amap/api/navi/view/ZoomInIntersectionView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyZoomInIntersectionView()Lcom/amap/api/navi/view/ZoomInIntersectionView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviCross;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyZoomInIntersectionView()Lcom/amap/api/navi/view/ZoomInIntersectionView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cy;->a(Lcom/amap/api/navi/model/AMapNaviCross;)V

    return-void
.end method

.method public showLaneInfo([Lcom/amap/api/navi/model/AMapLaneInfo;[B[B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/amap/api/navi/view/DriveWayView;->loadDriveWayBitmap([B[B)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/cy;->getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/navi/view/DriveWayView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-boolean v0, v0, Lcom/amap/api/col/cy;->K:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/di;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-boolean v0, v0, Lcom/amap/api/col/cy;->L:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0, p2, p3}, Lcom/amap/api/navi/view/DriveWayView;->loadDriveWayBitmap([B[B)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    iget-object v1, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v1, v1, Lcom/amap/api/col/cy;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DriveWayView;->setDefaultTopMargin(I)V

    iget-object v0, p0, Lcom/amap/api/col/di;->p:Lcom/amap/api/col/cy;

    iget-object v0, v0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0, v2}, Lcom/amap/api/navi/view/DriveWayView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateAimlessModeCongestionInfo(Lcom/amap/api/navi/model/AimLessModeCongestionInfo;)V
    .locals 0

    return-void
.end method

.method public updateAimlessModeStatistics(Lcom/amap/api/navi/model/AimLessModeStat;)V
    .locals 0

    return-void
.end method

.method public updateCameraInfo([Lcom/amap/api/navi/model/AMapNaviCameraInfo;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/di;->j:Lcom/amap/api/navi/view/RouteOverLay;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/RouteOverLay;->getRouteOverlayOptions()Lcom/amap/api/navi/model/RouteOverlayOptions;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/navi/model/RouteOverlayOptions;->isShowCameOnRoute()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/di;->l:Lcom/amap/api/navi/view/AmapCameraOverlay;

    iget-object v2, p0, Lcom/amap/api/col/di;->n:Lcom/amap/api/maps/AMap;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/amap/api/col/di;->a:Lcom/amap/api/navi/model/NaviInfo;

    invoke-virtual {v4}, Lcom/amap/api/navi/model/NaviInfo;->getCurrentSpeed()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/amap/api/navi/view/AmapCameraOverlay;->draw(Lcom/amap/api/maps/AMap;Lcom/amap/api/navi/model/AMapNaviCameraInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
