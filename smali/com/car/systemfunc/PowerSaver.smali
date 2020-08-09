.class public Lcom/car/systemfunc/PowerSaver;
.super Ljava/lang/Object;
.source "PowerSaver.java"


# static fields
.field private static final DETECTING_TIMER:I = 0xea60

.field private static FORCE_REBOOT_TIME:I = 0x0

.field private static final REBOOT_TIME_PROP:Ljava/lang/String; = "car.acc.offed.reboot.time"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccOffedMinutes:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarMovingDetector:Lcom/car/systemfunc/CarMovingDetector;

.field private mCarStoppedMinutes:I

.field private mContext:Landroid/content/Context;

.field mDetectingRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mLastUserInputTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "car.acc.offed.reboot.time"

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/systemfunc/PowerSaver;->FORCE_REBOOT_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CarSvc_PowerSaver"

    iput-object v1, p0, Lcom/car/systemfunc/PowerSaver;->TAG:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/car/systemfunc/PowerSaver;->mLastUserInputTime:J

    iput v4, p0, Lcom/car/systemfunc/PowerSaver;->mCarStoppedMinutes:I

    iput v4, p0, Lcom/car/systemfunc/PowerSaver;->mAccOffedMinutes:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/PowerSaver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/systemfunc/PowerSaver$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerSaver$1;-><init>(Lcom/car/systemfunc/PowerSaver;)V

    iput-object v1, p0, Lcom/car/systemfunc/PowerSaver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/car/systemfunc/PowerSaver$2;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/PowerSaver$2;-><init>(Lcom/car/systemfunc/PowerSaver;)V

    iput-object v1, p0, Lcom/car/systemfunc/PowerSaver;->mDetectingRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/car/systemfunc/PowerSaver;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/car/systemfunc/CarMovingDetector;

    invoke-direct {v1, p1}, Lcom/car/systemfunc/CarMovingDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/car/systemfunc/PowerSaver;->mCarMovingDetector:Lcom/car/systemfunc/CarMovingDetector;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/systemfunc/PowerSaver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "ro.oem.customer"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "didi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/systemfunc/PowerSaver;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/car/common/ProviderUtils;->setAutoSleepTime(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private accIsOffed()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "ro.acc.can"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "sys.car.acc"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/car/systemfunc/PowerSaver;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v6, "status"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_4

    :cond_3
    move v2, v4

    :goto_1
    if-eqz v2, :cond_0

    move v4, v5

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/systemfunc/PowerSaver;)I
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/PowerSaver;->mCarStoppedMinutes:I

    return v0
.end method

.method static synthetic access$002(Lcom/car/systemfunc/PowerSaver;I)I
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/PowerSaver;->mCarStoppedMinutes:I

    return p1
.end method

.method static synthetic access$008(Lcom/car/systemfunc/PowerSaver;)I
    .locals 2

    iget v0, p0, Lcom/car/systemfunc/PowerSaver;->mCarStoppedMinutes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/car/systemfunc/PowerSaver;->mCarStoppedMinutes:I

    return v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/PowerSaver;)I
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/PowerSaver;->mAccOffedMinutes:I

    return v0
.end method

.method static synthetic access$102(Lcom/car/systemfunc/PowerSaver;I)I
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/PowerSaver;->mAccOffedMinutes:I

    return p1
.end method

.method static synthetic access$108(Lcom/car/systemfunc/PowerSaver;)I
    .locals 2

    iget v0, p0, Lcom/car/systemfunc/PowerSaver;->mAccOffedMinutes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/car/systemfunc/PowerSaver;->mAccOffedMinutes:I

    return v0
.end method

.method static synthetic access$200(Lcom/car/systemfunc/PowerSaver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerSaver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/PowerSaver;Landroid/os/PowerManager;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/car/systemfunc/PowerSaver;->getLastUserActivityTime(Landroid/os/PowerManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/car/systemfunc/PowerSaver;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/systemfunc/PowerSaver;->mLastUserInputTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/car/systemfunc/PowerSaver;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/systemfunc/PowerSaver;->mLastUserInputTime:J

    return-wide p1
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/car/systemfunc/PowerSaver;->FORCE_REBOOT_TIME:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/car/systemfunc/PowerSaver;->FORCE_REBOOT_TIME:I

    return p0
.end method

.method static synthetic access$600(Lcom/car/systemfunc/PowerSaver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/systemfunc/PowerSaver;->accIsOffed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/car/systemfunc/PowerSaver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerSaver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/systemfunc/PowerSaver;)Lcom/car/systemfunc/CarMovingDetector;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/PowerSaver;->mCarMovingDetector:Lcom/car/systemfunc/CarMovingDetector;

    return-object v0
.end method

.method private getLastUserActivityTime(Landroid/os/PowerManager;)J
    .locals 2

    invoke-virtual {p1}, Landroid/os/PowerManager;->getLastUserActivityTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/car/systemfunc/PowerSaver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/systemfunc/PowerSaver;->mDetectingRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
