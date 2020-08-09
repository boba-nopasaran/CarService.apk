.class public Lcom/car/systemfunc/CollisionSensor;
.super Ljava/lang/Object;
.source "CollisionSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/CollisionSensor$onCollisionListener;
    }
.end annotation


# static fields
.field private static final DVR_ACCIDENT_RECORD_DEFAULT_PARAM:Ljava/lang/String; = "20,20"

.field private static final DVR_ACCIDENT_RECORD_PARAM:Ljava/lang/String; = "persist.accident.record.param"

.field private static FORCE_THRESHOLD:I = 0x0

.field private static final INVALID_TIME:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "CarSvc_CollisionSensor"

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field locationManager:Landroid/location/LocationManager;

.field private mCollisionLastTime:J

.field private mCollisionListener:Lcom/car/systemfunc/CollisionSensor$onCollisionListener;

.field private mCollisionMinInterval:I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mGpsLastTime:J

.field private mHandler:Landroid/os/Handler;

.field private mLastPrintTime:J

.field mLastSpeed:F

.field mLevel:I

.field mOverSpeed:Z

.field mPeakValue:I

.field private mSenorStarted:Z

.field private mSensorLastTime:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mVideoLockEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    sput v0, Lcom/car/systemfunc/CollisionSensor;->FORCE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x1770

    iput v2, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionMinInterval:I

    iput-wide v6, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorLastTime:J

    iput-wide v6, p0, Lcom/car/systemfunc/CollisionSensor;->mGpsLastTime:J

    iput-wide v6, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionLastTime:J

    iput-wide v6, p0, Lcom/car/systemfunc/CollisionSensor;->mLastPrintTime:J

    iput v4, p0, Lcom/car/systemfunc/CollisionSensor;->mPeakValue:I

    iput-boolean v4, p0, Lcom/car/systemfunc/CollisionSensor;->mSenorStarted:Z

    iput-boolean v4, p0, Lcom/car/systemfunc/CollisionSensor;->mOverSpeed:Z

    iput v3, p0, Lcom/car/systemfunc/CollisionSensor;->mLevel:I

    iput-boolean v3, p0, Lcom/car/systemfunc/CollisionSensor;->mVideoLockEnable:Z

    new-instance v2, Lcom/car/systemfunc/CollisionSensor$1;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/CollisionSensor$1;-><init>(Lcom/car/systemfunc/CollisionSensor;)V

    iput-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/systemfunc/CollisionSensor$2;

    iget-object v5, p0, Lcom/car/systemfunc/CollisionSensor;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v5}, Lcom/car/systemfunc/CollisionSensor$2;-><init>(Lcom/car/systemfunc/CollisionSensor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mContentObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/car/systemfunc/CollisionSensor;->mContext:Landroid/content/Context;

    const-string v2, "persist.accident.record.param"

    const-string v5, "20,20"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionMinInterval:I

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "gsensor_sensitive"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/car/systemfunc/CollisionSensor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "video_lock_enable"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/car/systemfunc/CollisionSensor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mContext:Landroid/content/Context;

    const-string v5, "location"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->locationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Lcom/car/systemfunc/CollisionSensor;->getGsensorSensitive(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/car/systemfunc/CollisionSensor;->mLevel:I

    iget v2, p0, Lcom/car/systemfunc/CollisionSensor;->mLevel:I

    invoke-static {v2}, Lcom/car/systemfunc/CollisionSensor;->changeThreshold(I)V

    invoke-static {p1}, Lcom/car/systemfunc/CollisionSensor;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v3

    :goto_0
    iget v2, p0, Lcom/car/systemfunc/CollisionSensor;->mLevel:I

    invoke-static {v2, p1}, Lcom/car/common/ProviderUtils;->setGsensorSensitiveForKernel(ILandroid/content/Context;)V

    invoke-static {p1}, Lcom/car/systemfunc/CollisionSensor;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/car/systemfunc/CollisionSensor;->mVideoLockEnable:Z

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/car/systemfunc/CollisionSensor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/CollisionSensor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static changeThreshold(I)V
    .locals 4

    const-string v1, "persist.car.sensitive"

    const-string v2, "18,16,14,127,100,0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/car/systemfunc/CollisionSensor;->FORCE_THRESHOLD:I

    const-string v1, "CarSvc_CollisionSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/car/systemfunc/CollisionSensor;->FORCE_THRESHOLD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getGsensorEnbale(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getGsensorSensitive(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getGsensorSensitive(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getVideoLockEnbale(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeFormat(F)F
    .locals 2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14

    const/16 v9, 0x64

    const/4 v13, 0x0

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/car/systemfunc/CollisionSensor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    if-ne v8, v12, :cond_0

    iget-object v8, p0, Lcom/car/systemfunc/CollisionSensor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v8, p0, Lcom/car/systemfunc/CollisionSensor;->mVideoLockEnable:Z

    if-eqz v8, :cond_1

    iget-object v8, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    if-ne v8, v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorLastTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v8, v13

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v8, v12

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v7, v8, v9

    mul-float v8, v5, v5

    mul-float v9, v6, v6

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v4, v8

    iput-wide v0, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorLastTime:J

    iget-wide v8, p0, Lcom/car/systemfunc/CollisionSensor;->mLastPrintTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    iput-wide v0, p0, Lcom/car/systemfunc/CollisionSensor;->mLastPrintTime:J

    iput v13, p0, Lcom/car/systemfunc/CollisionSensor;->mPeakValue:I

    :cond_3
    :goto_1
    sget v8, Lcom/car/systemfunc/CollisionSensor;->FORCE_THRESHOLD:I

    const/16 v9, 0x5a

    if-le v8, v9, :cond_5

    sget v8, Lcom/car/systemfunc/CollisionSensor;->FORCE_THRESHOLD:I

    :goto_2
    if-le v4, v8, :cond_1

    iget-wide v8, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionLastTime:J

    sub-long v8, v0, v8

    iget v10, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionMinInterval:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    const-string v8, "CarSvc_CollisionSensor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSensorChanged: interval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionLastTime:J

    sub-long v10, v0, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionMinInterval:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", skip it."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v8, p0, Lcom/car/systemfunc/CollisionSensor;->mPeakValue:I

    if-gt v8, v4, :cond_3

    iput v4, p0, Lcom/car/systemfunc/CollisionSensor;->mPeakValue:I

    goto :goto_1

    :cond_5
    sget v8, Lcom/car/systemfunc/CollisionSensor;->FORCE_THRESHOLD:I

    mul-int/lit8 v8, v8, 0xa

    goto :goto_2

    :cond_6
    iput-wide v0, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionLastTime:J

    iget-object v8, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionListener:Lcom/car/systemfunc/CollisionSensor$onCollisionListener;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionListener:Lcom/car/systemfunc/CollisionSensor$onCollisionListener;

    invoke-interface {v8}, Lcom/car/systemfunc/CollisionSensor$onCollisionListener;->onCollision()V

    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.car.sysevent.display"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u78b0\u649e\u503c\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \u901f\u5ea6\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/car/systemfunc/CollisionSensor;->mLastSpeed:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "detail"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/car/systemfunc/CollisionSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public setOnCollisionListener(Lcom/car/systemfunc/CollisionSensor$onCollisionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/CollisionSensor;->mCollisionListener:Lcom/car/systemfunc/CollisionSensor$onCollisionListener;

    return-void
.end method

.method public start()V
    .locals 6

    iget-boolean v1, p0, Lcom/car/systemfunc/CollisionSensor;->mSenorStarted:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/car/systemfunc/CollisionSensor;->mSenorStarted:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/car/systemfunc/CollisionSensor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/car/systemfunc/CollisionSensor;->mSenorStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/systemfunc/CollisionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/systemfunc/CollisionSensor;->mSenorStarted:Z

    goto :goto_0
.end method
