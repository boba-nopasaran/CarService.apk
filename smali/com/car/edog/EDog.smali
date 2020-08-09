.class public Lcom/car/edog/EDog;
.super Landroid/database/ContentObserver;
.source "EDog.java"

# interfaces
.implements Lcom/amap/api/navi/AMapNaviListener;


# static fields
.field private static final EDOG_ON_OFF:Ljava/lang/String; = "com.car.fakebtn.dclick"

.field private static final EDOG_UPDATE:Ljava/lang/String; = "com.car.edog.update"

.field private static final SAME_TYPE_MIN_DISTANCE:I

.field private static final SAME_TYPE_MIN_INTERVAL:I

.field private static final TAG:Ljava/lang/String; = "CarSvc_eDog"

.field private static final TYPE_CONGESTION:I = 0xff


# instance fields
.field private mAimlessDistance:I

.field private mAimlessTime:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mLastTipsDistance:[I

.field private mLastTipsTime:[J

.field private mMapNavi:Lcom/amap/api/navi/AMapNavi;

.field private mModeBak:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.edog.filter.seconds"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/car/edog/EDog;->SAME_TYPE_MIN_INTERVAL:I

    const-string v0, "persist.edog.filter.distance"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/edog/EDog;->SAME_TYPE_MIN_DISTANCE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/16 v1, 0x100

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput v0, p0, Lcom/car/edog/EDog;->mAimlessTime:I

    iput v0, p0, Lcom/car/edog/EDog;->mAimlessDistance:I

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/car/edog/EDog;->mLastTipsTime:[J

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/car/edog/EDog;->mLastTipsDistance:[I

    new-instance v0, Lcom/car/edog/EDog$1;

    invoke-direct {v0, p0}, Lcom/car/edog/EDog$1;-><init>(Lcom/car/edog/EDog;)V

    iput-object v0, p0, Lcom/car/edog/EDog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/car/edog/EDog;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/car/edog/EDog;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/edog/EDog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/edog/EDog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/edog/EDog;)I
    .locals 1

    iget v0, p0, Lcom/car/edog/EDog;->mModeBak:I

    return v0
.end method

.method static synthetic access$102(Lcom/car/edog/EDog;I)I
    .locals 0

    iput p1, p0, Lcom/car/edog/EDog;->mModeBak:I

    return p1
.end method

.method static synthetic access$200(Lcom/car/edog/EDog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/edog/EDog;->setAimlessMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/car/edog/EDog;)Lcom/amap/api/navi/AMapNavi;
    .locals 1

    iget-object v0, p0, Lcom/car/edog/EDog;->mMapNavi:Lcom/amap/api/navi/AMapNavi;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/edog/EDog;)[J
    .locals 1

    iget-object v0, p0, Lcom/car/edog/EDog;->mLastTipsTime:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/edog/EDog;)[I
    .locals 1

    iget-object v0, p0, Lcom/car/edog/EDog;->mLastTipsDistance:[I

    return-object v0
.end method

.method private getCurrentSpeedStr()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const-string v5, "0"

    const-string v7, "sys.current.gpsinfo"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-lt v7, v10, :cond_0

    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x2

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v4, v1, 0x7f

    int-to-float v7, v4

    const v8, 0x40666666    # 3.6f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    return-object v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/amap/api/navi/AMapNavi;->getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v1

    iput-object v1, p0, Lcom/car/edog/EDog;->mMapNavi:Lcom/amap/api/navi/AMapNavi;

    iget-object v1, p0, Lcom/car/edog/EDog;->mMapNavi:Lcom/amap/api/navi/AMapNavi;

    if-nez v1, :cond_0

    const-string v1, "CarSvc_eDog"

    const-string v2, "eDog init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/edog/EDog;->mMapNavi:Lcom/amap/api/navi/AMapNavi;

    invoke-virtual {v1, p0}, Lcom/amap/api/navi/AMapNavi;->addAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V

    iget-object v1, p0, Lcom/car/edog/EDog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edog_mode"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.fakebtn.dclick"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.edog.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.dx.intent.colse_edog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/edog/EDog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/edog/EDog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/edog/EDog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getEDogMode(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/car/edog/EDog;->mModeBak:I

    iget v1, p0, Lcom/car/edog/EDog;->mModeBak:I

    invoke-direct {p0, v1}, Lcom/car/edog/EDog;->setAimlessMode(I)V

    const-string v1, "CarSvc_eDog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eDog init ok, mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/edog/EDog;->mModeBak:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SAME_TYPE_MIN_INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/car/edog/EDog;->SAME_TYPE_MIN_INTERVAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SAME_TYPE_MIN_DISTANCE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/car/edog/EDog;->SAME_TYPE_MIN_DISTANCE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static lengthToString(I)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_0

    const-string v0, "%d\u7c73"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.2f\u516c\u91cc"

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, p0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static secondsTimeToString(I)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    div-int/lit16 v0, p0, 0xe10

    rem-int/lit16 v4, p0, 0xe10

    div-int/lit8 v1, v4, 0x3c

    rem-int/lit16 v4, p0, 0xe10

    rem-int/lit8 v2, v4, 0x3c

    const-string v3, ""

    if-lez v0, :cond_0

    const-string v4, "%d\u5c0f\u65f6"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-lez v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%d\u5206\u949f"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-lez v2, :cond_2

    :cond_2
    return-object v3
.end method

.method private setAimlessMode(I)V
    .locals 4

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAimlessMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/edog/EDog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/car/common/ProviderUtils;->setEDogMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/car/edog/EDog;->mLastTipsTime:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/car/edog/EDog;->mLastTipsDistance:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    packed-switch p1, :pswitch_data_0

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/car/edog/EDog;->mMapNavi:Lcom/amap/api/navi/AMapNavi;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNavi;->stopAimlessMode()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/car/edog/EDog;->mMapNavi:Lcom/amap/api/navi/AMapNavi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/AMapNavi;->startAimlessMode(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/car/edog/EDog;->mMapNavi:Lcom/amap/api/navi/AMapNavi;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/AMapNavi;->startAimlessMode(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/car/edog/EDog;->mMapNavi:Lcom/amap/api/navi/AMapNavi;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/AMapNavi;->startAimlessMode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public OnUpdateTrafficFacility(Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V
    .locals 11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u524d\u65b9"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getDistance()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u7c73"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getBroadcastType()I

    move-result v7

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getBroadcastType()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    const-string v8, "CarSvc_eDog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnUpdateTrafficFacility: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u96f7\u8fbe\u6d4b\u901f\uff0c\u9650\u901f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getLimitSpeed()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0c\u5f53\u524d\u65f6\u901f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/car/edog/EDog;->getCurrentSpeedStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :sswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u8fdd\u7ae0\u62cd\u7167"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :sswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6709\u8fde\u7eed\u62cd\u7167"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :sswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u94c1\u8def\u9053\u53e3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :sswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u4e8b\u6545\u591a\u53d1\u7b2c\uff0c\u8bf7\u8c28\u614e\u9a7e\u9a76"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :sswitch_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u53f3\u4fa7\u53d8\u7a84"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :sswitch_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5de6\u4fa7\u53d8\u7a84"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :sswitch_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u95ef\u7ea2\u706f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :sswitch_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u8f66\u9053\u8fdd\u7ae0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_1
    if-eqz v6, :cond_0

    if-ltz v7, :cond_2

    const/16 v8, 0x100

    if-lt v7, v8, :cond_3

    :cond_2
    const-string v8, "CarSvc_eDog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnUpdateTrafficFacility, unknown type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " force set type=0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lcom/car/edog/EDog;->mLastTipsTime:[J

    aget-wide v8, v8, v7

    sub-long v2, v4, v8

    iget v8, p0, Lcom/car/edog/EDog;->mAimlessDistance:I

    iget-object v9, p0, Lcom/car/edog/EDog;->mLastTipsDistance:[I

    aget v9, v9, v7

    sub-int v0, v8, v9

    const/4 v1, 0x0

    sget v8, Lcom/car/edog/EDog;->SAME_TYPE_MIN_INTERVAL:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_4

    sget v8, Lcom/car/edog/EDog;->SAME_TYPE_MIN_DISTANCE:I

    if-lt v0, v8, :cond_4

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;->getDistance()I

    move-result v8

    sget v9, Lcom/car/edog/EDog;->SAME_TYPE_MIN_DISTANCE:I

    if-ge v8, v9, :cond_5

    :cond_4
    const/4 v1, 0x1

    :goto_2
    const-string v8, "CarSvc_eDog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tips="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", interval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", distance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", skip="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v6, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v8, p0, Lcom/car/edog/EDog;->mLastTipsTime:[J

    aput-wide v4, v8, v7

    iget-object v8, p0, Lcom/car/edog/EDog;->mLastTipsDistance:[I

    iget v9, p0, Lcom/car/edog/EDog;->mAimlessDistance:I

    aput v9, v8, v7

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xe -> :sswitch_4
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x1c -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_5
        0x25 -> :sswitch_6
        0x5c -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public OnUpdateTrafficFacility(Lcom/autonavi/tbt/TrafficFacilityInfo;)V
    .locals 0

    return-void
.end method

.method public OnUpdateTrafficFacility([Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V
    .locals 4

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/car/edog/EDog;->OnUpdateTrafficFacility(Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hideCross()V
    .locals 0

    return-void
.end method

.method public hideLaneInfo()V
    .locals 0

    return-void
.end method

.method public notifyParallelRoad(I)V
    .locals 0

    return-void
.end method

.method public onArriveDestination()V
    .locals 0

    return-void
.end method

.method public onArrivedWayPoint(I)V
    .locals 0

    return-void
.end method

.method public onCalculateMultipleRoutesSuccess([I)V
    .locals 0

    return-void
.end method

.method public onCalculateRouteFailure(I)V
    .locals 0

    return-void
.end method

.method public onCalculateRouteSuccess()V
    .locals 0

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v0, "edog_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/edog/EDog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/common/ProviderUtils;->getEDogMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/car/edog/EDog;->mModeBak:I

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edog_mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/edog/EDog;->mModeBak:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/car/edog/EDog;->mModeBak:I

    invoke-direct {p0, v0}, Lcom/car/edog/EDog;->setAimlessMode(I)V

    iget v0, p0, Lcom/car/edog/EDog;->mModeBak:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/edog/EDog;->mContext:Landroid/content/Context;

    const-string v1, "edoggaode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode"

    iget v2, p0, Lcom/car/edog/EDog;->mModeBak:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onEndEmulatorNavi()V
    .locals 0

    return-void
.end method

.method public onGetNavigationText(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetNavigationText: tips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGpsOpenStatus(Z)V
    .locals 0

    return-void
.end method

.method public onInitNaviFailure()V
    .locals 0

    return-void
.end method

.method public onInitNaviSuccess()V
    .locals 0

    return-void
.end method

.method public onLocationChange(Lcom/amap/api/navi/model/AMapNaviLocation;)V
    .locals 0

    return-void
.end method

.method public onNaviInfoUpdate(Lcom/amap/api/navi/model/NaviInfo;)V
    .locals 0

    return-void
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
    .locals 0

    return-void
.end method

.method public onReCalculateRouteForYaw()V
    .locals 0

    return-void
.end method

.method public onServiceAreaUpdate([Lcom/amap/api/navi/model/AMapServiceAreaInfo;)V
    .locals 0

    return-void
.end method

.method public onStartNavi(I)V
    .locals 0

    return-void
.end method

.method public onTrafficStatusUpdate()V
    .locals 0

    return-void
.end method

.method public showCross(Lcom/amap/api/navi/model/AMapNaviCross;)V
    .locals 0

    return-void
.end method

.method public showLaneInfo([Lcom/amap/api/navi/model/AMapLaneInfo;[B[B)V
    .locals 0

    return-void
.end method

.method public updateAimlessModeCongestionInfo(Lcom/amap/api/navi/model/AimLessModeCongestionInfo;)V
    .locals 4

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CongestionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->getCongestionStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventLonLat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->getEventLon()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->getEventLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CarSvc_eDog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AimLessModeCongestionInfo;->getTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAimlessModeStatistics(Lcom/amap/api/navi/model/AimLessModeStat;)V
    .locals 5

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AimLessModeStat;->getAimlessModeTime()I

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AimLessModeStat;->getAimlessModeDistance()I

    move-result v0

    rem-int/lit8 v2, v1, 0xa

    if-nez v2, :cond_0

    iget v2, p0, Lcom/car/edog/EDog;->mAimlessTime:I

    if-eq v2, v1, :cond_0

    const-string v2, "CarSvc_eDog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAimlessModeStatistics: distance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v1, p0, Lcom/car/edog/EDog;->mAimlessTime:I

    iput v0, p0, Lcom/car/edog/EDog;->mAimlessDistance:I

    return-void
.end method

.method public updateCameraInfo([Lcom/amap/api/navi/model/AMapNaviCameraInfo;)V
    .locals 0

    return-void
.end method
