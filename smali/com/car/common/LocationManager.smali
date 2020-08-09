.class public Lcom/car/common/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/common/LocationManager$LocationListener;,
        Lcom/car/common/LocationManager$NmeaListenClass;,
        Lcom/car/common/LocationManager$Listener;
    }
.end annotation


# static fields
.field static final MSG_GPS_UPDATE_TIMEOUT:I = 0x65

.field static final MSG_SATELLITE_UPDATE_TIMEOUT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CarSvc_LocationManager"

.field static sInstance:Lcom/car/common/LocationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field mGpsStatus:Landroid/location/GpsStatus;

.field private final mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field mHandler:Landroid/os/Handler;

.field mLastNmea:Ljava/lang/String;

.field mLastTimeStamp:J

.field private mListener:Lcom/car/common/LocationManager$Listener;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/common/LocationManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mLocationListener:Lcom/car/common/LocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field mNmeaListener:Lcom/car/common/LocationManager$NmeaListenClass;

.field private mRecordLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/common/LocationManager;->sInstance:Lcom/car/common/LocationManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/car/common/LocationManager$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/common/LocationManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/car/common/LocationManager$LocationListener;

    const-string v1, "gps"

    invoke-direct {v0, p0, v1}, Lcom/car/common/LocationManager$LocationListener;-><init>(Lcom/car/common/LocationManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/common/LocationManager;->mLocationListener:Lcom/car/common/LocationManager$LocationListener;

    new-instance v0, Lcom/car/common/LocationManager$1;

    invoke-direct {v0, p0}, Lcom/car/common/LocationManager$1;-><init>(Lcom/car/common/LocationManager;)V

    iput-object v0, p0, Lcom/car/common/LocationManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/common/LocationManager$2;

    invoke-direct {v0, p0}, Lcom/car/common/LocationManager$2;-><init>(Lcom/car/common/LocationManager;)V

    iput-object v0, p0, Lcom/car/common/LocationManager;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    const-string v0, ""

    iput-object v0, p0, Lcom/car/common/LocationManager;->mLastNmea:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/common/LocationManager;->mLastTimeStamp:J

    iput-object p1, p0, Lcom/car/common/LocationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/common/LocationManager;->mListener:Lcom/car/common/LocationManager$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/car/common/LocationManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/common/LocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/common/LocationManager;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/common/LocationManager;)Lcom/car/common/LocationManager$Listener;
    .locals 1

    iget-object v0, p0, Lcom/car/common/LocationManager;->mListener:Lcom/car/common/LocationManager$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/common/LocationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/common/LocationManager;->mRecordLocation:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/car/common/LocationManager;
    .locals 2

    sget-object v0, Lcom/car/common/LocationManager;->sInstance:Lcom/car/common/LocationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/common/LocationManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/common/LocationManager;-><init>(Landroid/content/Context;Lcom/car/common/LocationManager$Listener;)V

    sput-object v0, Lcom/car/common/LocationManager;->sInstance:Lcom/car/common/LocationManager;

    :cond_0
    sget-object v0, Lcom/car/common/LocationManager;->sInstance:Lcom/car/common/LocationManager;

    return-object v0
.end method

.method private startReceivingLocationUpdates()V
    .locals 5

    iget-object v2, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/common/LocationManager;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    iget-object v2, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/location/LocationRequest;->create()Landroid/location/LocationRequest;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    iget-object v2, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/car/common/LocationManager;->mLocationListener:Lcom/car/common/LocationManager$LocationListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/car/common/LocationManager;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    new-instance v2, Lcom/car/common/LocationManager$NmeaListenClass;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/car/common/LocationManager$NmeaListenClass;-><init>(Lcom/car/common/LocationManager;Lcom/car/common/LocationManager$1;)V

    iput-object v2, p0, Lcom/car/common/LocationManager;->mNmeaListener:Lcom/car/common/LocationManager$NmeaListenClass;

    iget-object v2, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/car/common/LocationManager;->mNmeaListener:Lcom/car/common/LocationManager$NmeaListenClass;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v2, "CarSvc_LocationManager"

    const-string v3, "startReceivingLocationUpdates"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_LocationManager"

    const-string v3, "fail to request location update, ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "CarSvc_LocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider does not exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopReceivingLocationUpdates()V
    .locals 3

    iget-object v1, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/car/common/LocationManager;->mLocationListener:Lcom/car/common/LocationManager$LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/car/common/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/car/common/LocationManager;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "CarSvc_LocationManager"

    const-string v2, "stopReceivingLocationUpdates"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/car/common/LocationManager;->mListener:Lcom/car/common/LocationManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/common/LocationManager;->mListener:Lcom/car/common/LocationManager$Listener;

    invoke-interface {v1}, Lcom/car/common/LocationManager$Listener;->hideGpsOnScreenIndicator()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_LocationManager"

    const-string v2, "fail to remove location listners, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/car/common/LocationManager$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/car/common/LocationManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/car/common/LocationManager;->mRecordLocation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/common/LocationManager;->mLocationListener:Lcom/car/common/LocationManager$LocationListener;

    invoke-virtual {v1}, Lcom/car/common/LocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentNmea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/common/LocationManager;->mLastNmea:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/car/common/LocationManager;->mLastTimeStamp:J

    return-wide v0
.end method

.method public getGpsStatus()Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/car/common/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method public recordLocation(Z)V
    .locals 3

    const-string v0, "CarSvc_LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordLocation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mRecordLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/car/common/LocationManager;->mRecordLocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/car/common/LocationManager;->mRecordLocation:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/car/common/LocationManager;->mRecordLocation:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/car/common/LocationManager;->startReceivingLocationUpdates()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/car/common/LocationManager;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method
