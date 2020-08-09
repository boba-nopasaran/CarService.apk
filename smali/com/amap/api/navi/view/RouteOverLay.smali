.class public Lcom/amap/api/navi/view/RouteOverLay;
.super Ljava/lang/Object;
.source "RouteOverLay.java"


# instance fields
.field private aMap:Lcom/amap/api/maps/AMap;

.field private arrowColor:I

.field private arrowOnRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private emulateGPSLocationVisibility:Z

.field private endBitmap:Landroid/graphics/Bitmap;

.field private endBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private endMarker:Lcom/amap/api/maps/model/Marker;

.field private gpsCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Circle;",
            ">;"
        }
    .end annotation
.end field

.field private guideLink:Lcom/amap/api/maps/model/Polyline;

.field private isTrafficLine:Z

.field private jamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

.field private mContext:Landroid/content/Context;

.field private mCustomPolylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

.field private mLatLngsOfPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteOverlayOptions:Lcom/amap/api/navi/model/RouteOverlayOptions;

.field private mTrafficColorfulPolylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:F

.field private naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

.field private normalRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private slowTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private smoothTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private startBitmap:Landroid/graphics/Bitmap;

.field private startBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private startMarker:Lcom/amap/api/maps/model/Marker;

.field private unknownTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private veryJamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private wayBitmap:Landroid/graphics/Bitmap;

.field private wayMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private wayPointBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/AMap;Lcom/amap/api/navi/model/AMapNaviPath;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowOnRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->normalRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->unknownTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->smoothTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->slowTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->jamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->veryJamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mRouteOverlayOptions:Lcom/amap/api/navi/model/RouteOverlayOptions;

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    iput-boolean v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->emulateGPSLocationVisibility:Z

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    iput-boolean v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->isTrafficLine:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    const-string v0, "#4DF6CC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowColor:I

    iput-object p3, p0, Lcom/amap/api/navi/view/RouteOverLay;->mContext:Landroid/content/Context;

    const/16 v0, 0x16

    invoke-static {p3, v0}, Lcom/amap/api/col/ds;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-direct {p0, p1, p2}, Lcom/amap/api/navi/view/RouteOverLay;->init(Lcom/amap/api/maps/AMap;Lcom/amap/api/navi/model/AMapNaviPath;)V

    return-void
.end method

.method private NoTrafficStatusDisplay()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addToMap([I[I[Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    :cond_2
    iget v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->normalRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getCoordList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/amap/api/navi/view/RouteOverLay;->clearTrafficLineAndInvisibleOriginalLine()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_4

    array-length v0, p3

    move v7, v0

    :goto_1
    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    :goto_2
    if-ge v9, v7, :cond_a

    if-eqz p2, :cond_5

    array-length v1, p2

    if-ge v9, v1, :cond_5

    aget v1, p2, v9

    if-gtz v1, :cond_5

    :goto_3
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2

    :cond_4
    array-length v0, p1

    move v7, v0

    goto :goto_1

    :cond_5
    invoke-interface {v11}, Ljava/util/List;->clear()V

    move v8, v0

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_6

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_8

    array-length v0, p2

    if-ge v9, v0, :cond_8

    aget v0, p2, v9

    if-ne v8, v0, :cond_8

    :cond_6
    if-eqz p3, :cond_7

    array-length v0, p3

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v1, v11}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    aget v2, p1, v9

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    :goto_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    goto :goto_3

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v1, v11}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    aget-object v2, p3, v9

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowOnRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v3}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v3}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v3

    if-eqz v3, :cond_17

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v0

    iget-object v3, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v3}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getWayPoint()Ljava/util/List;

    move-result-object v0

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    :goto_6
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    :cond_b
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    :cond_c
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x4702007e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    :cond_f
    :goto_8
    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    if-nez v1, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    :cond_10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_13

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x47020086

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    :cond_11
    :goto_a
    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "RouteOverLay"

    const-string v2, "addToMap(int[] color, int[] index, BitmapDescriptor[] resourceArray)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    goto/16 :goto_8

    :cond_13
    iget-object v4, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayPointBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v4, :cond_11

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    iget-object v4, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayPointBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    goto :goto_a

    :cond_14
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x47020012

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    :cond_15
    :goto_b
    iget-boolean v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->isTrafficLine:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->isTrafficLine:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/RouteOverLay;->setTrafficLine(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :cond_17
    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    goto/16 :goto_6
.end method

.method private clearTrafficLineAndInvisibleOriginalLine()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mCustomPolylines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    return-void
.end method

.method private colorWayUpdate(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/AMapTrafficStatus;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/navi/view/RouteOverLay;->clearTrafficLineAndInvisibleOriginalLine()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    const-wide/16 v6, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v8, v3

    move-object v9, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_6

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/navi/model/AMapTrafficStatus;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    new-instance v11, Lcom/amap/api/navi/model/NaviLatLng;

    iget-wide v12, v9, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v14, v9, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    new-instance v9, Lcom/amap/api/navi/model/NaviLatLng;

    iget-wide v12, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v14, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/amap/api/navi/model/NaviLatLng;-><init>(DD)V

    invoke-static {v11, v9}, Lcom/amap/api/col/ds;->a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v6, v12

    invoke-virtual {v2}, Lcom/amap/api/navi/model/AMapTrafficStatus;->getLength()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    int-to-double v14, v14

    cmpl-double v14, v6, v14

    if-lez v14, :cond_3

    invoke-virtual {v2}, Lcom/amap/api/navi/model/AMapTrafficStatus;->getLength()I

    move-result v3

    int-to-double v14, v3

    sub-double v14, v6, v14

    sub-double/2addr v12, v14

    invoke-static {v11, v9, v12, v13}, Lcom/amap/api/col/ds;->a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;D)Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v3

    new-instance v9, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v3}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v14

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v8, -0x1

    move-object v8, v9

    :goto_2
    invoke-virtual {v2}, Lcom/amap/api/navi/model/AMapTrafficStatus;->getLength()I

    move-result v9

    int-to-double v12, v9

    cmpl-double v9, v6, v12

    if-gez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_7

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_3

    :cond_3
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v8

    move-object v8, v3

    move/from16 v3, v16

    goto :goto_2

    :cond_4
    move v3, v6

    :cond_5
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2}, Lcom/amap/api/navi/model/AMapTrafficStatus;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object v2, v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->clear()V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    move/from16 v16, v3

    move v3, v6

    move-wide v6, v4

    move-object v4, v2

    move/from16 v2, v16

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object v9, v8

    move v5, v3

    move v8, v2

    goto/16 :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v4, v10}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->unknownTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v4, v10}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->smoothTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v4, v10}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->slowTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v4, v10}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->jamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v4, v10}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amap/api/navi/view/RouteOverLay;->veryJamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v4, v5}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v3, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/navi/view/RouteOverLay;->arrowOnRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move v2, v3

    move v3, v5

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init(Lcom/amap/api/maps/AMap;Lcom/amap/api/navi/model/AMapNaviPath;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    iput-object p2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    const-string v0, "custtexture.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->normalRoute:Lcom/amap/api/maps/model/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "custtexture_aolr.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowOnRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    const-string v0, "custtexture_green.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->smoothTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    const-string v0, "custtexture_no.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->unknownTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    const-string v0, "custtexture_slow.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->slowTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    const-string v0, "custtexture_bad.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->jamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    const-string v0, "custtexture_grayred.png"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->veryJamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "RouteOverLay"

    const-string v2, "init(AMap amap, AMapNaviPath aMapNaviPath)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addToMap()V
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    :cond_2
    iget v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getCoordList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "RouteOverLay"

    const-string v2, "addToMap()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/navi/view/RouteOverLay;->clearTrafficLineAndInvisibleOriginalLine()V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mLatLngsOfPath:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->normalRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v0

    iget-object v3, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v3}, Lcom/amap/api/navi/model/AMapNaviPath;->getStartPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getEndPoint()Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v10

    invoke-direct {v1, v4, v5, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getWayPoint()Ljava/util/List;

    move-result-object v0

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    move v1, v8

    :goto_3
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x4702007e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    :cond_9
    :goto_4
    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v8

    invoke-direct {v2, v4, v5, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x47020086

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    :goto_6
    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayPointBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v4, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    iget-object v4, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayPointBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v2, v4}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x47020012

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    :cond_e
    :goto_7
    iget-boolean v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->isTrafficLine:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->isTrafficLine:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/RouteOverLay;->setTrafficLine(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_10
    move-object v0, v7

    goto/16 :goto_6

    :cond_11
    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    goto/16 :goto_2
.end method

.method public addToMap([I[I)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/navi/view/RouteOverLay;->addToMap([I[I[Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public addToMap([Lcom/amap/api/maps/model/BitmapDescriptor;[I)V
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/amap/api/navi/view/RouteOverLay;->addToMap([I[I[Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowOnRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowOnRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->smoothTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->smoothTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->unknownTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->unknownTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->slowTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->slowTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->jamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->jamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->veryJamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->veryJamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "RouteOverLay"

    const-string v2, "destroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public drawArrow(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;->setVisible(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/navi/model/NaviLatLng;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "RouteOverLay"

    const-string v2, "drawArrow(List<NaviLatLng> list) "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/NavigateArrowOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/NavigateArrowOptions;-><init>()V

    invoke-virtual {v1, v7}, Lcom/amap/api/maps/model/NavigateArrowOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/NavigateArrowOptions;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowColor:I

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/NavigateArrowOptions;->topColor(I)Lcom/amap/api/maps/model/NavigateArrowOptions;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/NavigateArrowOptions;->width(F)Lcom/amap/api/maps/model/NavigateArrowOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    :goto_2
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;->setZIndex(F)V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    invoke-virtual {v0, v7}, Lcom/amap/api/maps/model/NavigateArrow;->setPoints(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public drawEmulateGPSLocation(Ljava/util/Vector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v3, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/CircleOptions;-><init>()V

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/CircleOptions;->center(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v2, v4, v5}, Lcom/amap/api/maps/model/CircleOptions;->radius(D)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v2

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "RouteOverLay"

    const-string v2, "drawEmulateGPSLocation(Vector<String> gpsData)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->remove()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public drawGuideLink(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;Z)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    iget v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/PolylineOptions;->setDottedLine(Z)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    goto :goto_1
.end method

.method public getAMapNaviPath()Lcom/amap/api/navi/model/AMapNaviPath;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    return-object v0
.end method

.method public getArrowPoints(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/navi/model/NaviLatLng;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getStepsCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getCoordList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getSteps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/AMapNaviStep;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviStep;->getEndIndex()I

    move-result v10

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviLatLng;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/16 v11, 0x32

    add-int/lit8 v1, v10, -0x1

    move v5, v1

    move v6, v4

    move-object v7, v0

    :goto_1
    if-ltz v5, :cond_2

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-static {v7, v1}, Lcom/amap/api/col/ds;->a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)I

    move-result v12

    add-int/2addr v6, v12

    if-lt v6, v11, :cond_4

    add-int v5, v11, v12

    sub-int/2addr v5, v6

    int-to-double v12, v5

    invoke-static {v7, v1, v12, v13}, Lcom/amap/api/col/ds;->a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;D)Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v10, 0x1

    move-object v5, v0

    :goto_2
    if-ge v1, v9, :cond_3

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/model/NaviLatLng;

    invoke-static {v5, v0}, Lcom/amap/api/col/ds;->a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;)I

    move-result v6

    add-int/2addr v4, v6

    if-lt v4, v11, :cond_5

    add-int v1, v11, v6

    sub-int/2addr v1, v4

    int-to-double v6, v1

    invoke-static {v5, v0, v6, v7}, Lcom/amap/api/col/ds;->a(Lcom/amap/api/navi/model/NaviLatLng;Lcom/amap/api/navi/model/NaviLatLng;D)Lcom/amap/api/navi/model/NaviLatLng;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    move-object v0, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    move-object v7, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    move-object v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "RouteOverLay"

    const-string v3, "getArrowPoints(int roadIndex)"

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public getRouteOverlayOptions()Lcom/amap/api/navi/model/RouteOverlayOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mRouteOverlayOptions:Lcom/amap/api/navi/model/RouteOverlayOptions;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    return v0
.end method

.method public isTrafficLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->isTrafficLine:Z

    return v0
.end method

.method public removeFromMap()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startMarker:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "RouteOverLay"

    const-string v2, "removeFromMap()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endMarker:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->naviArrow:Lcom/amap/api/maps/model/NavigateArrow;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/NavigateArrow;->remove()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->guideLink:Lcom/amap/api/maps/model/Polyline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setVisible(Z)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Circle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setVisible(Z)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/amap/api/navi/view/RouteOverLay;->clearTrafficLineAndInvisibleOriginalLine()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setAMapNaviPath(Lcom/amap/api/navi/model/AMapNaviPath;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    return-void
.end method

.method public setEmulateGPSLocationVisible()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->emulateGPSLocationVisibility:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->emulateGPSLocationVisibility:Z

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->gpsCircles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Circle;

    iget-boolean v2, p0, Lcom/amap/api/navi/view/RouteOverLay;->emulateGPSLocationVisibility:Z

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setVisible(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEndPointBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->endBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    return-void
.end method

.method public setRouteInfo(Lcom/amap/api/navi/model/AMapNaviPath;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    return-void
.end method

.method public setRouteOverlayOptions(Lcom/amap/api/navi/model/RouteOverlayOptions;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mRouteOverlayOptions:Lcom/amap/api/navi/model/RouteOverlayOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getNormalRoute()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getNormalRoute()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->normalRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getArrowOnTrafficRoute()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getArrowOnTrafficRoute()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowOnRoute:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getUnknownTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getUnknownTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->unknownTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getSmoothTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getSmoothTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->smoothTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getSlowTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getSlowTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->slowTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getJamTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getJamTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->jamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getVeryJamTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getVeryJamTraffic()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->veryJamTraffic:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getLineWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getLineWidth()F

    move-result v0

    iput v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getArrowColor()I

    move-result v0

    iget v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowColor:I

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Lcom/amap/api/navi/model/RouteOverlayOptions;->getArrowColor()I

    move-result v0

    iput v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->arrowColor:I

    :cond_8
    return-void
.end method

.method public setStartPointBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->startBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    return-void
.end method

.method public setTrafficLine(Ljava/lang/Boolean;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->isTrafficLine:Z

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/amap/api/navi/view/RouteOverLay;->clearTrafficLineAndInvisibleOriginalLine()V

    iget-boolean v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->isTrafficLine:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getTrafficStatuses()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/navi/view/RouteOverLay;->NoTrafficStatusDisplay()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "RouteOverLay"

    const-string v2, "setTrafficLine(Boolean enabled)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amap/api/navi/view/RouteOverLay;->colorWayUpdate(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/navi/view/RouteOverLay;->NoTrafficStatusDisplay()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setTransparency(F)V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    move p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Polyline;->setTransparency(F)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Polyline;->setTransparency(F)V

    goto :goto_1

    :cond_2
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setWayPointBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->wayPointBitmapDescriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/navi/AMapNaviException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/amap/api/navi/view/RouteOverLay;->mWidth:F

    goto :goto_0
.end method

.method public setZindex(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mTrafficColorfulPolylines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Polyline;->setZIndex(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mDefaultPolyline:Lcom/amap/api/maps/model/Polyline;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setZIndex(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public zoomToSpan()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/RouteOverLay;->zoomToSpan(I)V

    return-void
.end method

.method public zoomToSpan(I)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/RouteOverLay;->mAMapNaviPath:Lcom/amap/api/navi/model/AMapNaviPath;

    invoke-virtual {v0}, Lcom/amap/api/navi/model/AMapNaviPath;->getBoundsForPath()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "RouteOverLay"

    const-string v2, "zoomToSpan()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zoomToSpan(ILcom/amap/api/navi/model/AMapNaviPath;)V
    .locals 5

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/amap/api/navi/model/AMapNaviPath;->getBoundsForPath()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/navi/view/RouteOverLay;->aMap:Lcom/amap/api/maps/AMap;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "RouteOverLay"

    const-string v2, "zoomToSpan()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
