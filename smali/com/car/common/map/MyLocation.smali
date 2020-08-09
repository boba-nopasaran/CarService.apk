.class public final Lcom/car/common/map/MyLocation;
.super Ljava/lang/Object;
.source "MyLocation.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# static fields
.field public static final GPS_PROP_INFO:Ljava/lang/String; = "sys.current.gpsinfo"

.field private static final SAVE_INTERVAL:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "CarSvc_MyLocation"

.field private static sInst:Lcom/car/common/map/MyLocation;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurCity:Ljava/lang/String;

.field private mCurLat:D

.field private mCurLon:D

.field mErrorCount:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastLat:D

.field mLastLocation:Lcom/amap/api/location/AMapLocation;

.field private mLastLon:D

.field private mLastSaveTime:J

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field public mLocationClient:Lcom/amap/api/location/AMapLocationClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/common/map/MyLocation;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/common/map/MyLocation;->mErrorCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/common/map/MyLocation;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/common/map/MyLocation;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/car/common/map/MyLocation;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/common/map/MyLocation;->broadcast()V

    return-void
.end method

.method private broadcast()V
    .locals 3

    iget-object v2, p0, Lcom/car/common/map/MyLocation;->mLastLocation:Lcom/amap/api/location/AMapLocation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/common/map/MyLocation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/location/AMapLocationListener;

    iget-object v2, p0, Lcom/car/common/map/MyLocation;->mLastLocation:Lcom/amap/api/location/AMapLocation;

    invoke-interface {v1, v2}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static instance()Lcom/car/common/map/MyLocation;
    .locals 1

    sget-object v0, Lcom/car/common/map/MyLocation;->sInst:Lcom/car/common/map/MyLocation;

    return-object v0
.end method

.method private saveCurrentLocation()V
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/car/common/map/MyLocation;->mLastSaveTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    iget-wide v8, p0, Lcom/car/common/map/MyLocation;->mLastSaveTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0x1d4c0

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/car/common/map/MyLocation;->mContext:Landroid/content/Context;

    const-string v8, "Location"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "City"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "Lat"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v7, "Lon"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    iget-object v7, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-wide v8, p0, Lcom/car/common/map/MyLocation;->mCurLat:D

    double-to-float v7, v8

    cmpl-float v7, v7, v4

    if-nez v7, :cond_1

    iget-wide v8, p0, Lcom/car/common/map/MyLocation;->mCurLon:D

    double-to-float v7, v8

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_2

    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v7, "City"

    iget-object v8, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "Lon"

    iget-wide v8, p0, Lcom/car/common/map/MyLocation;->mCurLon:D

    double-to-float v8, v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v7, "Lat"

    iget-wide v8, p0, Lcom/car/common/map/MyLocation;->mCurLat:D

    double-to-float v8, v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v7, "CarSvc_MyLocation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "save new location, city="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",lon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/car/common/map/MyLocation;->mCurLon:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Lat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/car/common/map/MyLocation;->mCurLat:D

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "persist.sys.car.city"

    iget-object v8, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-wide v2, p0, Lcom/car/common/map/MyLocation;->mLastSaveTime:J

    :cond_3
    return-void
.end method


# virtual methods
.method public curCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    return-object v0
.end method

.method public curLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/car/common/map/MyLocation;->mCurLat:D

    return-wide v0
.end method

.method public curLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/car/common/map/MyLocation;->mCurLon:D

    return-wide v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x1

    sput-object p0, Lcom/car/common/map/MyLocation;->sInst:Lcom/car/common/map/MyLocation;

    iput-object p1, p0, Lcom/car/common/map/MyLocation;->mContext:Landroid/content/Context;

    const-string v2, "ro.market.area"

    const-string v3, "china"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "china"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ro.gaode.need"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ro.yunos.product.type"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "df9a48ea92fc80a4bdef0089e489ae46"

    invoke-static {v2}, Lcom/amap/api/location/AMapLocationClient;->setApiKey(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/amap/api/location/AMapLocationClient;

    iget-object v3, p0, Lcom/car/common/map/MyLocation;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/common/map/MyLocation;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p0, Lcom/car/common/map/MyLocation;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v2, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption;->setNeedAddress(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v2, p0, Lcom/car/common/map/MyLocation;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v2, p0, Lcom/car/common/map/MyLocation;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_1
    iget-object v2, p0, Lcom/car/common/map/MyLocation;->mContext:Landroid/content/Context;

    const-string v3, "Location"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "City"

    const-string v3, "\u6df1\u5733"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    const-string v2, "Lat"

    const v3, 0x41b45edd

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/car/common/map/MyLocation;->mCurLat:D

    const-string v2, "Lon"

    const v3, 0x42e3e49c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/car/common/map/MyLocation;->mCurLon:D

    const-string v2, "persist.sys.car.city"

    iget-object v3, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CarSvc_MyLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init done, city="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",lon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/car/common/map/MyLocation;->mCurLon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Lat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/car/common/map/MyLocation;->mCurLat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public lastLocation()Lcom/amap/api/location/AMapLocation;
    .locals 1

    iget-object v0, p0, Lcom/car/common/map/MyLocation;->mLastLocation:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/car/common/map/MyLocation;->mLastLocation:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/common/map/MyLocation;->mCurCity:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/car/common/map/MyLocation;->mCurLat:D

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/car/common/map/MyLocation;->mCurLon:D

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/car/common/map/MyLocation;->broadcast()V

    invoke-direct {p0}, Lcom/car/common/map/MyLocation;->saveCurrentLocation()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/car/common/map/MyLocation;->mErrorCount:I

    rem-int/lit8 v0, v0, 0x3c

    if-nez v0, :cond_3

    const-string v0, "CarSvc_MyLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location Error, ErrCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Lcom/car/common/map/MyLocation;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/common/map/MyLocation;->mErrorCount:I

    goto :goto_0
.end method

.method public registerListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    iget-object v1, p0, Lcom/car/common/map/MyLocation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/car/common/map/MyLocation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CarSvc_MyLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/common/map/MyLocation;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/common/map/MyLocation$1;

    invoke-direct {v2, p0}, Lcom/car/common/map/MyLocation$1;-><init>(Lcom/car/common/map/MyLocation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/car/common/map/MyLocation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
