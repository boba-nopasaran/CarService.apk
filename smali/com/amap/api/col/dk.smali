.class public Lcom/amap/api/col/dk;
.super Ljava/lang/Object;
.source "SDKLocationManager.java"


# instance fields
.field public a:Lcom/amap/api/location/AMapLocationClient;

.field private b:Lcom/amap/api/navi/IGpsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/dk;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/dk;->a(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/dk;->b:Lcom/amap/api/navi/IGpsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dk;->b:Lcom/amap/api/navi/IGpsCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/amap/api/navi/IGpsCallback;->onLocationChanged(ILandroid/location/Location;)V

    const-string v0, "SDKLOCATION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9a\u4f4dsdk-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOffset(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    new-instance v1, Lcom/amap/api/col/dk$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/dk$1;-><init>(Lcom/amap/api/col/dk;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    iget-object v0, p0, Lcom/amap/api/col/dk;->b:Lcom/amap/api/navi/IGpsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dk;->b:Lcom/amap/api/navi/IGpsCallback;

    invoke-interface {v0}, Lcom/amap/api/navi/IGpsCallback;->onGpsStarted()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOffset(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    new-instance v1, Lcom/amap/api/col/dk$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/dk$2;-><init>(Lcom/amap/api/col/dk;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    iget-object v0, p0, Lcom/amap/api/col/dk;->b:Lcom/amap/api/navi/IGpsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dk;->b:Lcom/amap/api/navi/IGpsCallback;

    invoke-interface {v0}, Lcom/amap/api/navi/IGpsCallback;->onGpsStarted()V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/navi/IGpsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/dk;->b:Lcom/amap/api/navi/IGpsCallback;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dk;->a:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :cond_0
    return-void
.end method
