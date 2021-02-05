.class public Lcom/car/systemfunc/PowerConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;


# static fields
.field static final ACC_CHECK_TIMER:I = 0xbb8

.field public static final ACTION_BEFORE_SLEEP:Ljava/lang/String; = "com.car.workbeforesleeping"

.field public static final ACTION_FORCE_REBOOT:Ljava/lang/String; = "com.car.launcher.FORCE_REBOOT"

.field public static final ACTION_FORCE_SLEEP:Ljava/lang/String; = "com.car.launcher.FORCE_SLEEP"

.field private static final ACTION_MUSIC_CONTROL:Ljava/lang/String; = "qqmusiccar://?action=20&pull_from=10026465&m0=CONTROL&m1=0"

.field public static final ACTION_RECORDING_SLEEP:Ljava/lang/String; = "com.car.gotosleep"

.field public static final BATTERY_EXISTS:Z

.field private static final CONTROL:Ljava/lang/String; = "CONTROL"

.field public static final FORCE_SLEEP_TIME:I

.field public static final FORCE_SLEEP_TIPS:Ljava/lang/String; = "force_sleep_tips"

.field public static final GO_TO_SLEEP_FLAG_NO_MATTER_CHARGING:I = 0x100

.field public static final GO_TO_SLEEP_FLAG_OFF_EXT_DEVICES:I = 0x200

.field public static final MODEM_LED_KEY:Ljava/lang/String;

.field private static final MSG_CHECK_ACC_STATE:I = 0x4

.field private static final MSG_FAKE_BTN_DCLICK:I = 0x5

.field private static final MSG_MAKE_BACKLIGHT_ON:I = 0x3

.field private static final MSG_SET_MCU_0:I = 0x7

.field private static final MSG_SHOW_REBOOT_DIALOG:I = 0x2

.field private static final MSG_SHOW_SLEEP_DIALOG:I = 0x1

.field private static final MSG_START_WIFIAP:I = 0x6

.field public static final OEM_BEIDOU:Z

.field public static final SLEEP_TIME_PROP:Ljava/lang/String; = "persist.accoff.countdown"

.field private static final TAG:Ljava/lang/String; = "CarSvc_PowerConnectionReceiver"

.field private static final WHITE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mKillAndSleep:Z

.field static sInstance:Lcom/car/systemfunc/PowerConnectionReceiver;


# instance fields
.field mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mCallStatus:I

.field private mContext:Landroid/content/Context;

.field mCybState:I

.field mDVRWakelock:Lcom/car/common/util/MyWakeLock;

.field mEverFirewall:Z

.field mFmRecover:Z

.field private mHandler:Landroid/os/Handler;

.field mLastRebootTime:J

.field mLastTimeOfAccOff:J

.field mLastTimeOfAccOn:J

.field mLastUserInputTime:J

.field private mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

.field mLowVoltage:Z

.field mLowVoltageDialog:Landroid/app/Dialog;

.field private mMaximumBacklight:I

.field mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

.field private mMinimumBacklight:I

.field mMobileDataConnected:Z

.field mModemWakeupFirstTime:J

.field mMyWakeLock:Lcom/car/common/util/MyWakeLock;

.field mNeedRecover:Z

.field mR3LedStatus:Z

.field private mRebind:Ljava/lang/Runnable;

.field private mRebootDialog:Lcom/car/systemfunc/TimerDialog;

.field mRecoverPlayState:Z

.field mScreenStatusRecover:I

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mSleepDialog:Lcom/car/systemfunc/TimerDialog;

.field private mSleepIsGoing:Z

.field mWakeupByModem:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRecover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    const-string v0, "ro.settings.remove"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "battery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/car/systemfunc/PowerConnectionReceiver;->BATTERY_EXISTS:Z

    .line 101
    const-string v0, "ro.oem.customer"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S_BeiDou"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/systemfunc/PowerConnectionReceiver;->OEM_BEIDOU:Z

    .line 102
    const-string v0, "modem_"

    invoke-static {v0}, Lcom/car/utils/Util;->getHardwareSwitchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "modem_"

    invoke-static {v0}, Lcom/car/utils/Util;->getHardwareSwitchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/car/systemfunc/PowerConnectionReceiver;->MODEM_LED_KEY:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/car/systemfunc/PowerConnectionReceiver$1;

    invoke-direct {v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;-><init>()V

    sput-object v0, Lcom/car/systemfunc/PowerConnectionReceiver;->WHITE_LIST:Ljava/util/ArrayList;

    .line 164
    sput-boolean v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    .line 166
    const-string v0, "persist.accoff.countdown"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    return-void

    :cond_0
    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    const-string v0, "ledModem"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 442
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    .line 108
    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOn:J

    .line 109
    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    .line 110
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    .line 113
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    .line 114
    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    .line 116
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    .line 118
    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    .line 119
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mEverFirewall:Z

    .line 120
    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    .line 121
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    .line 122
    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    .line 125
    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastRebootTime:J

    .line 179
    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    .line 180
    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    .line 181
    const/16 v2, 0x10

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCallStatus:I

    .line 182
    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 183
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    .line 184
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mFmRecover:Z

    .line 185
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiRecover:Z

    .line 186
    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 187
    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 188
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    .line 201
    new-instance v2, Lcom/car/systemfunc/PowerConnectionReceiver$2;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$2;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebind:Ljava/lang/Runnable;

    .line 347
    new-instance v2, Lcom/car/systemfunc/PowerConnectionReceiver$3;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$3;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    .line 421
    iput v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCybState:I

    .line 422
    new-instance v2, Lcom/car/systemfunc/PowerConnectionReceiver$4;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$4;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    .line 443
    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    .line 444
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 445
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMinimumBacklight:I

    .line 446
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMaximumBacklight:I

    .line 447
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->queryBatteryStatus(Landroid/content/Context;)V

    .line 448
    const-string v2, "com.android.music"

    invoke-static {p1, v2}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->bindMusicService()V

    .line 450
    :cond_0
    new-instance v2, Lcom/car/common/util/MyWakeLock;

    const-wide/32 v4, 0xea60

    invoke-direct {v2, p1, v4, v5}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;J)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    .line 451
    new-instance v2, Lcom/car/common/util/MyWakeLock;

    const-wide/32 v4, 0x5265c00

    const-string v3, "DvrSlow"

    invoke-direct {v2, p1, v4, v5, v3}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    .line 452
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v2, p0}, Lcom/car/common/util/MyWakeLock;->setTimeoutListener(Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;)V

    .line 453
    sput-object p0, Lcom/car/systemfunc/PowerConnectionReceiver;->sInstance:Lcom/car/systemfunc/PowerConnectionReceiver;

    .line 454
    const/16 v2, 0x3e9

    const-string v3, "com.car.alarm2reboot"

    invoke-virtual {p0, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->cancelAlarm(ILjava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v3, "com.hongfans.rearview"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hongfan_key"

    const-string v4, "B1PFDX1611000000"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 457
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hongfan_appsecret"

    const-string v4, "hf82bf30ccd10b29ad32b89922485fc318"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 459
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v3, "hongfans"

    invoke-static {v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->createMediaAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v2

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    .line 460
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    invoke-virtual {v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->setOnPlayChangedListener(Lcom/hongfans/carmedia/OnPlayChangedListener;)V

    .line 462
    :cond_1
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v3, "acc"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "offtime"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    .line 463
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 466
    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->isMobileDataConnected()Z

    move-result v2

    iput-boolean v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    .line 467
    const-string v2, "CarSvc_PowerConnectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerConnectionReceiver: modemLEDKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/car/systemfunc/PowerConnectionReceiver;->MODEM_LED_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v3, "/sys/power/led_set_control"

    iget-boolean v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/car/systemfunc/PowerConnectionReceiver;->MODEM_LED_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v3, v2}, Lcom/car/utils/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/car/common/ProviderUtils;->setGsensorEnbaleForKernel(ZLandroid/content/Context;)V

    .line 471
    const-string v2, "ro.hw.version"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "hwVer":Ljava/lang/String;
    const-string v2, "R3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "r3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 473
    :cond_2
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    .line 479
    :cond_3
    return-void

    .line 468
    .end local v0    # "hwVer":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/car/systemfunc/PowerConnectionReceiver;->MODEM_LED_KEY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "off"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->bindMusicService()V

    return-void
.end method

.method static synthetic access$100(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doKillProcessAndSleep(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissSleepDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doReboot(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissRebootDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 86
    sput-boolean p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    return p0
.end method

.method static synthetic access$500(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    return-object v0
.end method

.method static synthetic access$600(Landroid/os/PowerManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/os/PowerManager;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/systemfunc/PowerConnectionReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)J
    .locals 2
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/PowerConnectionReceiver;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

#by boba 11.08.2020
#restore wifi
.method static synthetic access$boba(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/ContentResolver;
.locals 1
iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
return-object v0
.end method

.method private bindMusicService()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    .line 314
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.MediaPlaybackService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.music"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 319
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const-string v2, "CarSvc_PowerConnectionReceiver"

    const-string v3, "bind IMediaPlaybackService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebind:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private dismissRebootDialog()V
    .locals 3

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1750
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->dismiss()V

    .line 1753
    :cond_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    .line 1754
    return-void
.end method

.method private dismissSleepDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    .line 1739
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1740
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1741
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->dismiss()V

    .line 1744
    :cond_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    .line 1745
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1746
    return-void
.end method

.method private doKillProcessAndSleep(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1463
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZLjava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    .line 1467
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1468
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1470
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    .end local v0    # "homeIntent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1475
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    .line 1476
    const-string v1, "sys.car.sleep"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->forceStopWakelockPackages(Landroid/content/Context;)V

    .line 1480
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/car/systemfunc/PowerConnectionReceiver$10;

    invoke-direct {v2, p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver$10;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1615
    return-void

    .line 1471
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doReboot(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1618
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.gotosleep"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1620
    .local v1, "in":Landroid/content/Intent;
    :try_start_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :goto_0
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1628
    .local v2, "pm":Landroid/os/PowerManager;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/car/systemfunc/PowerConnectionReceiver$11;

    invoke-direct {v4, p0, v2}, Lcom/car/systemfunc/PowerConnectionReceiver$11;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/os/PowerManager;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1640
    return-void

    .line 1621
    .end local v2    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CarSvc_PowerConnectionReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send ACTION_RECORDING_SLEEP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/car/systemfunc/PowerConnectionReceiver;
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/car/systemfunc/PowerConnectionReceiver;->sInstance:Lcom/car/systemfunc/PowerConnectionReceiver;

    return-object v0
.end method

.method private getLastUserActivityTime(Landroid/content/Context;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 216
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastUserActivityTime()J

    move-result-wide v2

    return-wide v2
.end method

.method private getQqMusicState()I
    .locals 3

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 580
    .local v1, "qqMusicState":I
    :try_start_0
    const-string v2, "sys.app.qq_music_state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 585
    :goto_0
    return v1

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;
    .locals 6
    .param p0, "pm"    # Landroid/os/PowerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PowerManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1645
    :try_start_0
    const-string v4, "android.os.PowerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1647
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getWakeLockPackageName"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1648
    .local v2, "meth":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1649
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1650
    .local v3, "retobj":Ljava/lang/Object;
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    .end local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    .end local v3    # "retobj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 1652
    :catch_0
    move-exception v1

    .line 1653
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CarSvc_PowerConnectionReceiver"

    const-string v5, "failed to call getWakeLockPackageName()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private initRebootDialog(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1721
    new-instance v0, Lcom/car/systemfunc/TimerDialog;

    const v1, 0x7f09001f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    new-instance v4, Lcom/car/systemfunc/PowerConnectionReceiver$15;

    invoke-direct {v4, p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver$15;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V

    new-instance v5, Lcom/car/systemfunc/PowerConnectionReceiver$16;

    invoke-direct {v5, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$16;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/car/systemfunc/TimerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    .line 1734
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1735
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1736
    return-void
.end method

.method private initSleepDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1661
    new-instance v4, Lcom/car/systemfunc/PowerConnectionReceiver$12;

    invoke-direct {v4, p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver$12;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V

    .line 1696
    .local v4, "okClickListener":Landroid/view/View$OnClickListener;
    new-instance v5, Lcom/car/systemfunc/PowerConnectionReceiver$13;

    invoke-direct {v5, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$13;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    .line 1705
    .local v5, "cancelClickListener":Landroid/view/View$OnClickListener;
    new-instance v6, Lcom/car/systemfunc/PowerConnectionReceiver$14;

    invoke-direct {v6, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$14;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    .line 1714
    .local v6, "shutdownClickListener":Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/car/systemfunc/TimerDialog;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7f090034

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    sget v3, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/car/systemfunc/TimerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    .line 1716
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1717
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1718
    return-void

    .line 1714
    :cond_0
    const v1, 0x7f09001a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isDarkTop(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 210
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 211
    .local v1, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.car.systemfunc.NaviHudActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private sendWakeupIntentIfNeed(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1757
    iget-boolean v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    if-eqz v2, :cond_0

    .line 1758
    const/16 v2, 0x3e9

    const-string v3, "com.car.alarm2reboot"

    invoke-virtual {p0, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->cancelAlarm(ILjava/lang/String;)V

    .line 1759
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    .line 1760
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.syswakeup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1761
    .local v1, "in":Landroid/content/Intent;
    const-string v2, "reason"

    const-string v3, "user"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1762
    const-string v2, "CarSvc_PowerConnectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendWakeupIntent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    .end local v1    # "in":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1765
    .restart local v1    # "in":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1766
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CarSvc_PowerConnectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send ACTION_WAKEUP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method cancelAlarm(ILjava/lang/String;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1832
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1833
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v1, p1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1835
    return-void
.end method

.method checkMusicState()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    .line 526
    new-array v3, v14, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.ximalaya.ting.android.car"

    aput-object v11, v3, v10

    const-string v10, "com.edog.car"

    aput-object v10, v3, v13

    const/4 v10, 0x2

    const-string v11, "com.itings.myradio"

    aput-object v11, v3, v10

    .line 527
    .local v3, "forceStopList":[Ljava/lang/String;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v7, v1, v4

    .line 528
    .local v7, "pn":Ljava/lang/String;
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10, v7}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/car/systemfunc/PowerConnectionReceiver;->WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 529
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 531
    .local v0, "am":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 532
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :catch_0
    move-exception v2

    .line 533
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "CarSvc_PowerConnectionReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "forceStopPackage failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 539
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "pn":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/car/voice/cmd/Music;->isKuwoInstalled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 540
    invoke-static {}, Lcom/car/voice/cmd/Music;->isKuwoPlaying()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 541
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    .line 543
    :cond_2
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/car/voice/cmd/Music;->pauseKuwoMusic(Landroid/content/Context;)V

    .line 564
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v10, :cond_4

    .line 565
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 566
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->pause()V

    .line 567
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    .line 575
    :cond_4
    :goto_3
    return-void

    .line 544
    :cond_5
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/car/voice/cmd/Music;->isQQMusicInstalled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 545
    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->getQqMusicState()I

    move-result v8

    .line 546
    .local v8, "qqMusicState":I
    if-ne v8, v14, :cond_6

    .line 547
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    .line 550
    :cond_6
    const-string v10, "qqmusiccar://?action=20&pull_from=10026465&m0=CONTROL&m1=0"

    const-string v11, "CONTROL"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 551
    .local v9, "uri":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 553
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 570
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "qqMusicState":I
    .end local v9    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 571
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 554
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v11, "com.hongfans.rearview"

    invoke-static {v10, v11}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 555
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    if-eqz v10, :cond_8

    .line 556
    const-string v10, "CarSvc_PowerConnectionReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.hongfans.rearview: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCybState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_8
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCybState:I

    if-ne v10, v13, :cond_3

    .line 559
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    .line 560
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v11, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method doNetRule(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 759
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 760
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 761
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v13, "com.car.cloud"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 762
    const-string v13, "com.car.cloud"

    const/4 v14, 0x5

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 763
    const-string v13, "CarSvc_PowerConnectionReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cloud uid is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    const-string v13, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 768
    .local v3, "connectivity":Landroid/net/ConnectivityManager;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v12, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v13, "persist.sys.app.keepalive"

    const-string v14, ""

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 770
    .local v5, "klPackages":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 771
    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, "packages":[Ljava/lang/String;
    move-object v2, v8

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v2, v4

    .line 773
    .local v7, "p":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 774
    const/4 v13, 0x5

    invoke-virtual {v9, v7, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 775
    .local v10, "temp":Landroid/content/pm/ApplicationInfo;
    iget v13, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .end local v10    # "temp":Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 779
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "p":Ljava/lang/String;
    .end local v8    # "packages":[Ljava/lang/String;
    :cond_2
    const-string v13, "com.car.jt808service"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 780
    const-string v13, "com.car.jt808service"

    const/4 v14, 0x5

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 782
    .restart local v10    # "temp":Landroid/content/pm/ApplicationInfo;
    iget v13, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .end local v10    # "temp":Landroid/content/pm/ApplicationInfo;
    :cond_3
    if-eqz v3, :cond_5

    .line 786
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    if-eqz v13, :cond_7

    .line 787
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    .line 788
    if-eqz v1, :cond_4

    .line 789
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    .line 790
    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 791
    .local v11, "uid":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    goto :goto_1

    .line 804
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "klPackages":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "uid":Ljava/lang/Integer;
    .end local v12    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v13

    .line 806
    :cond_5
    :goto_2
    return-void

    .line 793
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "klPackages":Ljava/lang/String;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/net/ConnectivityManager;->setOthersRule(Z)V

    goto :goto_2

    .line 795
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/net/ConnectivityManager;->setOthersRule(Z)V

    .line 796
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    .line 797
    if-eqz v1, :cond_8

    .line 798
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    .line 799
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 800
    .restart local v11    # "uid":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method forceStopWakelockPackages(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 809
    iget-boolean v7, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    if-nez v7, :cond_1

    .line 835
    :cond_0
    return-void

    .line 811
    :cond_1
    const-string v7, "activity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 812
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 813
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/car/systemfunc/PowerConnectionReceiver;->getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;

    move-result-object v4

    .line 814
    .local v4, "packagenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "CarSvc_PowerConnectionReceiver"

    const-string v8, "These packages still hold a wakelock:"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 816
    .local v3, "name":Ljava/lang/String;
    const-string v7, "CarSvc_PowerConnectionReceiver"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const-string v7, "CarSvc_PowerConnectionReceiver"

    const-string v8, "Force to stop music ..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v7, "com.android.music"

    invoke-interface {v4, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->checkMusicState()V

    .line 823
    const-string v7, "sys.wakelock.whitelist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, "tempList":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 826
    .restart local v3    # "name":Ljava/lang/String;
    sget-object v7, Lcom/car/systemfunc/PowerConnectionReceiver;->WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 828
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 829
    const-string v7, "CarSvc_PowerConnectionReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceStopPackage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 830
    :catch_0
    move-exception v1

    .line 831
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CarSvc_PowerConnectionReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceStopPackage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getBrightness()I
    .locals 5

    .prologue
    .line 195
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 198
    .local v0, "value":I
    return v0
.end method

.method public isAccOn(Landroid/content/Context;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 482
    const-string v7, "ro.acc.can"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 483
    const-string v5, "sys.car.acc"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 522
    :cond_0
    :goto_0
    return v2

    .line 485
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 487
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_7

    .line 488
    const-string v7, "status"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 489
    .local v4, "status":I
    if-eq v4, v11, :cond_2

    const/4 v7, 0x5

    if-ne v4, v7, :cond_4

    :cond_2
    move v2, v6

    .line 492
    .local v2, "isCharging":Z
    :goto_1
    if-nez v2, :cond_5

    iget-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_5

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    .line 494
    iget-object v7, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v8, "acc"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "offtime"

    iget-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 495
    const-string v5, "ro.accoff.blmin"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    .line 496
    const-string v5, "persist.backlight.save"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 497
    .local v3, "oriBl":I
    if-gez v3, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->getBrightness()I

    move-result v3

    .line 499
    const-string v5, "persist.backlight.save"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_3
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/car/common/SystemCtrl;->backlightMin(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    .end local v2    # "isCharging":Z
    .end local v3    # "oriBl":I
    :cond_4
    move v2, v5

    .line 489
    goto :goto_1

    .line 503
    .restart local v2    # "isCharging":Z
    :cond_5
    if-eqz v2, :cond_0

    .line 504
    iget-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    cmp-long v7, v8, v12

    if-eqz v7, :cond_0

    .line 505
    iput-wide v12, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    .line 506
    iget-object v7, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v8, "acc"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "offtime"

    iget-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    const-string v5, "ro.accoff.blmin"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    .line 508
    const-string v5, "persist.backlight.save"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 509
    .restart local v3    # "oriBl":I
    if-lez v3, :cond_6

    .line 510
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    .line 511
    const-string v5, "persist.backlight.save"

    const-string v7, "-1"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_6
    const-string v5, "ro.accoff.blmin"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v11, :cond_0

    .line 514
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMaximumBacklight:I

    invoke-static {v5, v6}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    goto/16 :goto_0

    .end local v2    # "isCharging":Z
    .end local v3    # "oriBl":I
    .end local v4    # "status":I
    :cond_7
    move v2, v5

    .line 522
    goto/16 :goto_0
.end method

.method isMobileDataConnected()Z
    .locals 4

    .prologue
    .line 686
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 688
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 690
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 692
    const/4 v2, 0x1

    .line 695
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method netRule(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sleep"    # Z

    .prologue
    .line 700
    :try_start_0
    const-string v5, "ro.suspend.opt"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mEverFirewall:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    if-eqz v5, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    if-eqz p2, :cond_2

    .line 705
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    .line 706
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    .line 709
    :cond_2
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doNetRule(Landroid/content/Context;)V

    .line 711
    const-string v5, "ro.suspend.keepdata"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 712
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    goto :goto_0

    .line 753
    :catch_0
    move-exception v5

    goto :goto_0

    .line 716
    :cond_3
    if-eqz p2, :cond_0

    .line 717
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 718
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->isMobileDataConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 719
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_4

    .line 720
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 722
    :cond_4
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_5

    .line 723
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 727
    :cond_5
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 728
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/16 v0, 0x14

    .line 729
    .local v0, "count":I
    :goto_1
    if-lez v0, :cond_6

    .line 730
    const-string v5, "location_mode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 732
    .local v1, "currentMode":I
    if-nez v1, :cond_7

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 740
    .end local v1    # "currentMode":I
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "state"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 742
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 744
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 745
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 736
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "currentMode":I
    :cond_7
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 737
    add-int/lit8 v0, v0, -0x1

    .line 738
    goto :goto_1

    .line 748
    .end local v0    # "count":I
    .end local v1    # "currentMode":I
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_8
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 56
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    if-nez v49, :cond_0

    .line 840
    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->initSleepDialog(Landroid/content/Context;)V

    .line 842
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 843
    .local v4, "action":Ljava/lang/String;
    const-string v49, "com.car.alarm2reboot"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 845
    .local v36, "rebootTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastRebootTime:J

    move-wide/from16 v50, v0

    sub-long v50, v36, v50

    const-wide v52, 0x9a7ec800L

    cmp-long v49, v50, v52

    if-lez v49, :cond_2

    .line 846
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "Time jumping?"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    .end local v36    # "rebootTime":J
    :cond_1
    :goto_0
    return-void

    .line 850
    .restart local v36    # "rebootTime":J
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1

    .line 851
    const-string v49, "CarSvc_PowerConnectionReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Alarm reached to reboot "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    move-wide/from16 v52, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v49, "persist.car.alarm2reboot"

    const-string v50, "1"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doReboot(Landroid/content/Context;)V

    goto :goto_0

    .line 855
    .end local v36    # "rebootTime":J
    :cond_3
    const-string v49, "com.car.restartAP"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_6

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v49, v0

    if-nez v49, :cond_4

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "wifi"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 860
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v49

    const/16 v50, 0xd

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v49

    const/16 v50, 0xc

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_1

    .line 862
    :cond_5
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "onReceive: com.car.restartAP"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v49 .. v50}, Lcom/car/common/SystemCtrl;->softApEnable(Landroid/content/Context;Z)Ljava/lang/String;

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x6

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x6

    const-wide/16 v52, 0x3e8

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 869
    :cond_6
    const-string v49, "com.car.fakebtn.longpressed"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_9

    .line 870
    const-string v49, "repeatCount"

    const/16 v50, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    .line 871
    .local v39, "repeatCount":I
    sget-boolean v49, Lcom/car/systemfunc/PowerConnectionReceiver;->OEM_BEIDOU:Z

    if-eqz v49, :cond_7

    .line 872
    const/16 v49, 0x19

    move/from16 v0, v39

    move/from16 v1, v49

    if-ne v0, v1, :cond_1

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    new-instance v50, Landroid/content/Intent;

    const-string v51, "com.car.sos"

    invoke-direct/range {v50 .. v51}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 876
    :cond_7
    const/16 v49, 0xa

    move/from16 v0, v39

    move/from16 v1, v49

    if-ne v0, v1, :cond_8

    .line 877
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    const v51, 0x7f09001f

    invoke-virtual/range {v50 .. v51}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v50

    const/16 v51, 0x3

    invoke-virtual/range {v49 .. v51}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 879
    :cond_8
    const/16 v49, 0x28

    move/from16 v0, v39

    move/from16 v1, v49

    if-ne v0, v1, :cond_1

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doReboot(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 883
    .end local v39    # "repeatCount":I
    :cond_9
    const-string v49, "com.car.fakebtn.second"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_b

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x5

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v49

    if-nez v49, :cond_a

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x5

    const-wide/16 v52, 0x12c

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 887
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x5

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    .line 889
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "com.car.fakebtn.second has double event"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v49, Landroid/content/Intent;

    const-string v50, "com.car.fakebtn.dclick"

    invoke-direct/range {v49 .. v50}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 892
    :cond_b
    const-string v49, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_e

    .line 893
    const-string v49, "networkType"

    const/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v45

    .line 894
    .local v45, "type":I
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->isMobileDataConnected()Z

    move-result v10

    .line 895
    .local v10, "connected":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    move/from16 v49, v0

    move/from16 v0, v49

    if-eq v10, v0, :cond_1

    .line 899
    if-eqz v10, :cond_d

    .line 900
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "Mobile data conntected"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v49, "/sys/power/led_set_control"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v51, Lcom/car/systemfunc/PowerConnectionReceiver;->MODEM_LED_KEY:Ljava/lang/String;

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "on"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Lcom/car/utils/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    move/from16 v49, v0

    if-nez v49, :cond_c

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->isHeld()Z

    move-result v49

    if-eqz v49, :cond_c

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const-wide/16 v50, 0x7530

    invoke-virtual/range {v49 .. v51}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    .line 907
    :cond_c
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    .line 908
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "com.car.cloud"

    invoke-static/range {v49 .. v50}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_1

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    new-instance v50, Lcom/car/systemfunc/PowerConnectionReceiver$5;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver$5;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    const-wide/16 v52, 0x7d0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 922
    :cond_d
    const-string v49, "/sys/power/led_set_control"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v51, Lcom/car/systemfunc/PowerConnectionReceiver;->MODEM_LED_KEY:Ljava/lang/String;

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "off"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Lcom/car/utils/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    goto/16 :goto_0

    .line 925
    .end local v10    # "connected":Z
    .end local v45    # "type":I
    :cond_e
    const-string v49, "com.car.cloud.suspend"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_f

    .line 927
    const-string v49, "suspend"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    .line 928
    .local v43, "suspend":Z
    if-eqz v43, :cond_1

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->isHeld()Z

    move-result v49

    if-eqz v49, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->getTimeOut()J

    move-result-wide v50

    const-wide/16 v52, 0x7530

    cmp-long v49, v50, v52

    if-nez v49, :cond_1

    .line 930
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "Car can suspend immediately"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    .line 934
    invoke-virtual/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->forceStopWakelockPackages(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 937
    .end local v43    # "suspend":Z
    :cond_f
    const-string v49, "com.car.voiceassitant.start"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1b

    .line 938
    const-string v49, "ro.hw.version"

    const-string v50, ""

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 939
    .local v19, "hwVer":Ljava/lang/String;
    const-string v49, "R3"

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_10

    const-string v49, "r3"

    move-object/from16 v0, v19

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_13

    .line 940
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    move/from16 v49, v0

    if-eqz v49, :cond_11

    .line 941
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    .line 946
    :goto_1
    new-instance v20, Landroid/content/Intent;

    const-string v49, "com.car.mic_pressed"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v20, "i":Landroid/content/Intent;
    const-string v50, "led"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    move/from16 v49, v0

    if-eqz v49, :cond_12

    const-string v49, "on"

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 943
    .end local v20    # "i":Landroid/content/Intent;
    :cond_11
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    goto :goto_1

    .line 947
    .restart local v20    # "i":Landroid/content/Intent;
    :cond_12
    const-string v49, "off"

    goto :goto_2

    .line 953
    .end local v20    # "i":Landroid/content/Intent;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "power"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/PowerManager;

    .line 954
    .local v34, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v49

    if-nez v49, :cond_14

    .line 955
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v50

    move-object/from16 v0, v34

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 958
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/car/common/CarUtil;->isInCommunication(Landroid/content/Context;)Z

    move-result v49

    if-nez v49, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCallStatus:I

    move/from16 v49, v0

    const/16 v50, 0x10

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_16

    .line 959
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f09002a

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v50

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 963
    :cond_16
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 964
    .restart local v20    # "i":Landroid/content/Intent;
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v15

    .line 965
    .local v15, "engine":I
    const/16 v49, 0x1

    move/from16 v0, v49

    if-ne v15, v0, :cond_17

    .line 966
    const-string v49, "com.car.voice.VoiceRecognizerService"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    const-string v49, "com.car.carservice"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 970
    :catch_0
    move-exception v14

    .line 971
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 973
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_17
    const/16 v49, 0x2

    move/from16 v0, v49

    if-eq v15, v0, :cond_1

    .line 974
    const/16 v49, 0x3

    move/from16 v0, v49

    if-ne v15, v0, :cond_18

    .line 975
    const-string v49, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    new-instance v49, Landroid/content/ComponentName;

    const-string v50, "com.jwd.jwdvoicetool"

    const-string v51, "com.jwd.jwdvoicetool.JwdVoiceActivity"

    invoke-direct/range {v49 .. v51}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 977
    const/high16 v49, 0x30000000

    move-object/from16 v0, v20

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 979
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 980
    :catch_1
    move-exception v14

    .line 981
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v49, "CarSvc_PowerConnectionReceiver"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 983
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_18
    const/16 v49, 0x4

    move/from16 v0, v49

    if-ne v15, v0, :cond_1a

    .line 984
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    if-eqz v49, :cond_1

    .line 985
    const-string v49, "CarSvc_PowerConnectionReceiver"

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_19

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    const-string v50, "awake"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_19

    .line 987
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->stopInteractionAndRemoveUI()V

    goto/16 :goto_0

    .line 989
    :cond_19
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->startInteraction()V

    goto/16 :goto_0

    .line 991
    :cond_1a
    const/16 v49, 0x8

    move/from16 v0, v49

    if-ne v15, v0, :cond_1

    .line 992
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->startASR()V

    goto/16 :goto_0

    .line 994
    .end local v15    # "engine":I
    .end local v19    # "hwVer":Ljava/lang/String;
    .end local v20    # "i":Landroid/content/Intent;
    .end local v34    # "pm":Landroid/os/PowerManager;
    :cond_1b
    const-string v49, "com.car.voiceassitant.stop"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1c

    .line 995
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v15

    .line 996
    .restart local v15    # "engine":I
    const/16 v49, 0x4

    move/from16 v0, v49

    if-ne v15, v0, :cond_1

    .line 997
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    if-eqz v49, :cond_1

    .line 998
    const-string v49, "CarSvc_PowerConnectionReceiver"

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_1

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    const-string v50, "awake"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    .line 1000
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->stopInteractionAndRemoveUI()V

    goto/16 :goto_0

    .line 1003
    .end local v15    # "engine":I
    :cond_1c
    const-string v49, "com.car.dvr.reverse.gear.popup"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1e

    .line 1004
    const-string v49, "is.reverse.gear"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v40

    .line 1005
    .local v40, "reverse":Z
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v15

    .line 1006
    .restart local v15    # "engine":I
    if-eqz v40, :cond_1d

    .line 1007
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    if-eqz v49, :cond_1d

    .line 1008
    const-string v49, "CarSvc_PowerConnectionReceiver"

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_1d

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    const-string v50, "awake"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1d

    .line 1010
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->stopInteractionAndRemoveUI()V

    .line 1013
    :cond_1d
    const/16 v49, 0x8

    move/from16 v0, v49

    if-ne v15, v0, :cond_1

    .line 1014
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->notifyBackCarStatus(Z)V

    goto/16 :goto_0

    .line 1016
    .end local v15    # "engine":I
    .end local v40    # "reverse":Z
    :cond_1e
    const-string v49, "com.car.voiceassitant.restart"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_20

    .line 1017
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "ACTION_VOICE_ASSITANT_RESTART."

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const-string v49, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 1019
    .local v7, "am":Landroid/app/ActivityManager;
    new-instance v33, Lcom/car/systemfunc/PowerConnectionReceiver$6;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver$6;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    .line 1028
    .local v33, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_1f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1030
    .local v28, "name":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1031
    :catch_2
    move-exception v14

    .line 1032
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v49, "CarSvc_PowerConnectionReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "forceStopPackage failed: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1035
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v28    # "name":Ljava/lang/String;
    :cond_1f
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 1036
    .end local v7    # "am":Landroid/app/ActivityManager;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v33    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_20
    const-string v49, "com.car.btphone.action"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_21

    .line 1037
    const-string v49, "status"

    const/16 v50, 0x10

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mCallStatus:I

    goto/16 :goto_0

    .line 1038
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v49

    const-string v50, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2a

    .line 1039
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    if-eqz v49, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->isShowing()Z

    move-result v49

    if-eqz v49, :cond_22

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_22
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_24

    .line 1043
    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "acc"

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v49

    const-string v50, "offtime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    move-wide/from16 v52, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1045
    const-string v49, "ro.accoff.blmin"

    const/16 v50, 0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v49

    if-lez v49, :cond_24

    .line 1046
    const-string v49, "persist.backlight.save"

    const/16 v50, -0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 1047
    .local v29, "oriBl":I
    if-lez v29, :cond_23

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    .line 1049
    const-string v49, "persist.backlight.save"

    const-string v50, "-1"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_23
    const-string v49, "ro.accoff.blmin"

    const/16 v50, 0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v49

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_24

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMaximumBacklight:I

    move/from16 v50, v0

    invoke-static/range {v49 .. v50}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    .line 1056
    .end local v29    # "oriBl":I
    :cond_24
    const/16 v49, 0x0

    sput-boolean v49, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    .line 1057
    invoke-direct/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissSleepDialog()V

    .line 1058
    invoke-direct/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissRebootDialog()V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    .line 1060
    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->sendWakeupIntentIfNeed(Landroid/content/Context;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->recoverMusicState()V

    .line 1064
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    move/from16 v49, v0

    if-eqz v49, :cond_29

    .line 1065
    const-string v49, "persist.sys.alarmreboot"

    const/16 v50, 0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-eqz v49, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "screen_recover"

    const/16 v51, 0x1

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    if-nez v49, :cond_28

    .line 1066
    :cond_25
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->screenRecover(Z)V

    .line 1070
    :goto_4
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    .line 1077
    :cond_26
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1078
    .local v30, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOn:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOn:J

    move-wide/from16 v50, v0

    sub-long v50, v30, v50

    const-wide/16 v52, 0x7530

    cmp-long v49, v50, v52

    if-ltz v49, :cond_1

    .line 1079
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOn:J

    .line 1080
    const-string v49, "sys.acc.on"

    const-string v50, "1"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    new-instance v49, Ljava/lang/Thread;

    new-instance v50, Lcom/car/systemfunc/PowerConnectionReceiver$7;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver$7;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    invoke-direct/range {v49 .. v50}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1068
    .end local v30    # "now":J
    :cond_28
    const/16 v49, 0x1

    const/16 v50, 0x0

    const-string v51, ""

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v50

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZZLjava/lang/String;)Z

    goto :goto_4

    .line 1072
    :cond_29
    const-string v49, "persist.sys.alarmreboot"

    const/16 v50, 0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-eqz v49, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "screen_recover"

    const/16 v51, 0x1

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_26

    .line 1073
    const/16 v49, 0x1

    const/16 v50, 0x0

    const-string v51, ""

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v50

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZZLjava/lang/String;)Z

    goto/16 :goto_5

    .line 1107
    :cond_2a
    const-string v49, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2b

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    const-wide/16 v52, 0xbb8

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1110
    :cond_2b
    const-string v49, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2d

    .line 1111
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "android.intent.action.SCREEN_ON"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->sendWakeupIntentIfNeed(Landroid/content/Context;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    if-eqz v49, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v49

    if-nez v49, :cond_1

    .line 1118
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    const-wide/16 v52, 0xbb8

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1120
    :cond_2d
    const-string v49, "com.car.workbeforesleeping"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2e

    .line 1121
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "com.car.workbeforesleeping"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1122
    :cond_2e
    const-string v49, "com.car.launcher.FORCE_SLEEP"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_31

    .line 1124
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "com.car.launcher.FORCE_SLEEP"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    if-eqz v49, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v49

    if-eqz v49, :cond_2f

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/systemfunc/TimerDialog;->dismiss()V

    .line 1130
    :cond_2f
    const-string v49, "force_sleep_tips"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1131
    .local v35, "reason":Ljava/lang/String;
    if-eqz v35, :cond_30

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->isEmpty()Z

    move-result v49

    if-nez v49, :cond_30

    .line 1132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->scheduleKillProcessAndSleep(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1136
    :cond_30
    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doKillProcessAndSleep(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1138
    .end local v35    # "reason":Ljava/lang/String;
    :cond_31
    const-string v49, "com.car.launcher.FORCE_REBOOT"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_34

    .line 1139
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "com.car.launcher.FORCE_REBOOT"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    if-nez v49, :cond_32

    .line 1141
    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->initRebootDialog(Landroid/content/Context;)V

    .line 1144
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissSleepDialog()V

    .line 1146
    const-string v49, "force_sleep_tips"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1147
    .local v44, "tips":Ljava/lang/String;
    if-eqz v44, :cond_33

    .line 1148
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v49

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    .line 1150
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x2

    const-wide/16 v52, 0x1f4

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1151
    .end local v44    # "tips":Ljava/lang/String;
    :cond_34
    const-string v49, "com.car.syswakeup"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_46

    .line 1152
    const-string v49, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1153
    .restart local v35    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    .line 1154
    const-string v49, "CarSvc_PowerConnectionReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "wakeup reason: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", mWakeupByModem="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    move-wide/from16 v52, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", mLastUserInputTime="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    move-wide/from16 v52, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const-string v49, "lowbattery"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_35

    .line 1158
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    .line 1159
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->prepare4LowBattery()V

    .line 1162
    :cond_35
    const-string v49, "user"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_36

    .line 1163
    const/16 v49, -0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    .line 1166
    :cond_36
    const-string v49, "user,gsensor,acc_on,can"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_37

    invoke-static {}, Lcom/car/systemfunc/DataCardManager;->instance()Lcom/car/systemfunc/DataCardManager;

    move-result-object v49

    if-eqz v49, :cond_37

    .line 1167
    invoke-static {}, Lcom/car/systemfunc/DataCardManager;->instance()Lcom/car/systemfunc/DataCardManager;

    move-result-object v49

    const/16 v50, 0x2710

    invoke-virtual/range {v49 .. v50}, Lcom/car/systemfunc/DataCardManager;->checkDataUsageDelayed(I)V

    .line 1171
    :cond_37
    new-instance v49, Ljava/lang/Thread;

    new-instance v50, Lcom/car/systemfunc/PowerConnectionReceiver$8;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver$8;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    invoke-direct/range {v49 .. v50}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Thread;->start()V

    .line 1186
    if-nez v35, :cond_38

    .line 1187
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "reason == null, unknown error"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1191
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->isAccOn(Landroid/content/Context;)Z

    move-result v49

    if-eqz v49, :cond_39

    const-string v49, "modem"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_39

    .line 1192
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->recoverMusicState()V

    .line 1195
    :cond_39
    const-string v49, "user,acc_on,gsensor,recordvideo,carback_off,carback_on,can"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_3d

    .line 1197
    const-string v49, "ro.func.flag"

    const/16 v50, 0x0

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1198
    .local v18, "func":I
    and-int/lit8 v49, v18, 0x8

    if-eqz v49, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    move/from16 v49, v0

    if-nez v49, :cond_3a

    .line 1199
    new-instance v20, Landroid/content/Intent;

    const-string v49, "com.mcu.set"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    .restart local v20    # "i":Landroid/content/Intent;
    const-string v49, "addr"

    const/16 v50, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1201
    const-string v49, "value"

    const/16 v50, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x7

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x7

    const-wide/32 v52, 0x3a980

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1207
    .end local v20    # "i":Landroid/content/Intent;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    .line 1208
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    move/from16 v49, v0

    if-nez v49, :cond_3b

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    new-instance v50, Landroid/content/Intent;

    const-string v51, "com.car.modem_on"

    invoke-direct/range {v50 .. v51}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1211
    :cond_3b
    const/16 v49, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    invoke-static/range {v49 .. v50}, Lcom/car/common/ProviderUtils;->setGsensorEnbaleForKernel(ZLandroid/content/Context;)V

    .line 1213
    const-string v49, "/sys/power/rx433_power"

    const-string v50, "en"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const/16 v49, 0x3e9

    const-string v50, "com.car.alarm2reboot"

    move-object/from16 v0, p0

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->cancelAlarm(ILjava/lang/String;)V

    .line 1215
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    const-wide/16 v52, 0xbb8

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1218
    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    .line 1219
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->netRule(Landroid/content/Context;Z)V

    .line 1221
    new-instance v48, Landroid/content/Intent;

    const-string v49, "com.car.wakeup"

    invoke-direct/range {v48 .. v49}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1222
    .local v48, "wakeIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1224
    new-instance v16, Landroid/content/Intent;

    const-string v49, "com.custom.system.BOOT_COMPLETED"

    move-object/from16 v0, v16

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v16, "flyCarIntent":Landroid/content/Intent;
    const/16 v49, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1226
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1229
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v49

    const/16 v50, 0x4

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_41

    .line 1230
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setACCOn()V

    .line 1239
    :cond_3c
    :goto_6
    const-string v49, "gsensor"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3d

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const-wide/16 v50, 0x7918

    invoke-virtual/range {v49 .. v51}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    .line 1245
    .end local v16    # "flyCarIntent":Landroid/content/Intent;
    .end local v18    # "func":I
    .end local v48    # "wakeIntent":Landroid/content/Intent;
    :cond_3d
    const-string v49, "recordvideo"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_1

    .line 1248
    const-string v49, "acc_off"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_1

    .line 1250
    const-string v49, "acc_on"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_3e

    const-string v49, "carback_on"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_3e

    const-string v49, "can"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_43

    .line 1252
    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1

    .line 1253
    const-string v49, "persist.sys.alarmreboot"

    const/16 v50, 0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-eqz v49, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string v50, "screen_recover"

    const/16 v51, 0x1

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    if-nez v49, :cond_40

    .line 1254
    :cond_3f
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->screenRecover(Z)V

    .line 1256
    :cond_40
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    goto/16 :goto_0

    .line 1231
    .restart local v16    # "flyCarIntent":Landroid/content/Intent;
    .restart local v18    # "func":I
    .restart local v48    # "wakeIntent":Landroid/content/Intent;
    :cond_41
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v49

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_3c

    .line 1232
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v49

    const/16 v50, 0x6

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_42

    .line 1233
    invoke-static {}, Lcom/car/speech/MiniSpeech;->getIntance()Lcom/car/speech/MiniSpeech;

    move-result-object v49

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Lcom/car/speech/MiniSpeech;->enableWakeup(Z)V

    goto/16 :goto_6

    .line 1234
    :cond_42
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v49

    const/16 v50, 0x8

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_3c

    .line 1235
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    move-result-object v49

    const/16 v50, 0x2

    invoke-virtual/range {v49 .. v50}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->notifyPowerEvent(I)V

    .line 1236
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v49

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->enableWakeup(Z)V

    goto/16 :goto_6

    .line 1258
    .end local v16    # "flyCarIntent":Landroid/content/Intent;
    .end local v18    # "func":I
    .end local v48    # "wakeIntent":Landroid/content/Intent;
    :cond_43
    const-string v49, "modem"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    .line 1260
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x1

    add-long v50, v50, v52

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    .line 1261
    invoke-virtual/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->forceStopWakelockPackages(Landroid/content/Context;)V

    .line 1262
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x1

    cmp-long v49, v50, v52

    if-nez v49, :cond_44

    .line 1263
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-nez v49, :cond_44

    .line 1264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    .line 1266
    :cond_44
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_45

    .line 1267
    const-string v49, "persist.modem.freq"

    const-string v50, "10,2"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1268
    .local v47, "value":Ljava/lang/String;
    const-string v49, ","

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1269
    .local v25, "items":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1270
    .restart local v30    # "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    move-wide/from16 v50, v0

    sub-long v50, v30, v50

    const/16 v49, 0x0

    aget-object v49, v25, v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v49

    const v52, 0xea60

    mul-int v49, v49, v52

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v52, v0

    cmp-long v49, v50, v52

    if-ltz v49, :cond_45

    .line 1271
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    move-wide/from16 v52, v0

    sub-long v52, v30, v52

    const-wide/32 v54, 0xea60

    div-long v52, v52, v54

    div-long v50, v50, v52

    move-wide/from16 v0, v50

    long-to-float v0, v0

    move/from16 v17, v0

    .line 1272
    .local v17, "freq":F
    const-string v49, "CarSvc_PowerConnectionReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Try 2 check wakeup freq="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    .line 1274
    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    .line 1275
    const/16 v49, 0x1

    aget-object v49, v25, v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    cmpl-float v49, v17, v49

    if-ltz v49, :cond_45

    .line 1276
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "Too many modem wakeups, modem off would be better"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    new-instance v50, Landroid/content/Intent;

    const-string v51, "com.car.modem_off"

    invoke-direct/range {v50 .. v51}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const-wide/16 v50, 0xbb8

    invoke-virtual/range {v49 .. v51}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    goto/16 :goto_0

    .line 1284
    .end local v17    # "freq":F
    .end local v25    # "items":[Ljava/lang/String;
    .end local v30    # "now":J
    .end local v47    # "value":Ljava/lang/String;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-virtual/range {v49 .. v50}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    goto/16 :goto_0

    .line 1286
    .end local v35    # "reason":Ljava/lang/String;
    :cond_46
    const-string v49, "com.car.gotosleep"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_1

    .line 1288
    const-string v49, "com.car.screen.request"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4a

    .line 1289
    const-string v49, "screen_on"

    const/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    .line 1290
    .local v42, "status":I
    const-string v49, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1291
    .restart local v35    # "reason":Ljava/lang/String;
    const-string v49, "recover"

    const/16 v50, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v38

    .line 1292
    .local v38, "recover":Z
    const-string v49, "CarSvc_PowerConnectionReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "ACTION_REQUEST_SCREEN_STATUS: status="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", recover="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ", mScreenStatusRecover="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    if-gez v42, :cond_48

    .line 1295
    const/16 v49, -0x2

    move/from16 v0, v42

    move/from16 v1, v49

    if-ne v0, v1, :cond_47

    const/16 v49, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->screenRecover(Z)V

    goto/16 :goto_0

    :cond_47
    const/16 v49, 0x0

    goto :goto_7

    .line 1297
    :cond_48
    const/16 v49, 0x1

    move/from16 v0, v42

    move/from16 v1, v49

    if-ne v0, v1, :cond_49

    const/16 v49, 0x1

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v49

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZLjava/lang/String;)Z

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    .line 1298
    if-nez v38, :cond_1

    .line 1299
    const/16 v49, -0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    goto/16 :goto_0

    .line 1297
    :cond_49
    const/16 v49, 0x0

    goto :goto_8

    .line 1301
    .end local v35    # "reason":Ljava/lang/String;
    .end local v38    # "recover":Z
    .end local v42    # "status":I
    :cond_4a
    const-string v49, "com.rmt.action.KILL_PACKAGE"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4b

    .line 1302
    const-string v49, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 1303
    .restart local v7    # "am":Landroid/app/ActivityManager;
    const-string v49, "kill_package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1304
    .local v32, "packageName":Ljava/lang/String;
    if-eqz v32, :cond_1

    .line 1306
    :try_start_3
    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1307
    :catch_3
    move-exception v14

    .line 1308
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v49, "CarSvc_PowerConnectionReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "forceStopPackage:"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1311
    .end local v7    # "am":Landroid/app/ActivityManager;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v32    # "packageName":Ljava/lang/String;
    :cond_4b
    const-string v49, "com.car.setprop"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4c

    .line 1312
    const-string v49, "key"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1313
    .local v26, "key":Ljava/lang/String;
    const-string v49, "val"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1314
    .local v46, "val":Ljava/lang/String;
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_1

    .line 1315
    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1317
    .end local v26    # "key":Ljava/lang/String;
    .end local v46    # "val":Ljava/lang/String;
    :cond_4c
    const-string v49, "com.car.dnsaddress"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4d

    .line 1318
    const-string v49, "domain"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1319
    .local v13, "domain":Ljava/lang/String;
    const-string v49, "ip"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1320
    .local v23, "ip":Ljava/lang/String;
    const-string v49, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 1322
    .local v11, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v11, :cond_1

    .line 1323
    move-object/from16 v0, v23

    invoke-virtual {v11, v13, v0}, Landroid/net/ConnectivityManager;->setDnsAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1325
    .end local v11    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v13    # "domain":Ljava/lang/String;
    .end local v23    # "ip":Ljava/lang/String;
    :cond_4d
    const-string v49, "action_service_bind"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4e

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "com.hongfans.rearview"

    invoke-static/range {v49 .. v50}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    move-object/from16 v49, v0

    if-eqz v49, :cond_1

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/hongfans/carmedia/MediaAPI;->setOnPlayChangedListener(Lcom/hongfans/carmedia/OnPlayChangedListener;)V

    goto/16 :goto_0

    .line 1330
    :cond_4e
    const-string v49, "com.car.firewall"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_52

    .line 1331
    const-string v49, "allow"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_4f

    const/4 v6, 0x1

    .line 1332
    .local v6, "allow":Z
    :goto_9
    const-string v49, "net.firewall"

    const/16 v50, 0x0

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-nez v49, :cond_50

    const/4 v12, 0x1

    .line 1333
    .local v12, "curAllow":Z
    :goto_a
    if-eq v12, v6, :cond_1

    .line 1335
    const-string v49, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 1337
    .restart local v11    # "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v11, v6}, Landroid/net/ConnectivityManager;->setOthersRule(Z)V

    .line 1338
    if-nez v6, :cond_51

    const/16 v49, 0x1

    :goto_b
    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mEverFirewall:Z

    goto/16 :goto_0

    .line 1331
    .end local v6    # "allow":Z
    .end local v11    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v12    # "curAllow":Z
    :cond_4f
    const/4 v6, 0x0

    goto :goto_9

    .line 1332
    .restart local v6    # "allow":Z
    :cond_50
    const/4 v12, 0x0

    goto :goto_a

    .line 1338
    .restart local v11    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v12    # "curAllow":Z
    :cond_51
    const/16 v49, 0x0

    goto :goto_b

    .line 1339
    .end local v6    # "allow":Z
    .end local v11    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v12    # "curAllow":Z
    :cond_52
    const-string v49, "com.car.forward"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_55

    .line 1345
    const-string v49, "allow"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_53

    const/4 v6, 0x1

    .line 1346
    .restart local v6    # "allow":Z
    :goto_c
    const-string v49, "ips"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1347
    .local v24, "ips":Ljava/lang/String;
    const-string v49, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 1349
    .restart local v11    # "connectivity":Landroid/net/ConnectivityManager;
    if-nez v24, :cond_54

    .line 1350
    const/16 v49, -0x1

    move/from16 v0, v49

    invoke-virtual {v11, v0, v6}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    goto/16 :goto_0

    .line 1345
    .end local v6    # "allow":Z
    .end local v11    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v24    # "ips":Ljava/lang/String;
    :cond_53
    const/4 v6, 0x0

    goto :goto_c

    .line 1352
    .restart local v6    # "allow":Z
    .restart local v11    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v24    # "ips":Ljava/lang/String;
    :cond_54
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v6}, Landroid/net/ConnectivityManager;->setIpsForward(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1354
    .end local v6    # "allow":Z
    .end local v11    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v24    # "ips":Ljava/lang/String;
    :cond_55
    const-string v49, "com.car.lowvoltage"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_58

    .line 1355
    const-string v49, "ro.func.flag"

    const/16 v50, 0x0

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1357
    .restart local v18    # "func":I
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    if-nez v49, :cond_56

    .line 1359
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1361
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    const v49, 0x7f090055

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1362
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1363
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v49

    const/16 v50, 0x7d3

    invoke-virtual/range {v49 .. v50}, Landroid/view/Window;->setType(I)V

    .line 1367
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->isShowing()Z

    move-result v49

    if-nez v49, :cond_57

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->show()V

    .line 1369
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->prepare4LowBattery()V

    goto/16 :goto_0

    .line 1371
    .end local v18    # "func":I
    :cond_58
    const-string v49, "com.car.netrule"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_5a

    .line 1372
    const-string v49, "package"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1373
    .restart local v32    # "packageName":Ljava/lang/String;
    const-string v49, "allow"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1375
    .restart local v6    # "allow":Z
    :try_start_4
    const-string v49, "network_management"

    invoke-static/range {v49 .. v49}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 1376
    .local v8, "b":Landroid/os/IBinder;
    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v27

    .line 1377
    .local v27, "nMService":Landroid/os/INetworkManagementService;
    const-string v49, "localhost"

    move-object/from16 v0, v32

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_59

    .line 1378
    const-string v49, "allow"

    const/16 v50, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1379
    const/16 v49, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-interface {v0, v1, v6}, Landroid/os/INetworkManagementService;->setPackageUidRule(IZ)V

    goto/16 :goto_0

    .line 1387
    .end local v8    # "b":Landroid/os/IBinder;
    .end local v27    # "nMService":Landroid/os/INetworkManagementService;
    :catch_4
    move-exception v49

    goto/16 :goto_0

    .line 1381
    .restart local v8    # "b":Landroid/os/IBinder;
    .restart local v27    # "nMService":Landroid/os/INetworkManagementService;
    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    .line 1382
    .local v34, "pm":Landroid/content/pm/PackageManager;
    const/16 v49, 0x5

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1383
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_1

    .line 1384
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v49, v0

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-interface {v0, v1, v6}, Landroid/os/INetworkManagementService;->setPackageUidRule(IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1390
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "allow":Z
    .end local v8    # "b":Landroid/os/IBinder;
    .end local v27    # "nMService":Landroid/os/INetworkManagementService;
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "pm":Landroid/content/pm/PackageManager;
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v49

    const-string v50, "com.car.airplanemode"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    .line 1391
    const-string v49, "state"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 1392
    .local v41, "state":Z
    new-instance v22, Landroid/content/Intent;

    const-string v49, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v22, "intent2":Landroid/content/Intent;
    const-string v49, "state"

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    sget-object v50, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 331
    const-string v0, "CarSvc_PowerConnectionReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.music.MediaPlaybackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 335
    const-string v0, "CarSvc_PowerConnectionReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind IMediaPlaybackService return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.music.MediaPlaybackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 343
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebind:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    :cond_0
    return-void
.end method

.method public onWakelockTimeout(Lcom/car/common/util/MyWakeLock;)V
    .locals 2
    .param p1, "wl"    # Lcom/car/common/util/MyWakeLock;

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    if-ne p1, v0, :cond_0

    .line 1840
    const-string v0, "CarSvc_PowerConnectionReceiver"

    const-string v1, "onWakelockTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver;->doKillProcessAndSleep(Landroid/content/Context;)V

    .line 1843
    :cond_0
    return-void
.end method

.method public prepare4LowBattery()V
    .locals 4

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    .line 1400
    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/systemfunc/PowerConnectionReceiver$9;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$9;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1411
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setGsensorEnbaleForKernel(ZLandroid/content/Context;)V

    .line 1412
    return-void
.end method

.method queryBatteryStatus(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f090016

    const/4 v9, 0x7

    const/4 v8, 0x0

    .line 633
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->isAccOn(Landroid/content/Context;)Z

    move-result v2

    .line 634
    .local v2, "isCharging":Z
    if-nez v2, :cond_7

    .line 635
    sget v6, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 636
    const/4 v4, 0x0

    .line 637
    .local v4, "tips":I
    sget-boolean v6, Lcom/car/systemfunc/PowerConnectionReceiver;->OEM_BEIDOU:Z

    if-eqz v6, :cond_3

    .line 638
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 639
    .local v3, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 653
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v4}, Lcom/car/systemfunc/PowerConnectionReceiver;->scheduleKillProcessAndSleep(Landroid/content/Context;I)V

    .line 655
    .end local v4    # "tips":I
    :cond_1
    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->checkMusicState()V

    .line 671
    :cond_2
    :goto_1
    return-void

    .line 643
    .restart local v4    # "tips":I
    :cond_3
    const/4 v6, 0x2

    const-string v7, "ro.sleep_dialog_shutdown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 644
    sget v6, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    if-lez v6, :cond_4

    const v4, 0x7f090015

    .line 649
    :goto_2
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_0

    .line 650
    const v4, 0x7f090013

    goto :goto_0

    :cond_4
    move v4, v5

    .line 644
    goto :goto_2

    .line 647
    :cond_5
    sget v6, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    if-lez v6, :cond_6

    const v4, 0x7f090014

    :goto_3
    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3

    .line 657
    .end local v4    # "tips":I
    :cond_7
    sput-boolean v8, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    .line 658
    iput-boolean v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    .line 659
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 660
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 661
    :cond_8
    const-string v5, "ro.func.flag"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 662
    .local v0, "func":I
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    .line 663
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.mcu.set"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "addr"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    const-string v5, "value"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 667
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x3a980

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method recoverMusicState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 589
    iget-boolean v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    if-eqz v3, :cond_0

    .line 590
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    .line 592
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/voice/cmd/Music;->isKuwoInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 593
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/voice/cmd/Music;->playKuwoMusic(Landroid/content/Context;)V

    .line 612
    :cond_0
    :goto_0
    const-string v3, "ro.acc.fm"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    iget-boolean v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mFmRecover:Z

    if-eqz v3, :cond_1

    .line 614
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mFmRecover:Z

    .line 615
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/car/common/ProviderUtils;->setFMEnable(Landroid/content/Context;I)V

    .line 620
    :cond_1
    iget-boolean v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiRecover:Z

    if-eqz v3, :cond_3

    .line 621
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiRecover:Z

    .line 622
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_2

    .line 623
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 625
    :cond_2
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 626
    const-string v3, "CarSvc_PowerConnectionReceiver"

    const-string v4, "recover wifi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_3
    return-void

    .line 594
    :cond_4
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/voice/cmd/Music;->isQQMusicInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 595
    const-string v3, "qqmusiccar://?action=20&pull_from=10026465&m0=CONTROL&m1=0"

    const-string v4, "CONTROL"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 598
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 599
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v4, "com.hongfans.rearview"

    invoke-static {v3, v4}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 600
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    if-eqz v3, :cond_0

    .line 601
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    goto :goto_0

    .line 604
    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public requestScreenStatus(ZLjava/lang/String;)Z
    .locals 8
    .param p1, "on"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 236
    iget-object v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 237
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    iget v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-eq v4, v6, :cond_2

    move v1, v2

    .line 239
    .local v1, "needRecover":Z
    :goto_0
    if-eqz p1, :cond_6

    .line 240
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 242
    iget v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-ne v2, v6, :cond_0

    .line 243
    iput v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    .line 244
    :cond_0
    const/4 v1, 0x1

    .line 245
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 246
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    .line 269
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    .line 270
    const-string v2, "CarSvc_PowerConnectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needScreenStatus:mScreenStatusRecover="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastUserInputTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needRecover="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v1

    .end local v1    # "needRecover":Z
    :cond_2
    move v1, v3

    .line 237
    goto :goto_0

    .line 248
    .restart local v1    # "needRecover":Z
    :cond_3
    const-string v4, "persist.sys.hud.show"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    iget v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-ne v4, v6, :cond_4

    .line 250
    iput v7, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    .line 251
    :cond_4
    const/4 v1, 0x1

    .line 252
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 253
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    .line 254
    :cond_5
    const-string v3, "persist.sys.alarmreboot"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.car.hud.dismiss"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 259
    :cond_6
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    .line 261
    const-string v2, "persist.sys.hud.show"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 262
    iput v7, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    .line 263
    :cond_7
    const/4 v1, 0x1

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 265
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 266
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_1
.end method

.method public requestScreenStatus(ZZLjava/lang/String;)Z
    .locals 2
    .param p1, "on"    # Z
    .param p2, "recover"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p0, p1, p3}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZLjava/lang/String;)Z

    move-result v0

    .line 230
    .local v0, "needRecover":Z
    if-nez p2, :cond_0

    .line 231
    const/4 v1, -0x1

    iput v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    .line 232
    :cond_0
    return v0
.end method

.method public scheduleKillProcessAndSleep(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tipsResId"    # I

    .prologue
    .line 1415
    const/4 v1, 0x0

    .line 1416
    .local v1, "str":Ljava/lang/String;
    if-lez p2, :cond_0

    .line 1417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1418
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1419
    sget v2, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/car/common/NumUtil;->analyze(J)Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "numEn":Ljava/lang/String;
    sget v2, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1422
    .end local v0    # "numEn":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->scheduleKillProcessAndSleep(Landroid/content/Context;Ljava/lang/String;)V

    .line 1423
    return-void
.end method

.method public scheduleKillProcessAndSleep(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tips"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v5, 0x1

    .line 1426
    iget-boolean v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    if-eqz v1, :cond_2

    .line 1427
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 1428
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1430
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1432
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    .line 1433
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7d3

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 1436
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1437
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1438
    :cond_1
    sput-boolean v5, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    .line 1439
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1460
    :goto_0
    return-void

    .line 1443
    :cond_2
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    if-nez v1, :cond_3

    .line 1444
    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->initSleepDialog(Landroid/content/Context;)V

    .line 1447
    :cond_3
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v1}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    if-eqz v1, :cond_4

    .line 1448
    const-string v1, "CarSvc_PowerConnectionReceiver"

    const-string v2, "dialog is showing? no need show again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1452
    :cond_4
    if-eqz p2, :cond_6

    .line 1453
    const-string v1, "ro.accoff.words"

    const-string v4, ""

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1454
    const-string v1, "ro.accoff.words"

    const-string v4, ""

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1455
    :cond_5
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    invoke-virtual {v1, p2, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    .line 1458
    :cond_6
    sput-boolean v5, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    .line 1459
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    if-lez v4, :cond_7

    const-wide/16 v2, 0x1f4

#by boba 05.02.2021
#delay shutdown when starting the engine
const-string v4, "persist.accoff.delay"
invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J
move-result-wide v2

    :cond_7
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public screenRecover(Z)V
    .locals 11
    .param p1, "forceBack"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 276
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_recover"

    invoke-static {v3, v4, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 277
    iput v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-eq v3, v8, :cond_0

    .line 283
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 284
    .local v2, "mPowerManager":Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 285
    .local v0, "lastUserInputTime":J
    const-string v3, "CarSvc_PowerConnectionReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenRecover:mScreenStatusRecover="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPowerManager.isInteractive()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastUserInputTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastUserInputTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-wide v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    cmp-long v3, v0, v4

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    .line 290
    iput v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    goto :goto_0

    .line 293
    :cond_2
    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-nez v3, :cond_4

    .line 294
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 310
    :cond_3
    :goto_1
    iput v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    goto :goto_0

    .line 297
    :cond_4
    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-ne v3, v10, :cond_5

    .line 298
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_1

    .line 301
    :cond_5
    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 302
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_6

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 306
    :cond_6
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 307
    const-string v3, "persist.sys.hud.show"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v5, v3, v9}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_1
.end method

.method setAlarm(IJILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "requestCode"    # I
    .param p5, "action"    # Ljava/lang/String;

    .prologue
    .line 1826
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1827
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v1, p4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1829
    return-void
.end method

.method setRebootTime()V
    .locals 20

    .prologue
    .line 1772
    const-string v2, "persist.sys.alarmreboot"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1823
    :goto_0
    return-void

    .line 1774
    :cond_0
    const/16 v2, 0x3e9

    const-string v3, "com.car.alarm2reboot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->cancelAlarm(ILjava/lang/String;)V

    .line 1776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastRebootTime:J

    .line 1778
    const/4 v14, 0x2

    .line 1779
    .local v14, "daysLimit":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1780
    .local v18, "runTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1781
    .local v12, "curTime":J
    new-instance v11, Ljava/util/Date;

    sub-long v2, v12, v18

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1782
    .local v11, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1783
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-virtual {v10, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1785
    const/4 v2, 0x5

    invoke-virtual {v10, v2, v14}, Ljava/util/Calendar;->add(II)V

    .line 1786
    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 1787
    .local v17, "hour":I
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1789
    .local v8, "calTime":J
    cmp-long v2, v8, v12

    if-gtz v2, :cond_2

    .line 1791
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1792
    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1793
    const/16 v2, 0xc

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1794
    const/16 v2, 0xd

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1813
    :goto_1
    const-string v2, "debug.rtc.test"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1814
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1815
    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1819
    :cond_1
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1820
    .local v16, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 1821
    .local v15, "formatTimeString":Ljava/lang/String;
    const-string v2, "CarSvc_PowerConnectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reboot alarm set to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v6, 0x3e9

    const-string v7, "com.car.alarm2reboot"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/car/systemfunc/PowerConnectionReceiver;->setAlarm(IJILjava/lang/String;)V

    goto/16 :goto_0

    .line 1797
    .end local v15    # "formatTimeString":Ljava/lang/String;
    .end local v16    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_2
    const/4 v2, 0x6

    move/from16 v0, v17

    if-lt v0, v2, :cond_3

    .line 1798
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1799
    const/16 v2, 0xb

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1804
    const/16 v2, 0xc

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1805
    const/16 v2, 0xd

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 1807
    :cond_3
    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1808
    const/16 v2, 0xc

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1809
    const/16 v2, 0xd

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1
.end method

.method writeSysValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 675
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 676
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 677
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 678
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 679
    const-string v2, "CarSvc_PowerConnectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v0    # "bytes":[B
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v2

    goto :goto_0
.end method
