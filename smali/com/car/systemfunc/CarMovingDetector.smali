.class public Lcom/car/systemfunc/CarMovingDetector;
.super Ljava/lang/Object;
.source "CarMovingDetector.java"


# static fields
.field private static final EARTH_RADIUS:D = 6378137.0

.field private static final MINI_METERS:D = 10.0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExit:I

.field private mIsMoving:Z

.field private mLatitude:D

.field private mLocationManager:Lcom/car/common/LocationManager;

.field private mLongitude:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/car/systemfunc/CarMovingDetector;->mIsMoving:Z

    iput-wide v0, p0, Lcom/car/systemfunc/CarMovingDetector;->mLatitude:D

    iput-wide v0, p0, Lcom/car/systemfunc/CarMovingDetector;->mLongitude:D

    iput-object p1, p0, Lcom/car/systemfunc/CarMovingDetector;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/car/systemfunc/CarMovingDetector;->mExit:I

    iget-object v0, p0, Lcom/car/systemfunc/CarMovingDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/LocationManager;->getInstance(Landroid/content/Context;)Lcom/car/common/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/car/systemfunc/CarMovingDetector;->mLocationManager:Lcom/car/common/LocationManager;

    iget-object v0, p0, Lcom/car/systemfunc/CarMovingDetector;->mLocationManager:Lcom/car/common/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/common/LocationManager;->recordLocation(Z)V

    return-void
.end method

.method private getDistance(DDDD)D
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/car/systemfunc/CarMovingDetector;->rad(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-direct {v0, v1, v2}, Lcom/car/systemfunc/CarMovingDetector;->rad(D)D

    move-result-wide v6

    sub-double v8, v4, v6

    invoke-direct/range {p0 .. p2}, Lcom/car/systemfunc/CarMovingDetector;->rad(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/car/systemfunc/CarMovingDetector;->rad(D)D

    move-result-wide v16

    sub-double v10, v14, v16

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v8, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v20, v10, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->asin(D)D

    move-result-wide v16

    mul-double v12, v14, v16

    const-wide v14, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v12, v14

    const-wide v14, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    const-wide/16 v16, 0x2710

    div-long v14, v14, v16

    long-to-double v12, v14

    return-wide v12
.end method

.method private rad(D)D
    .locals 5

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p1

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public exit()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/systemfunc/CarMovingDetector;->mLocationManager:Lcom/car/common/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/common/LocationManager;->recordLocation(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/systemfunc/CarMovingDetector;->mExit:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCarMoving()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/car/systemfunc/CarMovingDetector;->movingCalc()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method movingCalc()Z
    .locals 12

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/car/systemfunc/CarMovingDetector;->mLocationManager:Lcom/car/common/LocationManager;

    invoke-virtual {v1}, Lcom/car/common/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/car/systemfunc/CarMovingDetector;->mIsMoving:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-boolean v1, p0, Lcom/car/systemfunc/CarMovingDetector;->mIsMoving:Z

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    iget-wide v2, p0, Lcom/car/systemfunc/CarMovingDetector;->mLongitude:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/car/systemfunc/CarMovingDetector;->mLatitude:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    iput-wide v6, p0, Lcom/car/systemfunc/CarMovingDetector;->mLongitude:D

    iput-wide v8, p0, Lcom/car/systemfunc/CarMovingDetector;->mLatitude:D

    :cond_1
    iget-wide v2, p0, Lcom/car/systemfunc/CarMovingDetector;->mLongitude:D

    iget-wide v4, p0, Lcom/car/systemfunc/CarMovingDetector;->mLatitude:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/car/systemfunc/CarMovingDetector;->getDistance(DDDD)D

    move-result-wide v10

    monitor-enter p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v1, v10, v2

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/car/systemfunc/CarMovingDetector;->mIsMoving:Z

    iput-wide v6, p0, Lcom/car/systemfunc/CarMovingDetector;->mLongitude:D

    iput-wide v8, p0, Lcom/car/systemfunc/CarMovingDetector;->mLatitude:D

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/car/systemfunc/CarMovingDetector;->mIsMoving:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method
