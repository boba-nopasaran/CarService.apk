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

    const/4 v1, 0x0

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

    const-string v0, "ro.oem.customer"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S_BeiDou"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/systemfunc/PowerConnectionReceiver;->OEM_BEIDOU:Z

    const-string v0, "modem_"

    invoke-static {v0}, Lcom/car/utils/Util;->getHardwareSwitchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "modem_"

    invoke-static {v0}, Lcom/car/utils/Util;->getHardwareSwitchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/car/systemfunc/PowerConnectionReceiver;->MODEM_LED_KEY:Ljava/lang/String;

    new-instance v0, Lcom/car/systemfunc/PowerConnectionReceiver$1;

    invoke-direct {v0}, Lcom/car/systemfunc/PowerConnectionReceiver$1;-><init>()V

    sput-object v0, Lcom/car/systemfunc/PowerConnectionReceiver;->WHITE_LIST:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    const-string v0, "persist.accoff.countdown"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "ledModem"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v7, 0x4

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOn:J

    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mEverFirewall:Z

    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastRebootTime:J

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    const/16 v2, 0x10

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCallStatus:I

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mFmRecover:Z

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiRecover:Z

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    new-instance v2, Lcom/car/systemfunc/PowerConnectionReceiver$2;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$2;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebind:Ljava/lang/Runnable;

    new-instance v2, Lcom/car/systemfunc/PowerConnectionReceiver$3;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$3;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    iput v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCybState:I

    new-instance v2, Lcom/car/systemfunc/PowerConnectionReceiver$4;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$4;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMinimumBacklight:I

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMaximumBacklight:I

    invoke-virtual {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->queryBatteryStatus(Landroid/content/Context;)V

    const-string v2, "com.android.music"

    invoke-static {p1, v2}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->bindMusicService()V

    :cond_0
    new-instance v2, Lcom/car/common/util/MyWakeLock;

    const-wide/32 v4, 0xea60

    invoke-direct {v2, p1, v4, v5}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;J)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    new-instance v2, Lcom/car/common/util/MyWakeLock;

    const-wide/32 v4, 0x5265c00

    const-string v3, "DvrSlow"

    invoke-direct {v2, p1, v4, v5, v3}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v2, p0}, Lcom/car/common/util/MyWakeLock;->setTimeoutListener(Lcom/car/common/util/MyWakeLock$MyWakelockTimeoutListener;)V

    sput-object p0, Lcom/car/systemfunc/PowerConnectionReceiver;->sInstance:Lcom/car/systemfunc/PowerConnectionReceiver;

    const/16 v2, 0x3e9

    const-string v3, "com.car.alarm2reboot"

    invoke-virtual {p0, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->cancelAlarm(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v3, "com.hongfans.rearview"

    invoke-static {v2, v3}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hongfan_key"

    const-string v4, "B1PFDX1611000000"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hongfan_appsecret"

    const-string v4, "hf82bf30ccd10b29ad32b89922485fc318"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v3, "hongfans"

    invoke-static {v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->createMediaAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/hongfans/carmedia/MediaAPI;

    move-result-object v2

    iput-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    invoke-virtual {v2, v3}, Lcom/hongfans/carmedia/MediaAPI;->setOnPlayChangedListener(Lcom/hongfans/carmedia/OnPlayChangedListener;)V

    :cond_1
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v3, "acc"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "offtime"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->isMobileDataConnected()Z

    move-result v2

    iput-boolean v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

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

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/car/common/ProviderUtils;->setGsensorEnbaleForKernel(ZLandroid/content/Context;)V

    const-string v2, "ro.hw.version"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "R3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "r3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    :cond_3
    return-void

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

    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->bindMusicService()V

    return-void
.end method

.method static synthetic access$100(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doKillProcessAndSleep(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissSleepDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doReboot(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissRebootDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    return p0
.end method

.method static synthetic access$500(Lcom/car/systemfunc/PowerConnectionReceiver;)Lcom/car/systemfunc/TimerDialog;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    return-object v0
.end method

.method static synthetic access$600(Landroid/os/PowerManager;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/systemfunc/PowerConnectionReceiver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method private bindMusicService()V
    .locals 8

    const-wide/16 v6, 0x7d0

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.MediaPlaybackService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.music"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CarSvc_PowerConnectionReceiver"

    const-string v3, "bind IMediaPlaybackService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebind:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private dismissRebootDialog()V
    .locals 3

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    return-void
.end method

.method private dismissSleepDialog()V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private doKillProcessAndSleep(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZLjava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    const-string v1, "sys.car.sleep"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->forceStopWakelockPackages(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/car/systemfunc/PowerConnectionReceiver$10;

    invoke-direct {v2, p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver$10;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doReboot(Landroid/content/Context;)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.gotosleep"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/car/systemfunc/PowerConnectionReceiver$11;

    invoke-direct {v4, p0, v2}, Lcom/car/systemfunc/PowerConnectionReceiver$11;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/os/PowerManager;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

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

    sget-object v0, Lcom/car/systemfunc/PowerConnectionReceiver;->sInstance:Lcom/car/systemfunc/PowerConnectionReceiver;

    return-object v0
.end method

.method private getLastUserActivityTime(Landroid/content/Context;)J
    .locals 4

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastUserActivityTime()J

    move-result-wide v2

    return-wide v2
.end method

.method private getQqMusicState()I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "sys.app.qq_music_state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;
    .locals 6
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

    :try_start_0
    const-string v4, "android.os.PowerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getWakeLockPackageName"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string v4, "CarSvc_PowerConnectionReceiver"

    const-string v5, "failed to call getWakeLockPackageName()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private initRebootDialog(Landroid/content/Context;)V
    .locals 6

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

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private initSleepDialog(Landroid/content/Context;)V
    .locals 7

    new-instance v4, Lcom/car/systemfunc/PowerConnectionReceiver$12;

    invoke-direct {v4, p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver$12;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V

    new-instance v5, Lcom/car/systemfunc/PowerConnectionReceiver$13;

    invoke-direct {v5, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$13;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    new-instance v6, Lcom/car/systemfunc/PowerConnectionReceiver$14;

    invoke-direct {v6, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$14;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

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

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v0}, Lcom/car/systemfunc/TimerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void

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

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

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

    iget-boolean v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x3e9

    const-string v3, "com.car.alarm2reboot"

    invoke-virtual {p0, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->cancelAlarm(ILjava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.syswakeup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "reason"

    const-string v3, "user"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

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

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v1, p1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method checkMusicState()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x1

    new-array v3, v14, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.ximalaya.ting.android.car"

    aput-object v11, v3, v10

    const-string v10, "com.edog.car"

    aput-object v10, v3, v13

    const/4 v10, 0x2

    const-string v11, "com.itings.myradio"

    aput-object v11, v3, v10

    move-object v1, v3

    array-length v6, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v7, v1, v4

    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10, v7}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/car/systemfunc/PowerConnectionReceiver;->WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

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

    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/car/voice/cmd/Music;->isKuwoInstalled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/car/voice/cmd/Music;->isKuwoPlaying()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    :cond_2
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/car/voice/cmd/Music;->pauseKuwoMusic(Landroid/content/Context;)V

    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v10}, Lcom/android/music/IMediaPlaybackService;->pause()V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/car/voice/cmd/Music;->isQQMusicInstalled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-direct {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->getQqMusicState()I

    move-result v8

    if-ne v8, v14, :cond_6

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    :cond_6
    const-string v10, "qqmusiccar://?action=20&pull_from=10026465&m0=CONTROL&m1=0"

    const-string v11, "CONTROL"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v11, "com.hongfans.rearview"

    invoke-static {v10, v11}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    if-eqz v10, :cond_8

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

    :cond_8
    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mCybState:I

    if-ne v10, v13, :cond_3

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    iget-object v10, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v11, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/hongfans/carmedia/MediaAPI;->PlayPause(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2
.end method

.method doNetRule(Landroid/content/Context;)V
    .locals 16

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v1, 0x0

    const-string v13, "com.car.cloud"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "com.car.cloud"

    const/4 v14, 0x5

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

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

    :cond_0
    const-string v13, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "persist.sys.app.keepalive"

    const-string v14, ""

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    array-length v6, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v2, v4

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x5

    invoke-virtual {v9, v7, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v13, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v13, "com.car.jt808service"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "com.car.jt808service"

    const/4 v14, 0x5

    invoke-virtual {v9, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v13, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    if-eqz v13, :cond_7

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    if-eqz v1, :cond_4

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    :cond_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    goto :goto_1

    :catch_0
    move-exception v13

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/net/ConnectivityManager;->setOthersRule(Z)V

    goto :goto_2

    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/net/ConnectivityManager;->setOthersRule(Z)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    if-eqz v1, :cond_8

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

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

    iget-boolean v7, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v7, "activity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    invoke-static {v5}, Lcom/car/systemfunc/PowerConnectionReceiver;->getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;

    move-result-object v4

    const-string v7, "CarSvc_PowerConnectionReceiver"

    const-string v8, "These packages still hold a wakelock:"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "CarSvc_PowerConnectionReceiver"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "CarSvc_PowerConnectionReceiver"

    const-string v8, "Force to stop music ..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "com.android.music"

    invoke-interface {v4, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->checkMusicState()V

    const-string v7, "sys.wakelock.whitelist"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

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

    sget-object v7, Lcom/car/systemfunc/PowerConnectionReceiver;->WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

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

    :catch_0
    move-exception v1

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

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public isAccOn(Landroid/content/Context;)Z
    .locals 14

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "ro.acc.can"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, "sys.car.acc"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v7, "status"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v11, :cond_2

    const/4 v7, 0x5

    if-ne v4, v7, :cond_4

    :cond_2
    move v2, v6

    :goto_1
    if-nez v2, :cond_5

    iget-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    cmp-long v7, v8, v12

    if-nez v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

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

    const-string v5, "ro.accoff.blmin"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "persist.backlight.save"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->getBrightness()I

    move-result v3

    const-string v5, "persist.backlight.save"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/car/common/SystemCtrl;->backlightMin(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_0

    iget-wide v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    cmp-long v7, v8, v12

    if-eqz v7, :cond_0

    iput-wide v12, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

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

    const-string v5, "ro.accoff.blmin"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "persist.backlight.save"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_6

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    const-string v5, "persist.backlight.save"

    const-string v7, "-1"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v5, "ro.accoff.blmin"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v11, :cond_0

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMaximumBacklight:I

    invoke-static {v5, v6}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_7
    move v2, v5

    goto/16 :goto_0
.end method

.method isMobileDataConnected()Z
    .locals 4

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

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

.method netRule(Landroid/content/Context;Z)V
    .locals 8

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doNetRule(Landroid/content/Context;)V

    const-string v5, "ro.suspend.keepdata"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->isMobileDataConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_4
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_5
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v0, 0x14

    :goto_1
    if-lez v0, :cond_6

    const-string v5, "location_mode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

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

    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "state"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_7
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    if-nez v49, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->initSleepDialog(Landroid/content/Context;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v49, "com.car.alarm2reboot"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastRebootTime:J

    move-wide/from16 v50, v0

    sub-long v50, v36, v50

    const-wide v52, 0x9a7ec800L

    cmp-long v49, v50, v52

    if-lez v49, :cond_2

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "Time jumping?"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1

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

    const-string v49, "persist.car.alarm2reboot"

    const-string v50, "1"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doReboot(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v49, "com.car.restartAP"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v49, v0

    if-nez v49, :cond_4

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

    :cond_5
    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "onReceive: com.car.restartAP"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v49 .. v50}, Lcom/car/common/SystemCtrl;->softApEnable(Landroid/content/Context;Z)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x6

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

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

    :cond_6
    const-string v49, "com.car.fakebtn.longpressed"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_9

    const-string v49, "repeatCount"

    const/16 v50, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    sget-boolean v49, Lcom/car/systemfunc/PowerConnectionReceiver;->OEM_BEIDOU:Z

    if-eqz v49, :cond_7

    const/16 v49, 0x19

    move/from16 v0, v39

    move/from16 v1, v49

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    new-instance v50, Landroid/content/Intent;

    const-string v51, "com.car.sos"

    invoke-direct/range {v50 .. v51}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const/16 v49, 0xa

    move/from16 v0, v39

    move/from16 v1, v49

    if-ne v0, v1, :cond_8

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

    :cond_8
    const/16 v49, 0x28

    move/from16 v0, v39

    move/from16 v1, v49

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doReboot(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    const-string v49, "com.car.fakebtn.second"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x5

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v49

    if-nez v49, :cond_a

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

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x5

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "com.car.fakebtn.second has double event"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v49, Landroid/content/Intent;

    const-string v50, "com.car.fakebtn.dclick"

    invoke-direct/range {v49 .. v50}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v49, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_e

    const-string v49, "networkType"

    const/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->isMobileDataConnected()Z

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    move/from16 v49, v0

    move/from16 v0, v49

    if-eq v10, v0, :cond_1

    if-eqz v10, :cond_d

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "Mobile data conntected"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    move/from16 v49, v0

    if-nez v49, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->isHeld()Z

    move-result v49

    if-eqz v49, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const-wide/16 v50, 0x7530

    invoke-virtual/range {v49 .. v51}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    :cond_c
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "com.car.cloud"

    invoke-static/range {v49 .. v50}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_1

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

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mMobileDataConnected:Z

    goto/16 :goto_0

    :cond_e
    const-string v49, "com.car.cloud.suspend"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_f

    const-string v49, "suspend"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    if-eqz v43, :cond_1

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

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "Car can suspend immediately"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    invoke-virtual/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->forceStopWakelockPackages(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_f
    const-string v49, "com.car.voiceassitant.start"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1b

    const-string v49, "ro.hw.version"

    const-string v50, ""

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

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

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    move/from16 v49, v0

    if-eqz v49, :cond_11

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    :goto_1
    new-instance v20, Landroid/content/Intent;

    const-string v49, "com.car.mic_pressed"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mR3LedStatus:Z

    goto :goto_1

    :cond_12
    const-string v49, "off"

    goto :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "power"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/PowerManager;

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v49

    if-nez v49, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v50

    move-object/from16 v0, v34

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

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

    :cond_16
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v15

    const/16 v49, 0x1

    move/from16 v0, v49

    if-ne v15, v0, :cond_17

    const-string v49, "com.car.voice.VoiceRecognizerService"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v49, "com.car.carservice"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

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

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_17
    const/16 v49, 0x2

    move/from16 v0, v49

    if-eq v15, v0, :cond_1

    const/16 v49, 0x3

    move/from16 v0, v49

    if-ne v15, v0, :cond_18

    const-string v49, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v49, Landroid/content/ComponentName;

    const-string v50, "com.jwd.jwdvoicetool"

    const-string v51, "com.jwd.jwdvoicetool.JwdVoiceActivity"

    invoke-direct/range {v49 .. v51}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v49, 0x30000000

    move-object/from16 v0, v20

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

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

    :catch_1
    move-exception v14

    const-string v49, "CarSvc_PowerConnectionReceiver"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    const/16 v49, 0x4

    move/from16 v0, v49

    if-ne v15, v0, :cond_1a

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    if-eqz v49, :cond_1

    const-string v49, "CarSvc_PowerConnectionReceiver"

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_19

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    const-string v50, "awake"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_19

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->stopInteractionAndRemoveUI()V

    goto/16 :goto_0

    :cond_19
    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->startInteraction()V

    goto/16 :goto_0

    :cond_1a
    const/16 v49, 0x8

    move/from16 v0, v49

    if-ne v15, v0, :cond_1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->startASR()V

    goto/16 :goto_0

    :cond_1b
    const-string v49, "com.car.voiceassitant.stop"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1c

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v15

    const/16 v49, 0x4

    move/from16 v0, v49

    if-ne v15, v0, :cond_1

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    if-eqz v49, :cond_1

    const-string v49, "CarSvc_PowerConnectionReceiver"

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_1

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    const-string v50, "awake"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->stopInteractionAndRemoveUI()V

    goto/16 :goto_0

    :cond_1c
    const-string v49, "com.car.dvr.reverse.gear.popup"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1e

    const-string v49, "is.reverse.gear"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v40

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v15

    if-eqz v40, :cond_1d

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    if-eqz v49, :cond_1d

    const-string v49, "CarSvc_PowerConnectionReceiver"

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_1d

    invoke-static {}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->getAIOSState()Ljava/lang/String;

    move-result-object v49

    const-string v50, "awake"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1d

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->stopInteractionAndRemoveUI()V

    :cond_1d
    const/16 v49, 0x8

    move/from16 v0, v49

    if-ne v15, v0, :cond_1

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->notifyBackCarStatus(Z)V

    goto/16 :goto_0

    :cond_1e
    const-string v49, "com.car.voiceassitant.restart"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_20

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "ACTION_VOICE_ASSITANT_RESTART."

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v49, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    new-instance v33, Lcom/car/systemfunc/PowerConnectionReceiver$6;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver$6;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_1f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    :try_start_2
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v14

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

    :cond_1f
    const/16 v49, 0x0

    invoke-static/range {v49 .. v49}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    :cond_20
    const-string v49, "com.car.btphone.action"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_21

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

    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v49

    const-string v50, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2a

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->dismiss()V

    :cond_22
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_24

    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOff:J

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

    const-string v49, "ro.accoff.blmin"

    const/16 v50, 0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v49

    if-lez v49, :cond_24

    const-string v49, "persist.backlight.save"

    const/16 v50, -0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v29

    if-lez v29, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    const-string v49, "persist.backlight.save"

    const-string v50, "-1"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const-string v49, "ro.accoff.blmin"

    const/16 v50, 0x1

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v49

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMaximumBacklight:I

    move/from16 v50, v0

    invoke-static/range {v49 .. v50}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    :cond_24
    const/16 v49, 0x0

    sput-boolean v49, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    invoke-direct/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissSleepDialog()V

    invoke-direct/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissRebootDialog()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->sendWakeupIntentIfNeed(Landroid/content/Context;)V

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

    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->recoverMusicState()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    move/from16 v49, v0

    if-eqz v49, :cond_29

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

    :cond_25
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->screenRecover(Z)V

    :goto_4
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    :cond_26
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

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

    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastTimeOfAccOn:J

    const-string v49, "sys.acc.on"

    const-string v50, "1"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v49, Ljava/lang/Thread;

    new-instance v50, Lcom/car/systemfunc/PowerConnectionReceiver$7;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver$7;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    invoke-direct/range {v49 .. v50}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

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

    const/16 v49, 0x1

    const/16 v50, 0x0

    const-string v51, ""

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v50

    move-object/from16 v3, v51

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZZLjava/lang/String;)Z

    goto/16 :goto_5

    :cond_2a
    const-string v49, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

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

    :cond_2b
    const-string v49, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2d

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "android.intent.action.SCREEN_ON"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->sendWakeupIntentIfNeed(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

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

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

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

    :cond_2d
    const-string v49, "com.car.workbeforesleeping"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2e

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "com.car.workbeforesleeping"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2e
    const-string v49, "com.car.launcher.FORCE_SLEEP"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_31

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "com.car.launcher.FORCE_SLEEP"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/systemfunc/TimerDialog;->dismiss()V

    :cond_2f
    const-string v49, "force_sleep_tips"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_30

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->isEmpty()Z

    move-result v49

    if-nez v49, :cond_30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->scheduleKillProcessAndSleep(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->doKillProcessAndSleep(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_31
    const-string v49, "com.car.launcher.FORCE_REBOOT"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_34

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "com.car.launcher.FORCE_REBOOT"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebootDialog:Lcom/car/systemfunc/TimerDialog;

    move-object/from16 v49, v0

    if-nez v49, :cond_32

    invoke-direct/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->initRebootDialog(Landroid/content/Context;)V

    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->dismissSleepDialog()V

    const-string v49, "force_sleep_tips"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    if-eqz v44, :cond_33

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v49

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v44

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

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

    :cond_34
    const-string v49, "com.car.syswakeup"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_46

    const-string v49, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

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

    const-string v49, "lowbattery"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_35

    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->prepare4LowBattery()V

    :cond_35
    const-string v49, "user"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_36

    const/16 v49, -0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

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

    invoke-static {}, Lcom/car/systemfunc/DataCardManager;->instance()Lcom/car/systemfunc/DataCardManager;

    move-result-object v49

    const/16 v50, 0x2710

    invoke-virtual/range {v49 .. v50}, Lcom/car/systemfunc/DataCardManager;->checkDataUsageDelayed(I)V

    :cond_37
    new-instance v49, Ljava/lang/Thread;

    new-instance v50, Lcom/car/systemfunc/PowerConnectionReceiver$8;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver$8;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    invoke-direct/range {v49 .. v50}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Thread;->start()V

    if-nez v35, :cond_38

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "reason == null, unknown error"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->recoverMusicState()V

    :cond_39
    const-string v49, "user,acc_on,gsensor,recordvideo,carback_off,carback_on,can"

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_3d

    const-string v49, "ro.func.flag"

    const/16 v50, 0x0

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    and-int/lit8 v49, v18, 0x8

    if-eqz v49, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    move/from16 v49, v0

    if-nez v49, :cond_3a

    new-instance v20, Landroid/content/Intent;

    const-string v49, "com.mcu.set"

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v49, "addr"

    const/16 v50, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v49, "value"

    const/16 v50, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x7

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x7

    const-wide/32 v52, 0x3a980

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    move/from16 v49, v0

    if-nez v49, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    new-instance v50, Landroid/content/Intent;

    const-string v51, "com.car.modem_on"

    invoke-direct/range {v50 .. v51}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3b
    const/16 v49, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    invoke-static/range {v49 .. v50}, Lcom/car/common/ProviderUtils;->setGsensorEnbaleForKernel(ZLandroid/content/Context;)V

    const-string v49, "/sys/power/rx433_power"

    const-string v50, "en"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v49, 0x3e9

    const-string v50, "com.car.alarm2reboot"

    move-object/from16 v0, p0

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->cancelAlarm(ILjava/lang/String;)V

    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepIsGoing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    invoke-virtual/range {v49 .. v50}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v49, v0

    const/16 v50, 0x4

    const-wide/16 v52, 0xbb8

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->netRule(Landroid/content/Context;Z)V

    new-instance v48, Landroid/content/Intent;

    const-string v49, "com.car.wakeup"

    invoke-direct/range {v48 .. v49}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v16, Landroid/content/Intent;

    const-string v49, "com.custom.system.BOOT_COMPLETED"

    move-object/from16 v0, v16

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v49, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v49

    const/16 v50, 0x4

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_41

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/aispeech/aios/sdk/manager/AIOSSystemManager;->setACCOn()V

    :cond_3c
    :goto_6
    const-string v49, "gsensor"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const-wide/16 v50, 0x7918

    invoke-virtual/range {v49 .. v51}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    :cond_3d
    const-string v49, "recordvideo"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_1

    const-string v49, "acc_off"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_1

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

    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1

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

    :cond_3f
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->screenRecover(Z)V

    :cond_40
    const/16 v49, 0x0

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mNeedRecover:Z

    goto/16 :goto_0

    :cond_41
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v49

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_3c

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v49

    const/16 v50, 0x6

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_42

    invoke-static {}, Lcom/car/speech/MiniSpeech;->getIntance()Lcom/car/speech/MiniSpeech;

    move-result-object v49

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Lcom/car/speech/MiniSpeech;->enableWakeup(Z)V

    goto/16 :goto_6

    :cond_42
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v49

    const/16 v50, 0x8

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_3c

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;

    move-result-object v49

    const/16 v50, 0x2

    invoke-virtual/range {v49 .. v50}, Lcom/tencent/wecarspeech/sdk/TASLifecycleManager;->notifyPowerEvent(I)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v49

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->enableWakeup(Z)V

    goto/16 :goto_6

    :cond_43
    const-string v49, "modem"

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    invoke-virtual/range {v49 .. v50}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x1

    add-long v50, v50, v52

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    invoke-virtual/range {p0 .. p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->forceStopWakelockPackages(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x1

    cmp-long v49, v50, v52

    if-nez v49, :cond_44

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-nez v49, :cond_44

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    :cond_44
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x0

    cmp-long v49, v50, v52

    if-eqz v49, :cond_45

    const-string v49, "persist.modem.freq"

    const-string v50, "10,2"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string v49, ","

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

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

    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mModemWakeupFirstTime:J

    const-wide/16 v50, 0x0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWakeupByModem:J

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

    const-string v49, "CarSvc_PowerConnectionReceiver"

    const-string v50, "Too many modem wakeups, modem off would be better"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    new-instance v50, Landroid/content/Intent;

    const-string v51, "com.car.modem_off"

    invoke-direct/range {v50 .. v51}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v50}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const-wide/16 v50, 0xbb8

    invoke-virtual/range {v49 .. v51}, Lcom/car/common/util/MyWakeLock;->setTimeOut(J)V

    goto/16 :goto_0

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-virtual/range {v49 .. v50}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    goto/16 :goto_0

    :cond_46
    const-string v49, "com.car.gotosleep"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_1

    const-string v49, "com.car.screen.request"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4a

    const-string v49, "screen_on"

    const/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    const-string v49, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v49, "recover"

    const/16 v50, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v38

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

    if-gez v42, :cond_48

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

    if-nez v38, :cond_1

    const/16 v49, -0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    goto/16 :goto_0

    :cond_49
    const/16 v49, 0x0

    goto :goto_8

    :cond_4a
    const-string v49, "com.rmt.action.KILL_PACKAGE"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4b

    const-string v49, "activity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    const-string v49, "kill_package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1

    :try_start_3
    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v14

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

    :cond_4b
    const-string v49, "com.car.setprop"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4c

    const-string v49, "key"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v49, "val"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v49

    if-lez v49, :cond_1

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4c
    const-string v49, "com.car.dnsaddress"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4d

    const-string v49, "domain"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v49, "ip"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v49, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    if-eqz v11, :cond_1

    move-object/from16 v0, v23

    invoke-virtual {v11, v13, v0}, Landroid/net/ConnectivityManager;->setDnsAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4d
    const-string v49, "action_service_bind"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    const-string v50, "com.hongfans.rearview"

    invoke-static/range {v49 .. v50}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    move-object/from16 v49, v0

    if-eqz v49, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mListener:Lcom/hongfans/carmedia/OnPlayChangedListener;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/hongfans/carmedia/MediaAPI;->setOnPlayChangedListener(Lcom/hongfans/carmedia/OnPlayChangedListener;)V

    goto/16 :goto_0

    :cond_4e
    const-string v49, "com.car.firewall"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_52

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

    :goto_9
    const-string v49, "net.firewall"

    const/16 v50, 0x0

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    if-nez v49, :cond_50

    const/4 v12, 0x1

    :goto_a
    if-eq v12, v6, :cond_1

    const-string v49, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v6}, Landroid/net/ConnectivityManager;->setOthersRule(Z)V

    if-nez v6, :cond_51

    const/16 v49, 0x1

    :goto_b
    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mEverFirewall:Z

    goto/16 :goto_0

    :cond_4f
    const/4 v6, 0x0

    goto :goto_9

    :cond_50
    const/4 v12, 0x0

    goto :goto_a

    :cond_51
    const/16 v49, 0x0

    goto :goto_b

    :cond_52
    const-string v49, "com.car.forward"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_55

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

    :goto_c
    const-string v49, "ips"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v49, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    if-nez v24, :cond_54

    const/16 v49, -0x1

    move/from16 v0, v49

    invoke-virtual {v11, v0, v6}, Landroid/net/ConnectivityManager;->setUidRule(IZ)V

    goto/16 :goto_0

    :cond_53
    const/4 v6, 0x0

    goto :goto_c

    :cond_54
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v6}, Landroid/net/ConnectivityManager;->setIpsForward(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_55
    const-string v49, "com.car.lowvoltage"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_58

    const-string v49, "ro.func.flag"

    const/16 v50, 0x0

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v49, 0x1

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    if-nez v49, :cond_56

    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v49, 0x7f090055

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v49

    const/16 v50, 0x7d3

    invoke-virtual/range {v49 .. v50}, Landroid/view/Window;->setType(I)V

    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->isShowing()Z

    move-result v49

    if-nez v49, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/app/Dialog;->show()V

    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->prepare4LowBattery()V

    goto/16 :goto_0

    :cond_58
    const-string v49, "com.car.netrule"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_5a

    const-string v49, "package"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v49, "allow"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    :try_start_4
    const-string v49, "network_management"

    invoke-static/range {v49 .. v49}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v27

    const-string v49, "localhost"

    move-object/from16 v0, v32

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_59

    const-string v49, "allow"

    const/16 v50, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const/16 v49, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-interface {v0, v1, v6}, Landroid/os/INetworkManagementService;->setPackageUidRule(IZ)V

    goto/16 :goto_0

    :catch_4
    move-exception v49

    goto/16 :goto_0

    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    const/16 v49, 0x5

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v49, v0

    move-object/from16 v0, v27

    move/from16 v1, v49

    invoke-interface {v0, v1, v6}, Landroid/os/INetworkManagementService;->setPackageUidRule(IZ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v49

    const-string v50, "com.car.airplanemode"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    const-string v49, "state"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    new-instance v22, Landroid/content/Intent;

    const-string v49, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v49, "state"

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

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

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.music.MediaPlaybackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

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

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.music.MediaPlaybackService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRebind:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onWakelockTimeout(Lcom/car/common/util/MyWakeLock;)V
    .locals 2

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mDVRWakelock:Lcom/car/common/util/MyWakeLock;

    if-ne p1, v0, :cond_0

    const-string v0, "CarSvc_PowerConnectionReceiver"

    const-string v1, "onWakelockTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/car/systemfunc/PowerConnectionReceiver;->doKillProcessAndSleep(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public prepare4LowBattery()V
    .locals 4

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    iget-object v0, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/systemfunc/PowerConnectionReceiver$9;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerConnectionReceiver$9;-><init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setGsensorEnbaleForKernel(ZLandroid/content/Context;)V

    return-void
.end method

.method queryBatteryStatus(Landroid/content/Context;)V
    .locals 10

    const v5, 0x7f090016

    const/4 v9, 0x7

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->isAccOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    sget v6, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v4, 0x0

    sget-boolean v6, Lcom/car/systemfunc/PowerConnectionReceiver;->OEM_BEIDOU:Z

    if-eqz v6, :cond_3

    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v4}, Lcom/car/systemfunc/PowerConnectionReceiver;->scheduleKillProcessAndSleep(Landroid/content/Context;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/car/systemfunc/PowerConnectionReceiver;->checkMusicState()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v6, 0x2

    const-string v7, "ro.sleep_dialog_shutdown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_5

    sget v6, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    if-lez v6, :cond_4

    const v4, 0x7f090015

    :goto_2
    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_0

    const v4, 0x7f090013

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    sget v6, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    if-lez v6, :cond_6

    const v4, 0x7f090014

    :goto_3
    goto :goto_2

    :cond_6
    move v4, v5

    goto :goto_3

    :cond_7
    sput-boolean v8, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    iput-boolean v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    const-string v5, "ro.func.flag"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.mcu.set"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "addr"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "value"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x3a980

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method recoverMusicState()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mRecoverPlayState:Z

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/voice/cmd/Music;->isKuwoInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/voice/cmd/Music;->playKuwoMusic(Landroid/content/Context;)V

    :cond_0
    :goto_0
    const-string v3, "ro.acc.fm"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mFmRecover:Z

    if-eqz v3, :cond_1

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mFmRecover:Z

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/car/common/ProviderUtils;->setFMEnable(Landroid/content/Context;I)V

    :cond_1
    iget-boolean v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiRecover:Z

    if-eqz v3, :cond_3

    iput-boolean v6, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiRecover:Z

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_2
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v3, "CarSvc_PowerConnectionReceiver"

    const-string v4, "recover wifi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/voice/cmd/Music;->isQQMusicInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "qqmusiccar://?action=20&pull_from=10026465&m0=CONTROL&m1=0"

    const-string v4, "CONTROL"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v4, "com.hongfans.rearview"

    invoke-static {v3, v4}, Lcom/car/utils/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mMediaAPI:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/hongfans/carmedia/MediaAPI;->PlayResume(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/android/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public requestScreenStatus(ZLjava/lang/String;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-eq v4, v6, :cond_2

    move v1, v2

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    iget v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-ne v2, v6, :cond_0

    iput v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

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

    return v1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    const-string v4, "persist.sys.hud.show"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-ne v4, v6, :cond_4

    iput v7, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    :cond_4
    const/4 v1, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_5
    const-string v3, "persist.sys.alarmreboot"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.car.hud.dismiss"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_1

    iput v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    const-string v2, "persist.sys.hud.show"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    iput v7, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    :cond_7
    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v2

    invoke-virtual {v2, p2, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_1
.end method

.method public requestScreenStatus(ZZLjava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1, p3}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZLjava/lang/String;)Z

    move-result v0

    if-nez p2, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    :cond_0
    return v0
.end method

.method public scheduleKillProcessAndSleep(Landroid/content/Context;I)V
    .locals 5

    const/4 v1, 0x0

    if-lez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/car/common/NumUtil;->analyze(J)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/car/systemfunc/PowerConnectionReceiver;->scheduleKillProcessAndSleep(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public scheduleKillProcessAndSleep(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, 0xc8

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltage:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7d3

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLowVoltageDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    sput-boolean v5, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->initSleepDialog(Landroid/content/Context;)V

    :cond_3
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mSleepDialog:Lcom/car/systemfunc/TimerDialog;

    invoke-virtual {v1}, Lcom/car/systemfunc/TimerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    if-eqz v1, :cond_4

    const-string v1, "CarSvc_PowerConnectionReceiver"

    const-string v2, "dialog is showing? no need show again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    const-string v1, "ro.accoff.words"

    const-string v4, ""

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "ro.accoff.words"

    const-string v4, ""

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_5
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    invoke-virtual {v1, p2, v5}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_6
    sput-boolean v5, Lcom/car/systemfunc/PowerConnectionReceiver;->mKillAndSleep:Z

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/car/systemfunc/PowerConnectionReceiver;->FORCE_SLEEP_TIME:I

    if-lez v4, :cond_7

    const-wide/16 v2, 0x1f4

    :cond_7
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public screenRecover(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_recover"

    invoke-static {v3, v4, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    iput v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-eq v3, v8, :cond_0

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v0

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

    iget-wide v4, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastUserInputTime:J

    cmp-long v3, v0, v4

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    iput v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_3
    :goto_1
    iput v8, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    if-ne v3, v10, :cond_5

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mScreenStatusRecover:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_6
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    const-string v3, "persist.sys.hud.show"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v5, v3, v9}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_1
.end method

.method setAlarm(IJILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v1, p4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method setRebootTime()V
    .locals 20

    const-string v2, "persist.sys.alarmreboot"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x3e9

    const-string v3, "com.car.alarm2reboot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->cancelAlarm(ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/car/systemfunc/PowerConnectionReceiver;->mLastRebootTime:J

    const/4 v14, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v11, Ljava/util/Date;

    sub-long v2, v12, v18

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    invoke-virtual {v10, v2, v14}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v2, v8, v12

    if-gtz v2, :cond_2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xc

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    :goto_1
    const-string v2, "debug.rtc.test"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xc

    const/4 v3, 0x2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->add(II)V

    :cond_1
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

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

    const/4 v3, 0x0

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v6, 0x3e9

    const-string v7, "com.car.alarm2reboot"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/car/systemfunc/PowerConnectionReceiver;->setAlarm(IJILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x6

    move/from16 v0, v17

    if-lt v0, v2, :cond_3

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xc

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    move-wide/from16 v0, v18

    long-to-int v3, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1
.end method

.method writeSysValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

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

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
