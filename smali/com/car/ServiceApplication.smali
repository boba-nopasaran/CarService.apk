.class public Lcom/car/ServiceApplication;
.super Landroid/app/Application;
.source "ServiceApplication.java"


# static fields
.field public static EDOG_TYPE_ID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CarSvc_ServiceApplication"

.field private static sInstance:Lcom/car/ServiceApplication;

.field static sRadarList:[Ljava/lang/String;

.field static sSpeechInited:Z


# instance fields
.field mAiosReadyCount:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field mLastReadyTime:J

.field mLastResetTime:J

.field private final mObserver:Landroid/database/ContentObserver;

.field public mSystemEventHandler:Lcom/car/systemfunc/SystemEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    sput-boolean v2, Lcom/car/ServiceApplication;->sSpeechInited:Z

    .line 101
    const-string v0, "persist.edog.type.id"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/ServiceApplication;->EDOG_TYPE_ID:I

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.hdsc.edog"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "entry.dsa2014"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sxprd.radarspeed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.yuanjitong.yuandogradar"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/ServiceApplication;->sRadarList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/car/ServiceApplication;->mAiosReadyCount:I

    .line 107
    iput-wide v2, p0, Lcom/car/ServiceApplication;->mLastReadyTime:J

    .line 108
    iput-wide v2, p0, Lcom/car/ServiceApplication;->mLastResetTime:J

    .line 110
    new-instance v0, Lcom/car/ServiceApplication$1;

    invoke-direct {v0, p0}, Lcom/car/ServiceApplication$1;-><init>(Lcom/car/ServiceApplication;)V

    iput-object v0, p0, Lcom/car/ServiceApplication;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Lcom/car/ServiceApplication$2;

    invoke-direct {v0, p0}, Lcom/car/ServiceApplication$2;-><init>(Lcom/car/ServiceApplication;)V

    iput-object v0, p0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/car/ServiceApplication$3;

    iget-object v1, p0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/car/ServiceApplication$3;-><init>(Lcom/car/ServiceApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/ServiceApplication;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Lcom/car/ServiceApplication;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    return-object v0
.end method

.method public static getInstance()Lcom/car/ServiceApplication;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    return-object v0
.end method

.method private isRemoteProcess(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    int-to-long v2, v6

    .line 208
    .local v2, "myPid":J
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 210
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 211
    .local v5, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 215
    .local v4, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    int-to-long v6, v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    const-string v6, "com.car.carservice:remote"

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    const/4 v6, 0x1

    .line 221
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method TASInit()V
    .locals 12

    .prologue
    .line 249
    const-string v0, "244234"

    .line 250
    .local v0, "appId":Ljava/lang/String;
    const-string v1, "VZXBZ-A7UCX-7KN4Y-7WSI7-NUSI3-K5FYU"

    .line 251
    .local v1, "appToken":Ljava/lang/String;
    new-instance v4, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;

    invoke-direct {v4, v0, v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v4, "initParam":Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;
    const-string v10, "ro.device.id"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->setDeviceUniqueId(Ljava/lang/String;)V

    .line 256
    const-string v10, "/sdcard/"

    invoke-virtual {v4, v10}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->setStorageRootPath(Ljava/lang/String;)V

    .line 258
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->setFloatBtnEnabled(Z)V

    .line 260
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v9, "wakeupWords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "persist.wakeup.keywords"

    const-string v11, "\u4f60\u597d\u5c0f\u660e,\u5c0f\u660e\u4f60\u597d"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "propValue":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "items":[Ljava/lang/String;
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v5, v2, v3

    .line 264
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .end local v5    # "item":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v9}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;->setWakeupKeywords(Ljava/util/ArrayList;)V

    .line 267
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    move-result-object v10

    new-instance v11, Lcom/car/ServiceApplication$4;

    invoke-direct {v11, p0}, Lcom/car/ServiceApplication$4;-><init>(Lcom/car/ServiceApplication;)V

    invoke-virtual {v10, p0, v4, v11}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;)V

    .line 283
    return-void
.end method

.method getImei()V
    .locals 6

    .prologue
    const/16 v3, 0x65

    .line 383
    iget-object v2, p0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/car/ServiceApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 385
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 386
    const-string v2, "sys.car.imei"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/backup/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".nvram"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    const-string v2, "CarSvc_ServiceApplication"

    const-string v3, "Try to backup nvram now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "ctl.start"

    const-string v3, "nvrambackup"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v2, p0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 23

    .prologue
    .line 399
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 400
    sput-object p0, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/ServiceApplication;->isRemoteProcess(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 402
    const-string v3, "ro.auto_restart_ap"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 403
    .local v19, "restartAPMins":I
    if-lez v19, :cond_0

    .line 404
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.car.restartAP"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v15, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v15, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 406
    .local v8, "pi":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/car/ServiceApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 407
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 v6, v19, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 409
    const-string v3, "CarSvc_ServiceApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: restartAP mins="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "persist.gps.server"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 412
    new-instance v3, Lcom/car/systemfunc/GpsUploadManager;

    const-string v4, "persist.gps.server"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/car/systemfunc/GpsUploadManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    :cond_1
    const-string v3, "com.socol"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 416
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/car/ServiceApplication;->getImei()V

    .line 417
    new-instance v3, Lcom/car/common/NetChangeReceiver;

    invoke-direct {v3}, Lcom/car/common/NetChangeReceiver;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/common/NetChangeReceiver;->init(Landroid/app/Application;)V

    .line 419
    invoke-static/range {p0 .. p0}, Lcom/car/systemfunc/DataCardManager;->create(Landroid/content/Context;)V

    .line 420
    new-instance v3, Lcom/car/systemfunc/NaviManager;

    invoke-direct {v3}, Lcom/car/systemfunc/NaviManager;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/systemfunc/NaviManager;->init(Landroid/content/Context;)V

    .line 421
    invoke-static/range {p0 .. p0}, Lcom/car/utils/SoundPlayer;->create(Landroid/content/Context;)V

    .line 422
    new-instance v3, Lcom/car/systemfunc/SettingsNotifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/car/systemfunc/SettingsNotifier;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 423
    const-string v3, "ro.yunos.product.type"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 424
    new-instance v3, Lcom/car/systemfunc/OtaChecker;

    invoke-direct {v3}, Lcom/car/systemfunc/OtaChecker;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/systemfunc/OtaChecker;->init(Landroid/content/Context;)V

    .line 425
    new-instance v3, Lcom/car/systemfunc/FMController;

    invoke-direct {v3}, Lcom/car/systemfunc/FMController;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/systemfunc/FMController;->init(Landroid/content/Context;)V

    .line 427
    :cond_3
    const-string v3, "ro.btkb.newjiazu"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_8

    .line 428
    new-instance v3, Lcom/car/jiazu/NewJiazuManager;

    invoke-direct {v3}, Lcom/car/jiazu/NewJiazuManager;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/jiazu/NewJiazuManager;->init(Landroid/content/Context;)V

    .line 431
    :goto_0
    new-instance v3, Lcom/car/common/map/MyLocation;

    invoke-direct {v3}, Lcom/car/common/map/MyLocation;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/common/map/MyLocation;->init(Landroid/content/Context;)V

    .line 433
    const-string v3, "ro.gps.type"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ublox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 434
    new-instance v3, Lcom/car/systemfunc/BeidouAgpsManager;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/car/systemfunc/BeidouAgpsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/car/systemfunc/BeidouAgpsManager;->init()V

    .line 437
    :cond_4
    const-string v3, "ro.func.flag"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 438
    .local v22, "value":I
    and-int/lit8 v3, v22, 0x1

    if-nez v3, :cond_5

    and-int/lit8 v3, v22, 0x8

    if-nez v3, :cond_5

    const-string v3, "persist.soft.watchdog"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 439
    :cond_5
    new-instance v3, Lcom/car/systemfunc/WatchDogManager;

    invoke-direct {v3}, Lcom/car/systemfunc/WatchDogManager;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/systemfunc/WatchDogManager;->init(Landroid/content/Context;)V

    .line 441
    :cond_6
    new-instance v3, Lcom/car/utils/TipPlayer;

    invoke-direct {v3}, Lcom/car/utils/TipPlayer;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/utils/TipPlayer;->init(Landroid/content/Context;)V

    .line 442
    new-instance v3, Lcom/car/systemfunc/SystemEventHandler;

    invoke-direct {v3}, Lcom/car/systemfunc/SystemEventHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/car/ServiceApplication;->mSystemEventHandler:Lcom/car/systemfunc/SystemEventHandler;

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/ServiceApplication;->mSystemEventHandler:Lcom/car/systemfunc/SystemEventHandler;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/systemfunc/SystemEventHandler;->init(Landroid/content/Context;)V

    .line 445
    new-instance v15, Landroid/content/Intent;

    const-class v3, Lcom/car/CarService;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .restart local v15    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/car/ServiceApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 448
    new-instance v18, Landroid/content/Intent;

    const-class v3, Lcom/car/gpsservice/CarGPSService;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .local v18, "mServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/car/ServiceApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 451
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 452
    const-string v3, "com.aispeech.aios"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 453
    const-string v3, "com.aispeech.aios.adapter"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 454
    const-string v3, "com.aispeech.aios.wechat"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 455
    const-string v3, "com.txznet.txz"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 456
    const-string v3, "com.txznet.webchat"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 465
    :cond_7
    :goto_1
    const-string v3, "ro.radar.type"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 466
    .local v21, "type":I
    if-ltz v21, :cond_b

    .line 467
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_2
    sget-object v3, Lcom/car/ServiceApplication;->sRadarList:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_b

    .line 468
    move/from16 v0, v21

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/car/ServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/car/ServiceApplication;->sRadarList:[Ljava/lang/String;

    aget-object v4, v4, v16

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 467
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 430
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "j":I
    .end local v18    # "mServiceIntent":Landroid/content/Intent;
    .end local v21    # "type":I
    .end local v22    # "value":I
    :cond_8
    new-instance v3, Lcom/car/systemfunc/IJiaZuSdk;

    invoke-direct {v3}, Lcom/car/systemfunc/IJiaZuSdk;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/systemfunc/IJiaZuSdk;->init(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 457
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v18    # "mServiceIntent":Landroid/content/Intent;
    .restart local v22    # "value":I
    :cond_9
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 458
    const-string v3, "com.aispeech.aios"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 459
    const-string v3, "com.aispeech.aios.adapter"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 460
    const-string v3, "com.aispeech.aios.wechat"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 461
    const-string v3, "com.txznet.txz"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 462
    const-string v3, "com.txznet.webchat"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 469
    .restart local v16    # "j":I
    .restart local v21    # "type":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/car/ServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/car/ServiceApplication;->sRadarList:[Ljava/lang/String;

    aget-object v4, v4, v16

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/car/utils/Util;->disableApk(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    .line 473
    .end local v16    # "j":I
    :cond_b
    const-string v3, "persist.tts.type"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 474
    .local v20, "ttsType":I
    new-instance v3, Lcom/car/speech/StreamMuteManager;

    invoke-direct {v3}, Lcom/car/speech/StreamMuteManager;-><init>()V

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v3, v0, v4, v1}, Lcom/car/speech/StreamMuteManager;->init(Landroid/content/Context;II)V

    .line 475
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .local v14, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.car.nvramreset"

    invoke-virtual {v14, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_10

    .line 478
    const-string v3, "sdk.aios.intent.action.MAJOR_WAKEUP"

    invoke-virtual {v14, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    new-instance v3, Lcom/car/ServiceApplication$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/car/ServiceApplication$6;-><init>(Lcom/car/ServiceApplication;)V

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->initialize(Landroid/app/Application;Lcom/aispeech/aios/sdk/listener/AIOSReadyListener;)V

    .line 515
    new-instance v3, Lcom/car/speech/SpeechManager;

    invoke-direct {v3}, Lcom/car/speech/SpeechManager;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/speech/SpeechManager;->init(Landroid/content/Context;)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/car/ServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sensity"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/ServiceApplication;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 525
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/ServiceApplication;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/car/ServiceApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/car/ServiceApplication;->simApkInit()V

    .line 528
    sget-object v3, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    invoke-static {v3}, Lcom/car/common/ProviderUtils;->getEDogMode(Landroid/content/Context;)I

    move-result v12

    .line 529
    .local v12, "eDogMode":I
    const-string v3, "CarSvc_ServiceApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EDOG_TYPE_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/car/ServiceApplication;->EDOG_TYPE_ID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", eDogMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    if-ltz v12, :cond_d

    .line 532
    :try_start_0
    sget v3, Lcom/car/ServiceApplication;->EDOG_TYPE_ID:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 533
    const-string v3, "CarSvc_ServiceApplication"

    const-string v4, "start tencent eDog service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v9, Landroid/content/ComponentName;

    const-string v3, "com.car.tencentedog"

    const-string v4, "com.car.tencentedog.EDogService"

    invoke-direct {v9, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .local v9, "cn":Landroid/content/ComponentName;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 536
    .local v13, "edogintent":Landroid/content/Intent;
    invoke-virtual {v13, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 537
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/car/ServiceApplication;->stopService(Landroid/content/Intent;)Z

    .line 538
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/car/ServiceApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v9    # "cn":Landroid/content/ComponentName;
    .end local v13    # "edogintent":Landroid/content/Intent;
    :cond_d
    :goto_5
    const-string v3, "ro.product.fw_ver"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 549
    .local v10, "cur_fw":Ljava/lang/String;
    const-string v3, "persist.last.fw_ver"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 550
    .local v17, "last_fw":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 551
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 552
    const-string v3, "persist.last.fw_ver"

    invoke-static {v3, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v3, Landroid/content/Intent;

    const-string v4, "CUSTOM_FOTA_AFTERUPDATESUCCESS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/car/ServiceApplication;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 558
    :cond_e
    :goto_6
    const-string v3, "ro.kaola.fujian"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 559
    new-instance v3, Lcom/car/systemfunc/KaoLaManager;

    invoke-direct {v3}, Lcom/car/systemfunc/KaoLaManager;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/car/ServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/systemfunc/KaoLaManager;->init(Landroid/content/Context;)V

    .line 561
    .end local v10    # "cur_fw":Ljava/lang/String;
    .end local v12    # "eDogMode":I
    .end local v14    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v17    # "last_fw":Ljava/lang/String;
    .end local v18    # "mServiceIntent":Landroid/content/Intent;
    .end local v19    # "restartAPMins":I
    .end local v20    # "ttsType":I
    .end local v21    # "type":I
    .end local v22    # "value":I
    :cond_f
    return-void

    .line 517
    .restart local v14    # "filter":Landroid/content/IntentFilter;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v18    # "mServiceIntent":Landroid/content/Intent;
    .restart local v19    # "restartAPMins":I
    .restart local v20    # "ttsType":I
    .restart local v21    # "type":I
    .restart local v22    # "value":I
    :cond_10
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    .line 519
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_11

    .line 520
    invoke-static {}, Lcom/car/speech/MiniSpeech;->getIntance()Lcom/car/speech/MiniSpeech;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/car/speech/MiniSpeech;->init(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 521
    :cond_11
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_c

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/car/ServiceApplication;->TASInit()V

    goto/16 :goto_4

    .line 540
    .restart local v12    # "eDogMode":I
    :cond_12
    :try_start_1
    new-instance v3, Lcom/car/edog/EDog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/car/edog/EDog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 542
    :catch_0
    move-exception v11

    .line 543
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "CarSvc_ServiceApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create eDog failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 556
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "cur_fw":Ljava/lang/String;
    .restart local v17    # "last_fw":Ljava/lang/String;
    :cond_13
    const-string v3, "persist.last.fw_ver"

    invoke-static {v3, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method setScore()V
    .locals 7

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "percent":I
    const-string v4, "sys.car.score_aios"

    const-string v5, "120,100,80"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "scoreList":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "score":[Ljava/lang/String;
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getWakeupSensity(Landroid/content/Context;)I

    move-result v3

    .line 233
    .local v3, "sensity":I
    array-length v4, v1

    if-ge v4, v3, :cond_0

    .line 246
    :goto_0
    return-void

    .line 237
    :cond_0
    if-nez v3, :cond_1

    .line 238
    const/4 v0, 0x0

    .line 243
    :goto_1
    const-string v4, "CarSvc_ServiceApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScore to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v4

    int-to-float v5, v0

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->setWakeupThreshPercent(F)V

    goto :goto_0

    .line 240
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 241
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method simApkInit()V
    .locals 4

    .prologue
    .line 564
    sget-object v2, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    const-string v3, "com.share.android"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    sget-object v2, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    const-string v3, "com.share.android"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    const-string v2, "ctl.start"

    const-string v3, "tianetd"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    sget-object v2, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    const-string v3, "com.coagent.ecar"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    sget-object v2, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    const-string v3, "com.coagent.ecar"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.coagent.ecar"

    const-string v3, "com.coagent.ecarnet.car.service.BootService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v1, "ecarIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0, v1}, Lcom/car/ServiceApplication;->stopService(Landroid/content/Intent;)Z

    .line 577
    invoke-virtual {p0, v1}, Lcom/car/ServiceApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 578
    new-instance v2, Lcom/car/ecar/ECarManager;

    invoke-direct {v2}, Lcom/car/ecar/ECarManager;-><init>()V

    sget-object v3, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    invoke-virtual {v2, v3}, Lcom/car/ecar/ECarManager;->init(Landroid/content/Context;)V

    .line 581
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "ecarIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method speechInit()V
    .locals 28

    .prologue
    .line 286
    const-string v23, "CarSvc_ServiceApplication"

    const-string v24, "speechInit calling"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/car/ServiceApplication;->setScore()V

    .line 289
    const-string v23, "sys.default.map"

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 290
    .local v14, "packageString":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 291
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/aispeech/aios/sdk/manager/AIOSSettingManager;->setDefaultMap(Ljava/lang/String;)V

    .line 292
    :cond_0
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSUIManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSUIManager;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/aispeech/aios/sdk/manager/AIOSUIManager;->setUIDisappearAlways(Z)V

    .line 293
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v23

    const-string v24, "ro.voice.oneshot"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->setOneshotEnabled(Z)V

    .line 294
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->setScanAppEnabled(Z)V

    .line 295
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->setNativeShortcutWakeupsEnabled(Z)V

    .line 296
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/aispeech/aios/sdk/manager/AIOSMusicManager;->setScanLocalMusicEnabled(Z)V

    .line 297
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v23

    const/16 v24, 0x1

    const-string v25, "ro.voice.interruptable"

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->customizeRecorder(ZZZ)V

    .line 299
    const-string v23, "cn.jyuntech.map"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 300
    new-instance v23, Lcom/car/speech/SpeechMapManager;

    invoke-direct/range {v23 .. v23}, Lcom/car/speech/SpeechMapManager;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/car/speech/SpeechMapManager;->init(Landroid/content/Context;)V

    .line 302
    :cond_1
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v23

    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "jian xiao yin liang"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, "zeng da yin liang"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string v26, "tui chu dao hang"

    aput-object v26, v24, v25

    const/16 v25, 0x3

    const-string v26, "guan bi dao hang"

    aput-object v26, v24, v25

    const/16 v25, 0x4

    const-string v26, "jie shu dao hang"

    aput-object v26, v24, v25

    const/16 v25, 0x5

    const-string v26, "ting zhi dao hang"

    aput-object v26, v24, v25

    const/16 v25, 0x6

    const-string v26, "zhong zhi dao hang"

    aput-object v26, v24, v25

    invoke-virtual/range {v23 .. v24}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->disableNativeShortcutWakeup([Ljava/lang/String;)V

    .line 305
    const-string v23, "ro.voicewakeup.more"

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_2

    .line 306
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v23

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "da kai dao hang"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, "da kai yin yue"

    aput-object v26, v24, v25

    invoke-virtual/range {v23 .. v24}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->disableNativeShortcutWakeup([Ljava/lang/String;)V

    .line 309
    :cond_2
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSUIManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSUIManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/aispeech/aios/sdk/manager/AIOSUIManager;->obtainLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 310
    .local v11, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v23, 0x7d2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 311
    const/16 v23, 0x500

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 312
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSUIManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSUIManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/aispeech/aios/sdk/manager/AIOSUIManager;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 314
    const-string v23, "persist.wakeup.keywords"

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 315
    .local v15, "propValue":Ljava/lang/String;
    const-string v23, "persist.wakeup.threshhold"

    const-string v24, ""

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 316
    .local v18, "threshHoldValue":Ljava/lang/String;
    const/16 v21, 0x0

    .line 317
    .local v21, "wakeupSet":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v13, "majorWakeups":Ljava/util/List;, "Ljava/util/List<Lcom/aispeech/aios/common/bean/MajorWakeup;>;"
    new-instance v6, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v6}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    .line 319
    .local v6, "format":Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;
    sget-object v23, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    .line 321
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_7

    .line 322
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 323
    .local v22, "words":[Ljava/lang/String;
    const-string v23, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 324
    .local v19, "ths":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 325
    const/4 v9, 0x0

    .line 326
    .local v9, "index":I
    move-object/from16 v4, v22

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_6

    aget-object v20, v4, v8

    .line 327
    .local v20, "w":Ljava/lang/String;
    const-string v16, ""

    .line 328
    .local v16, "py":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_5

    .line 330
    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v23

    invoke-static {v0, v6}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object v17

    .line 331
    .local v17, "pys":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_3

    .line 332
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v24, v17, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 337
    .end local v17    # "pys":[Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v23, v7, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 338
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 328
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 333
    :catch_0
    move-exception v5

    .line 335
    .local v5, "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    invoke-virtual {v5}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    goto :goto_2

    .line 341
    .end local v5    # "e":Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 342
    const-string v23, "CarSvc_ServiceApplication"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "w: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", py: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", th="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v19, v9

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v23, Lcom/aispeech/aios/common/bean/MajorWakeup;

    aget-object v24, v19, v9

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/aispeech/aios/common/bean/MajorWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v9, v9, 0x1

    .line 326
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 346
    .end local v7    # "i":I
    .end local v16    # "py":Ljava/lang/String;
    .end local v20    # "w":Ljava/lang/String;
    :cond_6
    const/16 v21, 0x1

    .line 350
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "index":I
    .end local v12    # "len$":I
    .end local v19    # "ths":[Ljava/lang/String;
    .end local v22    # "words":[Ljava/lang/String;
    :cond_7
    if-nez v21, :cond_8

    .line 351
    new-instance v23, Lcom/aispeech/aios/common/bean/MajorWakeup;

    const-string v24, "\u4f60\u597d\u5c0f\u660e"

    const-string v25, "ni hao xiao ming"

    const v26, 0x3dc28f5c    # 0.095f

    invoke-direct/range {v23 .. v26}, Lcom/aispeech/aios/common/bean/MajorWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v23, Lcom/aispeech/aios/common/bean/MajorWakeup;

    const-string v24, "\u5c0f\u660e\u4f60\u597d"

    const-string v25, "xiao ming ni hao"

    const v26, 0x3db851ec    # 0.09f

    invoke-direct/range {v23 .. v26}, Lcom/aispeech/aios/common/bean/MajorWakeup;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_8
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/aispeech/aios/sdk/manager/AIOSCustomizeManager;->setMajorWakeup(Ljava/util/List;)V

    .line 356
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSAudioManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSAudioManager;

    move-result-object v23

    new-instance v24, Lcom/car/ServiceApplication$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/ServiceApplication$5;-><init>(Lcom/car/ServiceApplication;)V

    invoke-virtual/range {v23 .. v24}, Lcom/aispeech/aios/sdk/manager/AIOSAudioManager;->registerAudioListener(Lcom/aispeech/aios/sdk/listener/AIOSAudioListener;)V

    .line 372
    sget-object v23, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    invoke-static/range {v23 .. v23}, Lcom/car/speech/NewSpeechCall;->getInstance(Landroid/content/Context;)Lcom/car/speech/NewSpeechCall;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/car/speech/NewSpeechCall;->init()V

    .line 373
    sget-object v23, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    invoke-static/range {v23 .. v23}, Lcom/car/speech/SpeechSystemCtrl;->getInstance(Landroid/content/Context;)Lcom/car/speech/SpeechSystemCtrl;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/car/speech/SpeechSystemCtrl;->init()V

    .line 374
    sget-object v23, Lcom/car/ServiceApplication;->sInstance:Lcom/car/ServiceApplication;

    invoke-static/range {v23 .. v23}, Lcom/car/speech/SpeechWakeupWord;->getInstance(Landroid/content/Context;)Lcom/car/speech/SpeechWakeupWord;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/car/speech/SpeechWakeupWord;->init()Z

    move-result v23

    if-nez v23, :cond_9

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/ServiceApplication;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    const-wide/16 v26, 0x2710

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 377
    :cond_9
    new-instance v10, Landroid/content/Intent;

    const-string v23, "com.tts.init"

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v10, "intent":Landroid/content/Intent;
    const-string v23, "status"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/car/ServiceApplication;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 380
    return-void
.end method
