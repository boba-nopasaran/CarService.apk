.class public Lcom/amap/api/navi/model/RouteOverlayOptions;
.super Ljava/lang/Object;
.source "RouteOverlayOptions.java"


# instance fields
.field private arrowColor:I

.field private arrowOnTrafficRoute:Landroid/graphics/Bitmap;

.field private isShowCameOnRoute:Z

.field private jamTraffic:Landroid/graphics/Bitmap;

.field private mLineWidth:F

.field private normalRoute:Landroid/graphics/Bitmap;

.field private slowTraffic:Landroid/graphics/Bitmap;

.field private smoothTraffic:Landroid/graphics/Bitmap;

.field private unknownTraffic:Landroid/graphics/Bitmap;

.field private veryJamTraffic:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->smoothTraffic:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->unknownTraffic:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->slowTraffic:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->jamTraffic:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->veryJamTraffic:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->arrowOnTrafficRoute:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->normalRoute:Landroid/graphics/Bitmap;

    const-string v0, "#4DF6CC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->arrowColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->isShowCameOnRoute:Z

    return-void
.end method


# virtual methods
.method public getArrowColor()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->arrowColor:I

    return v0
.end method

.method public getArrowOnTrafficRoute()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->arrowOnTrafficRoute:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getJamTraffic()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->jamTraffic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->mLineWidth:F

    return v0
.end method

.method public getNormalRoute()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->normalRoute:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSlowTraffic()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->slowTraffic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSmoothTraffic()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->smoothTraffic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnknownTraffic()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->unknownTraffic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVeryJamTraffic()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->veryJamTraffic:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isShowCameOnRoute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->isShowCameOnRoute:Z

    return v0
.end method

.method public setArrowColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->arrowColor:I

    return-void
.end method

.method public setArrowOnTrafficRoute(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->arrowOnTrafficRoute:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setJamTraffic(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->jamTraffic:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->mLineWidth:F

    return-void
.end method

.method public setNormalRoute(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->normalRoute:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOnRouteCameShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->isShowCameOnRoute:Z

    return-void
.end method

.method public setSlowTraffic(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->slowTraffic:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSmoothTraffic(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->smoothTraffic:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setUnknownTraffic(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->unknownTraffic:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setVeryJamTraffic(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/model/RouteOverlayOptions;->veryJamTraffic:Landroid/graphics/Bitmap;

    return-void
.end method
