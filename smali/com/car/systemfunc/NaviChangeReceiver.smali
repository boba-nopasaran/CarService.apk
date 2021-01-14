.class public Lcom/car/systemfunc/NaviChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NaviChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;
    }
.end annotation


# static fields
.field public static final ACTION_HUD_DISMISS:Ljava/lang/String; = "com.car.hud.dismiss"

.field public static final ACTION_HUD_SHOW:Ljava/lang/String; = "com.car.hud.show"

.field private static final AUTONAVI_NAVI_ACTION:Ljava/lang/String; = "AUTONAVI_STANDARD_BROADCAST_SEND"

.field public static final GPS_PROP_INFO:Ljava/lang/String; = "sys.current.gpsinfo"

.field private static final HUD_NAVI_ACTION:Ljava/lang/String; = "com.txznet.txz.NAVI_INFO"

.field private static final HUD_NAVI_KEY:Ljava/lang/String; = "KEY_NAVI_INFO"

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field static final MSG_AUTO_SHOW:I = 0x69

.field static final MSG_AUTO_TIMEOUT:I = 0x6a

.field static final MSG_DIR_TICKER:I = 0x68

.field static final MSG_DOUBLE_CLICK:I = 0x66

.field static final MSG_SHORTCUT_DISMISS:I = 0x64

.field static final MSG_SINGLE_CLICK:I = 0x65

.field static final MSG_TIME_TICKER:I = 0x67

.field static final SHORTCUT_DISMISS_TIMEOUT:I = 0x1388

.field static final TAG:Ljava/lang/String; = "CarSvc_NaviChangeReceiver"

.field static sSparseIntArray:Landroid/util/SparseIntArray;


# instance fields
.field mCodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDownTime:J

.field mHandler:Landroid/os/Handler;

.field mIsChinese:Z

.field mLastClickTime:J

.field mLastUserTime:J

.field mParentView:Landroid/view/View;

.field private mRawX:F

.field private mRawY:F

.field private mRect:Landroid/graphics/Rect;

.field mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

.field mSleep:Z

.field private mStartRawX:F

.field private mStartRawY:F

.field private mStartX:F

.field private mStartY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    .line 82
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f020013

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f020014

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f020015

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f020017

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f020018

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f020019

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x7f02001a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f02000c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x7f02000d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x7f02000e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x7f02000f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f020010

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, 0x7f020011

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, 0x7f020012

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x69

    .line 445
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mCodeList:Ljava/util/ArrayList;

    .line 99
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    .line 110
    new-instance v1, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;-><init>(Lcom/car/systemfunc/NaviChangeReceiver;)V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    .line 124
    new-instance v1, Lcom/car/systemfunc/NaviChangeReceiver$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/NaviChangeReceiver$1;-><init>(Lcom/car/systemfunc/NaviChangeReceiver;)V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    .line 446
    iput-object p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    .line 447
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManager:Landroid/view/WindowManager;

    .line 448
    invoke-virtual {p0, p1}, Lcom/car/systemfunc/NaviChangeReceiver;->createNaviShortCut(Landroid/content/Context;)V

    .line 449
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "com.car.hud.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "com.car.hud.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v1, "com.car.monitor.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 457
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mIsChinese:Z

    .line 458
    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/NaviChangeReceiver;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/car/systemfunc/NaviChangeReceiver;->updateClock(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/NaviChangeReceiver;Landroid/content/Context;)J
    .locals 2
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/car/systemfunc/NaviChangeReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/car/systemfunc/NaviChangeReceiver;)J
    .locals 2
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mDownTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/car/systemfunc/NaviChangeReceiver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mDownTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/car/systemfunc/NaviChangeReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/car/systemfunc/NaviChangeReceiver;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/systemfunc/NaviChangeReceiver;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/NaviChangeReceiver;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;

    .prologue
    .line 47
    iget v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawX:F

    return v0
.end method

.method static synthetic access$302(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawX:F

    return p1
.end method

.method static synthetic access$400(Lcom/car/systemfunc/NaviChangeReceiver;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;

    .prologue
    .line 47
    iget v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawY:F

    return v0
.end method

.method static synthetic access$402(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawY:F

    return p1
.end method

.method static synthetic access$502(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartX:F

    return p1
.end method

.method static synthetic access$600(Lcom/car/systemfunc/NaviChangeReceiver;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$702(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartY:F

    return p1
.end method

.method static synthetic access$800(Lcom/car/systemfunc/NaviChangeReceiver;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;

    .prologue
    .line 47
    iget v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawX:F

    return v0
.end method

.method static synthetic access$802(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawX:F

    return p1
.end method

.method static synthetic access$900(Lcom/car/systemfunc/NaviChangeReceiver;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;

    .prologue
    .line 47
    iget v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawY:F

    return v0
.end method

.method static synthetic access$902(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/systemfunc/NaviChangeReceiver;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawY:F

    return p1
.end method

.method private getHumanTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "sendTime"    # J

    .prologue
    .line 272
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "formatTimeString":Ljava/lang/String;
    return-object v0
.end method

.method private getLastUserActivityTime(Landroid/content/Context;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 267
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastUserActivityTime()J

    move-result-wide v2

    return-wide v2
.end method

.method private isAmapAutoTop(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 435
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 436
    .local v1, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.autonavi.amapauto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isDarkTop(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 441
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 442
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

.method private updateClock(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 259
    .local v1, "is24HourFormat":Z
    if-eqz v1, :cond_0

    const-string v3, "kk:mm"

    .line 260
    .local v3, "timeFormat":Ljava/lang/String;
    :goto_0
    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "time":Ljava/lang/String;
    return-object v2

    .line 259
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "timeFormat":Ljava/lang/String;
    :cond_0
    const-string v3, "h:mm"

    goto :goto_0
.end method

.method private updateViewPosition()V
    .locals 5

    .prologue
    .line 567
    :try_start_0
    const-string v1, "CarSvc_NaviChangeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRawX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRawY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartX:F

    iget v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawX:F

    iget v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 569
    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartY:F

    iget v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawY:F

    iget v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawY:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 570
    const-string v1, "CarSvc_NaviChangeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method createNaviShortCut(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 463
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 563
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 466
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    .line 467
    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    .line 468
    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    .line 469
    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0013

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    .line 470
    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mTime:Landroid/widget/TextView;

    .line 471
    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0011

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDir:Landroid/widget/TextView;

    .line 473
    const-string v3, "ro.hud.color"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "colors":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 475
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "color":[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v10, :cond_4

    .line 477
    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 478
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, v3, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    :cond_1
    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    .line 480
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, v3, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    :cond_2
    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    .line 482
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, v3, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mTime:Landroid/widget/TextView;

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    :cond_3
    aget-object v3, v0, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    .line 484
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, v3, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDir:Landroid/widget/TextView;

    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 489
    .end local v0    # "color":[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    new-instance v4, Lcom/car/systemfunc/NaviChangeReceiver$2;

    invoke-direct {v4, p0}, Lcom/car/systemfunc/NaviChangeReceiver$2;-><init>(Lcom/car/systemfunc/NaviChangeReceiver;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    new-instance v4, Lcom/car/systemfunc/NaviChangeReceiver$3;

    invoke-direct {v4, p0}, Lcom/car/systemfunc/NaviChangeReceiver$3;-><init>(Lcom/car/systemfunc/NaviChangeReceiver;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 541
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 542
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 544
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 547
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 548
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

#by boba 02.03.2020
#clock right align
#    const/16 v4, 0x168
const/16 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 549
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 550
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v5, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    invoke-virtual {p0}, Lcom/car/systemfunc/NaviChangeReceiver;->dismissNaviHud()V

    .line 552
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 555
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit16 v4, v4, -0xb4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 556
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 557
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v5, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    const-string v3, "ro.hud.enable"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 560
    const-string v3, "persist.sys.hud.show"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :cond_5
    const-string v3, "persist.sys.hud.show"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method dismissNaviHud()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 290
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_0
    return-void
.end method

.method isAccOn(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 300
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 302
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 303
    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 304
    .local v3, "status":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 308
    .end local v3    # "status":I
    :cond_1
    return v2
.end method

.method isNaviHudVisible()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "action":Ljava/lang/String;
    const-string v27, "com.car.monitor.notify"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 315
    const-string v27, "id"

    const-wide/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    .line 316
    .local v24, "takeId":J
    const-string v27, "operation"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 317
    .local v18, "op":Ljava/lang/String;
    const-string v27, "percent"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 318
    .local v20, "percent":I
    const-string v27, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "jsonstr":Ljava/lang/String;
    const-string v27, "capd"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mCodeList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mCodeList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    :try_start_0
    new-instance v23, Lorg/json/JSONTokener;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 324
    .local v23, "tokener":Lorg/json/JSONTokener;
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 325
    .local v11, "joResult":Lorg/json/JSONObject;
    const-string v27, "imgurl"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 326
    const-string v27, "imgurl"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 327
    .local v19, "path":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v27, "AUTONAVI_STANDARD_BROADCAST_RECV"

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v10, "i":Landroid/content/Intent;
    const-string v27, "KEY_TYPE"

    const/16 v28, 0x2f44

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v27, "KEY_CODE"

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string v27, "KEY_PICTURE_PATH"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    .end local v10    # "i":Landroid/content/Intent;
    .end local v11    # "joResult":Lorg/json/JSONObject;
    .end local v13    # "jsonstr":Ljava/lang/String;
    .end local v18    # "op":Ljava/lang/String;
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "percent":I
    .end local v23    # "tokener":Lorg/json/JSONTokener;
    .end local v24    # "takeId":J
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const-string v27, "AUTONAVI_STANDARD_BROADCAST_SEND"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 339
    const-string v27, "KEY_TYPE"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 340
    .local v26, "type":I
    const/16 v27, 0x2f44

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 341
    const-string v27, "KEY_CODE"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 342
    .local v5, "code":I
    if-lez v5, :cond_2

    .line 343
    new-instance v10, Landroid/content/Intent;

    const-string v27, "com.car.monitor"

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v10    # "i":Landroid/content/Intent;
    const-string v27, "operation"

    const-string v28, "image"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v27, "id"

    int-to-long v0, v5

    move-wide/from16 v28, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 346
    const-string v27, "cam"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mCodeList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    int-to-long v0, v5

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v5    # "code":I
    .end local v10    # "i":Landroid/content/Intent;
    :cond_2
    const/16 v27, 0x2711

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver;->isDarkTop(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 355
    const-string v27, "CUR_ROAD_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "currentRoadName":Ljava/lang/String;
    const-string v27, "NEXT_ROAD_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 357
    .local v17, "nextRoadName":Ljava/lang/String;
    const-string v27, "ICON"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 358
    .local v8, "direction":I
    const-string v27, "SEG_REMAIN_DIS"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 359
    .local v7, "dirDistance":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " \u7c73"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 360
    .local v21, "remainDistance":Ljava/lang/String;
    const/16 v27, 0x3e8

    move/from16 v0, v27

    if-le v7, v0, :cond_3

    .line 361
    div-int/lit16 v14, v7, 0x3e8

    .line 362
    .local v14, "k":I
    rem-int/lit16 v0, v7, 0x3e8

    move/from16 v27, v0

    div-int/lit8 v16, v27, 0x64

    .line 363
    .local v16, "m":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " \u516c\u91cc"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 365
    .end local v14    # "k":I
    .end local v16    # "m":I
    :cond_3
    if-eqz v6, :cond_0

    if-eqz v17, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    sget-object v28, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " -> "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/NaviChangeReceiver;->showNaviHud()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x64

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x64

    const-wide/16 v30, 0x1388

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 373
    const-string v27, "CarSvc_NaviChangeReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "currentRoadName="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", nextRoadName="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", direction="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", dirDistance="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 375
    .end local v6    # "currentRoadName":Ljava/lang/String;
    .end local v7    # "dirDistance":I
    .end local v8    # "direction":I
    .end local v17    # "nextRoadName":Ljava/lang/String;
    .end local v21    # "remainDistance":Ljava/lang/String;
    .end local v26    # "type":I
    :cond_4
    const-string v27, "com.txznet.txz.NAVI_INFO"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/car/systemfunc/NaviChangeReceiver;->isDarkTop(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 377
    const-string v27, "KEY_NAVI_INFO"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 379
    .local v15, "keyInfo":Ljava/lang/String;
    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    .local v12, "json":Lorg/json/JSONObject;
    const-string v27, "direction"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 381
    .restart local v8    # "direction":I
    const-string v27, "nextRoadName"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 382
    .restart local v17    # "nextRoadName":Ljava/lang/String;
    const-string v27, "dirDistance"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 383
    .restart local v7    # "dirDistance":I
    const-string v27, "currentRoadName"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    .restart local v6    # "currentRoadName":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " \u7c73"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 385
    .restart local v21    # "remainDistance":Ljava/lang/String;
    const/16 v27, 0x3e8

    move/from16 v0, v27

    if-le v7, v0, :cond_5

    .line 386
    div-int/lit16 v14, v7, 0x3e8

    .line 387
    .restart local v14    # "k":I
    rem-int/lit16 v0, v7, 0x3e8

    move/from16 v27, v0

    div-int/lit8 v16, v27, 0x64

    .line 388
    .restart local v16    # "m":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " \u516c\u91cc"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 391
    .end local v14    # "k":I
    .end local v16    # "m":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    sget-object v28, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " -> "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/NaviChangeReceiver;->showNaviHud()V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x64

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x64

    const-wide/16 v30, 0x1388

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    .end local v6    # "currentRoadName":Ljava/lang/String;
    .end local v7    # "dirDistance":I
    .end local v8    # "direction":I
    .end local v12    # "json":Lorg/json/JSONObject;
    .end local v17    # "nextRoadName":Ljava/lang/String;
    .end local v21    # "remainDistance":Ljava/lang/String;
    :goto_1
    const-string v27, "CarSvc_NaviChangeReceiver"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 398
    :catch_0
    move-exception v9

    .line 399
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 402
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v15    # "keyInfo":Ljava/lang/String;
    :cond_6
    const-string v27, "com.car.gotosleep"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 403
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/NaviChangeReceiver;->mSleep:Z

    goto/16 :goto_0

    .line 404
    :cond_7
    const-string v27, "com.car.syswakeup"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 405
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/NaviChangeReceiver;->mSleep:Z

    goto/16 :goto_0

    .line 406
    :cond_8
    const-string v27, "com.car.hud.show"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 407
    const-string v27, "show"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 408
    .local v22, "show":Z
    if-nez v22, :cond_9

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    new-instance v28, Landroid/content/Intent;

    const-string v29, "com.car.hud.dismiss"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 412
    :cond_9
    const/4 v10, 0x0

    .line 413
    .restart local v10    # "i":Landroid/content/Intent;
    const-string v27, "ro.hud.ext"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 414
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "i":Landroid/content/Intent;
    const-string v27, "com.car.hud.show"

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .restart local v10    # "i":Landroid/content/Intent;
    :goto_2
    const/high16 v27, 0x30000000

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 423
    const-string v27, "persist.sys.hud.show"

    const-string v28, "1"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :cond_a
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-class v28, Lcom/car/systemfunc/NaviHudActivity;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .restart local v10    # "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x67

    const-wide/16 v30, 0x3e8

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x68

    const-wide/16 v30, 0x3e8

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 425
    .end local v10    # "i":Landroid/content/Intent;
    .end local v22    # "show":Z
    :cond_b
    const-string v27, "com.car.hud.dismiss"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x67

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x68

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    const-string v27, "persist.sys.hud.show"

    const-string v28, "0"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    .restart local v13    # "jsonstr":Ljava/lang/String;
    .restart local v18    # "op":Ljava/lang/String;
    .restart local v20    # "percent":I
    .restart local v24    # "takeId":J
    :catch_1
    move-exception v27

    goto/16 :goto_0
.end method

.method showNaviHud()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    :cond_0
    return-void
.end method
