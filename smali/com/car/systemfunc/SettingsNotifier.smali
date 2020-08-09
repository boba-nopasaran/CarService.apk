.class public Lcom/car/systemfunc/SettingsNotifier;
.super Landroid/database/ContentObserver;
.source "SettingsNotifier.java"

# interfaces
.implements Lcom/car/common/LocationManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;,
        Lcom/car/systemfunc/SettingsNotifier$IndexComparator;,
        Lcom/car/systemfunc/SettingsNotifier$MyHttpResponseListener;,
        Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;
    }
.end annotation


# static fields
.field private static final ACTION_ADAS_OK:Ljava/lang/String; = "com.car.adas.ok"

.field static final ACTION_RECORDING_STORAGE_SLOW:Ljava/lang/String; = "com.car.writestorage.slow"

.field static final ACTION_SHOW_ALERT_SD:Ljava/lang/String; = "action_show_alert_sd"

.field private static final CAPTURE_PATH:Ljava/lang/String;

.field private static final DVR_PATH:Ljava/lang/String;

.field static final FLOW_USED_CHECK:I = 0x6

.field static final GET_DATA_INFO:I = 0x4

.field static final GET_USER_LIST:I = 0x3

.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOCKED_PATH:Ljava/lang/String;

.field private static final LOST_PATH:Ljava/lang/String;

.field private static final PHOTO_PATH:Ljava/lang/String;

.field private static final SD_STORAGE_PATH:Ljava/lang/String;

.field static final SIM_NETWORK_CHECK:I = 0x5

.field static final TAG:Ljava/lang/String; = "CarSvc_SettingsNotifier"

.field private static final VIDEO_PATH:Ljava/lang/String;

.field static final VOLUME_CHECK:I = 0x1

.field static final VOLUME_CHECK_FINISHED:I = 0x2

.field static sIntance:Lcom/car/systemfunc/SettingsNotifier;


# instance fields
.field mAvailableSize:J

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

.field mCaptureSize:J

.field private mCarCloudCallback:Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;

.field mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

.field mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field mDVRSize:J

.field mDataUsed:J

.field mDvrNum:I

.field mDvrStarted:Z

.field mDvrTime:I

.field mFlowReportedSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mFlowUsedSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mLastSatellites:I

.field mLocaleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Lcom/car/common/LocationManager;

.field mLockSize:J

.field mMobileConnected:Z

.field mNetworkStats:Landroid/net/NetworkStats;

.field private mPhoneStateListener:Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;

.field mPhotoSize:J

.field private mPolicyEditor:Lcom/car/systemfunc/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field mPrintCount:J

.field mSDVolume:Landroid/os/storage/StorageVolume;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field mTimeTokenSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTotalSize:J

.field mVideoSize:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SettingsNotifier;->SD_STORAGE_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getDVRPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SettingsNotifier;->DVR_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SettingsNotifier;->VIDEO_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SettingsNotifier;->LOCKED_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getCapturePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SettingsNotifier;->CAPTURE_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SettingsNotifier;->PHOTO_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarPath;->getLostPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/systemfunc/SettingsNotifier;->LOST_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mLocationManager:Lcom/car/common/LocationManager;

    iput v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mLastSatellites:I

    iput-boolean v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mMobileConnected:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mTimeTokenSet:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mPrintCount:J

    new-instance v0, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;

    invoke-direct {v0, p0, v2}, Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;-><init>(Lcom/car/systemfunc/SettingsNotifier;Lcom/car/systemfunc/SettingsNotifier$1;)V

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarCloudCallback:Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;

    new-instance v0, Lcom/car/systemfunc/SettingsNotifier$1;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/SettingsNotifier$1;-><init>(Lcom/car/systemfunc/SettingsNotifier;)V

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/systemfunc/SettingsNotifier$2;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/SettingsNotifier$2;-><init>(Lcom/car/systemfunc/SettingsNotifier;)V

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageListener:Landroid/os/storage/StorageEventListener;

    new-instance v0, Lcom/car/systemfunc/SettingsNotifier$4;

    invoke-direct {v0, p0}, Lcom/car/systemfunc/SettingsNotifier$4;-><init>(Lcom/car/systemfunc/SettingsNotifier;)V

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sput-object p0, Lcom/car/systemfunc/SettingsNotifier;->sIntance:Lcom/car/systemfunc/SettingsNotifier;

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/car/systemfunc/SettingsNotifier;->init()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/systemfunc/SettingsNotifier;->SD_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/systemfunc/SettingsNotifier;)Lcom/car/common/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mLocationManager:Lcom/car/common/LocationManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/car/systemfunc/SettingsNotifier;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/systemfunc/SettingsNotifier;->DVR_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/File;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/car/systemfunc/SettingsNotifier;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/systemfunc/SettingsNotifier;->LOCKED_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/systemfunc/SettingsNotifier;->CAPTURE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/systemfunc/SettingsNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/SettingsNotifier;->updateDataInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/car/systemfunc/SettingsNotifier;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/systemfunc/SettingsNotifier;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/car/systemfunc/SettingsNotifier;)I
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mLastSatellites:I

    return v0
.end method

.method static synthetic access$902(Lcom/car/systemfunc/SettingsNotifier;I)I
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/SettingsNotifier;->mLastSatellites:I

    return p1
.end method

.method private filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    const-string v2, "CarSvc_SettingsNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , emulated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/car/systemfunc/SettingsNotifier;->SD_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    iput-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mSDVolume:Landroid/os/storage/StorageVolume;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/storage/StorageVolume;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/storage/StorageVolume;

    return-object v2
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private static getFileSizes(Ljava/io/File;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_3

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v0, v1

    invoke-static {v6}, Lcom/car/systemfunc/SettingsNotifier;->getFileSizes(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    aget-object v6, v0, v1

    invoke-static {v6}, Lcom/car/systemfunc/SettingsNotifier;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_2

    :cond_3
    move-wide v4, v2

    goto :goto_0
.end method

.method public static getInstance()Lcom/car/systemfunc/SettingsNotifier;
    .locals 1

    sget-object v0, Lcom/car/systemfunc/SettingsNotifier;->sIntance:Lcom/car/systemfunc/SettingsNotifier;

    return-object v0
.end method

.method private isRegister()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ro.board.registered"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    const-string v2, "ro.board.lock"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateDataInfo()V
    .locals 44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "gsm.sim.operator.imsi"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mTemplate:Landroid/net/NetworkTemplate;

    if-eqz v4, :cond_0

    new-instance v14, Lcom/car/systemfunc/ChartData;

    invoke-direct {v14}, Lcom/car/systemfunc/ChartData;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/systemfunc/SettingsNotifier;->mTemplate:Landroid/net/NetworkTemplate;

    const/16 v10, 0xa

    invoke-interface {v4, v5, v10}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    iput-object v4, v14, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v14, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v36

    new-instance v33, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm"

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v36

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v14, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v36

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v36

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mPrintCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v4

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/car/systemfunc/SettingsNotifier;->mPrintCount:J

    const-wide/16 v10, 0x14

    rem-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-nez v4, :cond_a

    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_2

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "total bytes = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v14, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mPolicyEditor:Lcom/car/systemfunc/NetworkPolicyEditor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/systemfunc/SettingsNotifier;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5}, Lcom/car/systemfunc/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v32

    const-wide v22, 0x7fffffffffffffffL

    const-wide/high16 v20, -0x8000000000000000L

    if-eqz v14, :cond_0

    iget-object v4, v14, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v22

    iget-object v4, v14, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v22, v4

    if-nez v4, :cond_3

    move-wide/from16 v22, v28

    :cond_3
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v20, v4

    if-nez v4, :cond_4

    const-wide/16 v4, 0x1

    add-long v20, v28, v4

    :cond_4
    const/16 v19, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    if-eqz v32, :cond_6

    move-wide/from16 v0, v20

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    cmp-long v4, v8, v22

    if-lez v4, :cond_6

    move-object/from16 v0, v32

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    if-eqz v13, :cond_5

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generating cs="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " to ce="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " waiting for hs="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v19, 0x1

    :cond_6
    if-nez v19, :cond_7

    move-wide/from16 v8, v20

    cmp-long v4, v8, v22

    if-lez v4, :cond_7

    const-wide v4, 0x90321000L

    sub-long v6, v8, v4

    :cond_7
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    if-eqz v13, :cond_8

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cycle start = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    if-eqz v13, :cond_9

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cycle end = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/systemfunc/SettingsNotifier;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mNetworkStats:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mNetworkStats:Landroid/net/NetworkStats;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mNetworkStats:Landroid/net/NetworkStats;

    invoke-virtual {v4}, Landroid/net/NetworkStats;->size()I

    move-result v34

    :goto_3
    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mNetworkStats:Landroid/net/NetworkStats;

    move/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v35, v0

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_11

    move-object/from16 v0, v27

    array-length v4, v0

    if-lez v4, :cond_11

    if-eqz v13, :cond_c

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pn: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v10, 0x0

    aget-object v10, v27, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", total: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v40, v0

    add-long v10, v10, v40

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v26, 0x0

    :goto_5
    move-object/from16 v0, v27

    array-length v4, v0

    move/from16 v0, v26

    if-ge v0, v4, :cond_f

    if-eqz v13, :cond_d

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pn: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v10, v27, v26

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    :cond_e
    const/16 v34, 0x0

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v27, v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v10, v27, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v27, v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    :cond_11
    if-eqz v13, :cond_10

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " unknown "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", total: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v40, v0

    add-long v10, v10, v40

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_12
    const/16 v17, 0x0

    iget-object v5, v14, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v12, 0x0

    move-wide/from16 v10, v28

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v17

    if-eqz v17, :cond_13

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v38, v4, v10

    :goto_7
    iget-object v4, v14, Lcom/car/systemfunc/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/car/systemfunc/SettingsNotifier;->mDataUsed:J

    if-eqz v13, :cond_0

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cycle total bytes = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", all bytes is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/car/systemfunc/SettingsNotifier;->mDataUsed:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    const-wide/16 v38, 0x0

    goto :goto_7
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method checkSoftAp()V
    .locals 6

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v3, "CarSvc_SettingsNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Softap: ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pwd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/car/systemfunc/SettingsNotifier$3;

    invoke-direct {v4, p0}, Lcom/car/systemfunc/SettingsNotifier$3;-><init>(Lcom/car/systemfunc/SettingsNotifier;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public checkUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.otacheck"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public delUser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    invoke-virtual {v0, p1}, Lcom/car/common/CarCloudServiceImpl;->removeUser(Ljava/lang/String;)Z

    return-void
.end method

.method dirSize(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const-string v1, "0"

    :try_start_0
    invoke-static {p1}, Lcom/car/systemfunc/SettingsNotifier;->getFileSizes(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CarSvc_SettingsNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public formatSdcard()V
    .locals 3

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mSDVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mSDVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/systemfunc/SettingsNotifier;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mSDVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method getVolumeSize(Ljava/lang/String;)V
    .locals 12

    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v6, v9

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    mul-long v10, v4, v6

    iput-wide v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mTotalSize:J

    mul-long v10, v0, v4

    iput-wide v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mAvailableSize:J

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mTotalSize:J

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    iget-wide v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mAvailableSize:J

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const-string v9, "CarSvc_SettingsNotifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "total="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", available="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 0

    return-void
.end method

.method init()V
    .locals 14

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "fm_enable"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "fm_freq"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "autosleeptime"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sensity"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gsensor_enable"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gsensor_sensitive"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "video_lock_enable"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "bt_keyboard_enable"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "autosave_time"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stoppreview_time"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "front_quality"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mute_record"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "show_float_button"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gps_watermark"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "adas_calibration"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "adas_report"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "adas_report2"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "adas_report3"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "edog_mode"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "slow_time"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "mcu_voltage"

    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "location_providers_allowed"

    invoke-static {v10}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.videorecorder.recording_start"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.videorecorder.recording_stop"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.satellites"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.otadownload"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.fakebtn.report"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.monitor.notify"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.custom.app"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.adas.ok"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.writestorage.slow"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "action_show_alert_sd"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.camera_state"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.restart_dvr"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.sdformat"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.updatelocale"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.softap"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.apconfig"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.mobiledata"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.iprange"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.car.dvr.reverse.gear.popup"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/car/systemfunc/SettingsNotifier;->checkSoftAp()V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Lcom/car/systemfunc/SettingsNotifier;->getVolumeList()[Landroid/os/storage/StorageVolume;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    new-instance v9, Lcom/car/common/CameraServiceImpl;

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/car/common/CameraServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    new-instance v9, Lcom/car/common/CarCloudServiceImpl;

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/car/common/CarCloudServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarCloudCallback:Lcom/car/systemfunc/SettingsNotifier$CarCloudCallback;

    invoke-virtual {v9, v10}, Lcom/car/common/CarCloudServiceImpl;->registerCallback(Lcom/car/common/ICarCloudCallback;)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v9, "netstats"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v9

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mStatsService:Landroid/net/INetworkStatsService;

    :try_start_0
    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v9}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v9

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v9

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    new-instance v9, Lcom/car/systemfunc/NetworkPolicyEditor;

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v9, v10}, Lcom/car/systemfunc/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mPolicyEditor:Lcom/car/systemfunc/NetworkPolicyEditor;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mPolicyEditor:Lcom/car/systemfunc/NetworkPolicyEditor;

    invoke-virtual {v9}, Lcom/car/systemfunc/NetworkPolicyEditor;->read()V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const-wide/16 v12, 0x3e8

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v9, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;-><init>(Lcom/car/systemfunc/SettingsNotifier;Lcom/car/systemfunc/SettingsNotifier$1;)V

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mPhoneStateListener:Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mPhoneStateListener:Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;

    const/16 v11, 0x101

    invoke-virtual {v9, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/car/common/LocationManager;->getInstance(Landroid/content/Context;)Lcom/car/common/LocationManager;

    move-result-object v9

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mLocationManager:Lcom/car/common/LocationManager;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mLocationManager:Lcom/car/common/LocationManager;

    invoke-virtual {v9, p0}, Lcom/car/common/LocationManager;->addListener(Lcom/car/common/LocationManager$Listener;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v7

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mLocaleList:Ljava/util/List;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mLocaleList:Ljava/util/List;

    invoke-static {v9, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/car/utils/HttpRequestManager;->create()V

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    const-wide/32 v12, 0xea60

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v9, "persist.flow.calc"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v6, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v4, v0, v2

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mFlowUsedSet:Ljava/util/HashMap;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mFlowReportedSet:Ljava/util/HashMap;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mTimeTokenSet:Ljava/util/HashMap;

    const-string v10, ""

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    :catch_1
    move-exception v1

    const-string v9, "CarSvc_SettingsNotifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception happen: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public installUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.otainstall"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public isAccOn(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method isMobileDataConnected()Z
    .locals 4

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v2, "fm_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fm_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getFMEnable(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "fm_freq"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fm_freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getFMFreq(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "autosleeptime"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autosleeptime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getAutoSleepTime(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "autosleeptime"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getAutoSleepTime(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v2, "sensity"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getWakeupSensity(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sensity"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getWakeupSensity(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "gsensor_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsensor_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gsensor_enable"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "gsensor_sensitive"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsensor_sensitive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getGsensorSensitive(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gsensor_sensitive"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getGsensorSensitive(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "video_lock_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_lock_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "video_lock_enable"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "bt_keyboard_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "CarSvc_SettingsNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_keyboard_enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "bt_keyboard_enable"

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    const-string v2, "autosave_time"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autosave_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getAutoSaveTime(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "autosave_time"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getAutoSaveTime(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportDvrChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "stoppreview_time"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stoppreview_time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getStopPreviewTime(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v2, "front_quality"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "front_quality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getFrontCameraQuality(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "front_quality"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getFrontCameraQuality(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportDvrChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "mute_record"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute_record="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getMuteRecord(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mute_record"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getMuteRecord(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportDvrChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "show_float_button"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show_float_button="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getShowFloatButton(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string v2, "gps_watermark"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gps_watermark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getGPSWaterMark(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gps_watermark"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getGPSWaterMark(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportDvrChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v0, "CarSvc_SettingsNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen_brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getBrightnessPercent(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "screen_brightness"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getBrightnessPercent(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "CarSvc_SettingsNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gps_enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/ProviderUtils;->getGPSEnable(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "gps_enable"

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/ProviderUtils;->getGPSEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto :goto_2

    :cond_12
    const-string v0, "adas_calibration"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "adas_calibration"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v2, "adas_calibration"

    invoke-static {v1, v2}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportAdasChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "adas_report"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "adas_report"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v2, "adas_report"

    invoke-static {v1, v2}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportAdasChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "adas_report2"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "adas_report2"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v2, "adas_report2"

    invoke-static {v1, v2}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportAdasChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_15
    const-string v0, "adas_report3"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "adas_report3"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    const-string v2, "adas_report3"

    invoke-static {v1, v2}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportAdasChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "edog_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "edog_mode"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getEDogModeFromDb(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    const-string v0, "slow_time"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "slow_time"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    const-string v0, "mcu_voltage"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mcu_voltage"

    iget-object v1, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getMcuVoltage(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/systemfunc/SettingsNotifier;->reportGenericChange(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v3}, Lcom/car/httpserver/CarWebSocketServer;->hasClients()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "enable"

    iget-object v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/ProviderUtils;->getGPSEnable(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "satellites"

    iget v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mLastSatellites:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "nmea"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method reportAdasChange(Ljava/lang/String;Z)V
    .locals 5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "adas"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method reportBackCarChange(Z)V
    .locals 5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "backing"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "backcar"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public reportBondlist()V
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarCloudServiceImpl:Lcom/car/common/CarCloudServiceImpl;

    invoke-virtual {v0}, Lcom/car/common/CarCloudServiceImpl;->getUserListAsync()Z

    return-void
.end method

.method public reportCpuInfo()V
    .locals 18

    const-string v14, "sys.cpu.info"

    const-string v15, ""

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v14, v3

    const/4 v15, 0x5

    if-ge v14, v15, :cond_1

    const-string v14, "CarSvc_SettingsNotifier"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reportCpuInfo error, sys.cpu.info="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    div-double v4, v14, v16

    const/4 v14, 0x1

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    div-double v12, v14, v16

    const/4 v14, 0x2

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v14, 0x3

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v14, 0x4

    aget-object v14, v3, v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v14, "f"

    const-string v15, "report"

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "core"

    invoke-virtual {v9, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "freq"

    invoke-virtual {v9, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "cputemp"

    invoke-virtual {v9, v14, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v14, "pmutemp"

    invoke-virtual {v9, v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v14, "isfull"

    invoke-virtual {v9, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v14, "acc_on"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/car/systemfunc/SettingsNotifier;->isAccOn(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v14, "cpuinfo"

    invoke-virtual {v10, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "CarSvc_SettingsNotifier"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method reportDvrChange(Ljava/lang/String;I)V
    .locals 5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "dvr"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method reportDvrChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "dvr"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method reportDvrChange(Ljava/lang/String;Z)V
    .locals 5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "dvr"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method reportGenericChange(Ljava/lang/String;I)V
    .locals 5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "generic"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public reportLang()V
    .locals 7

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "f"

    const-string v6, "report"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/car/systemfunc/SettingsNotifier;->mLocaleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string v5, "lang"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "default"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "CarSvc_SettingsNotifier"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public reportMobile()V
    .locals 12

    const/16 v11, 0x3e

    const/4 v8, 0x1

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-ne v9, v10, :cond_3

    move v3, v8

    :goto_0
    invoke-virtual {p0}, Lcom/car/systemfunc/SettingsNotifier;->isMobileDataConnected()Z

    move-result v9

    iput-boolean v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mMobileConnected:Z

    const-string v9, "gsm.serial"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_0

    const/16 v9, 0x3c

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "10"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-eqz v0, :cond_4

    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "f"

    const-string v9, "report"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "ready"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "dbm"

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mPhoneStateListener:Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;

    iget v9, v9, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->lastDbm:I

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "enable"

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "connected"

    iget-boolean v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mMobileConnected:Z

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "type"

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "usage"

    iget-wide v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mDataUsed:J

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "sn"

    sget-object v9, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "imei"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/car/systemfunc/SettingsNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "iccid"

    iget-object v9, p0, Lcom/car/systemfunc/SettingsNotifier;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "registered"

    invoke-direct {p0}, Lcom/car/systemfunc/SettingsNotifier;->isRegister()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "flag"

    const-string v9, "persist.device.flag"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "mobile"

    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "CarSvc_SettingsNotifier"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    rem-int/lit8 v9, v6, 0x2

    if-ne v9, v8, :cond_1

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method reportRecordingStatus()V
    .locals 5

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v3}, Lcom/car/httpserver/CarWebSocketServer;->hasClients()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "start"

    iget-boolean v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mDvrStarted:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "num"

    iget v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mDvrNum:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "time"

    iget v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mDvrTime:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "record"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public reportSdcard()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method reportSdcardChange()V
    .locals 6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "f"

    const-string v4, "report"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "total"

    iget-wide v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mTotalSize:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "left"

    iget-wide v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mAvailableSize:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "dvrdir"

    iget-wide v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mDVRSize:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "lockdir"

    iget-wide v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mLockSize:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "capturedir"

    iget-wide v4, p0, Lcom/car/systemfunc/SettingsNotifier;->mCaptureSize:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "sdcard"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CarSvc_SettingsNotifier"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/CarWebSocketServer;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public reportUpdate()V
    .locals 3

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.otaprogress"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public restartDvr()V
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v0}, Lcom/car/common/CameraServiceImpl;->stopRecording()V

    iget-object v0, p0, Lcom/car/systemfunc/SettingsNotifier;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v0}, Lcom/car/common/CameraServiceImpl;->startRecording()V

    return-void
.end method

.method public setWebSocketServer(Lcom/car/httpserver/CarWebSocketServer;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier;->mCarWebSocketServer:Lcom/car/httpserver/CarWebSocketServer;

    return-void
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 0

    return-void
.end method

.method public updateLocale(Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/car/systemfunc/SettingsNotifier;->mLocaleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/car/systemfunc/SettingsNotifier;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0

    :cond_1
    return-void
.end method
