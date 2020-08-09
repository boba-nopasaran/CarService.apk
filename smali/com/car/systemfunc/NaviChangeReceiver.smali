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

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f020013

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f020014

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f020015

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f020016

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f020017

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    const v2, 0x7f020018

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    const v2, 0x7f020019

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const v2, 0x7f02001a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const v2, 0x7f02000c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const v2, 0x7f02000d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const v2, 0x7f02000e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const v2, 0x7f02000f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    const v2, 0x7f020010

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    const v2, 0x7f020011

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/car/systemfunc/NaviChangeReceiver;->sSparseIntArray:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    const v2, 0x7f020012

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x69

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mLastUserTime:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mCodeList:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;-><init>(Lcom/car/systemfunc/NaviChangeReceiver;)V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    new-instance v1, Lcom/car/systemfunc/NaviChangeReceiver$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/NaviChangeReceiver$1;-><init>(Lcom/car/systemfunc/NaviChangeReceiver;)V

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/car/systemfunc/NaviChangeReceiver;->createNaviShortCut(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.hud.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.hud.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.monitor.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mIsChinese:Z

    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/NaviChangeReceiver;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/systemfunc/NaviChangeReceiver;->updateClock(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/NaviChangeReceiver;Landroid/content/Context;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/car/systemfunc/NaviChangeReceiver;->getLastUserActivityTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/car/systemfunc/NaviChangeReceiver;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mDownTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/car/systemfunc/NaviChangeReceiver;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mDownTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/car/systemfunc/NaviChangeReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/NaviChangeReceiver;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/systemfunc/NaviChangeReceiver;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/systemfunc/NaviChangeReceiver;)F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawX:F

    return v0
.end method

.method static synthetic access$302(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawX:F

    return p1
.end method

.method static synthetic access$400(Lcom/car/systemfunc/NaviChangeReceiver;)F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawY:F

    return v0
.end method

.method static synthetic access$402(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawY:F

    return p1
.end method

.method static synthetic access$502(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartX:F

    return p1
.end method

.method static synthetic access$600(Lcom/car/systemfunc/NaviChangeReceiver;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$702(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartY:F

    return p1
.end method

.method static synthetic access$800(Lcom/car/systemfunc/NaviChangeReceiver;)F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawX:F

    return v0
.end method

.method static synthetic access$802(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawX:F

    return p1
.end method

.method static synthetic access$900(Lcom/car/systemfunc/NaviChangeReceiver;)F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawY:F

    return v0
.end method

.method static synthetic access$902(Lcom/car/systemfunc/NaviChangeReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawY:F

    return p1
.end method

.method private getHumanTime(J)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

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

.method private isAmapAutoTop(Landroid/content/Context;)Z
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

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.autonavi.amapauto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
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

.method private updateClock(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "kk:mm"

    :goto_0
    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v3, "h:mm"

    goto :goto_0
.end method

.method private updateViewPosition()V
    .locals 5

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

    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartX:F

    iget v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawX:F

    iget v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartY:F

    iget v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRawY:F

    iget v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mStartRawY:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

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

    iget-object v1, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method createNaviShortCut(Landroid/content/Context;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0013

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    const v5, 0x7f0b0011

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDir:Landroid/widget/TextView;

    const-string v3, "ro.hud.color"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-ne v3, v10, :cond_4

    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, v3, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, v3, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    aget-object v4, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, v3, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mTime:Landroid/widget/TextView;

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    aget-object v3, v0, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v3, v3, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDir:Landroid/widget/TextView;

    aget-object v4, v0, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    new-instance v4, Lcom/car/systemfunc/NaviChangeReceiver$2;

    invoke-direct {v4, p0}, Lcom/car/systemfunc/NaviChangeReceiver$2;-><init>(Lcom/car/systemfunc/NaviChangeReceiver;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    new-instance v4, Lcom/car/systemfunc/NaviChangeReceiver$3;

    invoke-direct {v4, p0}, Lcom/car/systemfunc/NaviChangeReceiver$3;-><init>(Lcom/car/systemfunc/NaviChangeReceiver;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7d2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x168

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v5, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/car/systemfunc/NaviChangeReceiver;->dismissNaviHud()V

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit16 v4, v4, -0xb4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    iget-object v5, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "ro.hud.enable"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "persist.sys.hud.show"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "persist.sys.hud.show"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method dismissNaviHud()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method isAccOn(Landroid/content/Context;)Z
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

.method isNaviHudVisible()Z
    .locals 1

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

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v27, "com.car.monitor.notify"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    const-string v27, "id"

    const-wide/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    const-string v27, "operation"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v27, "percent"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const-string v27, "result"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v27, "capd"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mCodeList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mCodeList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v23, Lorg/json/JSONTokener;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v27, "imgurl"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    const-string v27, "imgurl"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    new-instance v10, Landroid/content/Intent;

    const-string v27, "AUTONAVI_STANDARD_BROADCAST_RECV"

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "KEY_TYPE"

    const/16 v28, 0x2f44

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v27, "KEY_CODE"

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v27, "KEY_PICTURE_PATH"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v27, "AUTONAVI_STANDARD_BROADCAST_SEND"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-string v27, "KEY_TYPE"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x2f44

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    const-string v27, "KEY_CODE"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    new-instance v10, Landroid/content/Intent;

    const-string v27, "com.car.monitor"

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v27, "operation"

    const-string v28, "image"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v27, "id"

    int-to-long v0, v5

    move-wide/from16 v28, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v27, "cam"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mCodeList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    int-to-long v0, v5

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v27, 0x2711

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

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

    const-string v27, "CUR_ROAD_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v27, "NEXT_ROAD_NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v27, "ICON"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v27, "SEG_REMAIN_DIS"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

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

    const/16 v27, 0x3e8

    move/from16 v0, v27

    if-le v7, v0, :cond_3

    div-int/lit16 v14, v7, 0x3e8

    rem-int/lit16 v0, v7, 0x3e8

    move/from16 v27, v0

    div-int/lit8 v16, v27, 0x64

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

    :cond_3
    if-eqz v6, :cond_0

    if-eqz v17, :cond_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/NaviChangeReceiver;->showNaviHud()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x64

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x64

    const-wide/16 v30, 0x1388

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

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

    :cond_4
    const-string v27, "com.txznet.txz.NAVI_INFO"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

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

    const-string v27, "KEY_NAVI_INFO"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v27, "direction"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v27, "nextRoadName"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v27, "dirDistance"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v27, "currentRoadName"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

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

    const/16 v27, 0x3e8

    move/from16 v0, v27

    if-le v7, v0, :cond_5

    div-int/lit16 v14, v7, 0x3e8

    rem-int/lit16 v0, v7, 0x3e8

    move/from16 v27, v0

    div-int/lit8 v16, v27, 0x64

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/car/systemfunc/NaviChangeReceiver;->showNaviHud()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x64

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

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

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_6
    const-string v27, "com.car.gotosleep"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/NaviChangeReceiver;->mSleep:Z

    goto/16 :goto_0

    :cond_7
    const-string v27, "com.car.syswakeup"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/car/systemfunc/NaviChangeReceiver;->mSleep:Z

    goto/16 :goto_0

    :cond_8
    const-string v27, "com.car.hud.show"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    const-string v27, "show"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    new-instance v28, Landroid/content/Intent;

    const-string v29, "com.car.hud.dismiss"

    invoke-direct/range {v28 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    const-string v27, "ro.hud.ext"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_a

    new-instance v10, Landroid/content/Intent;

    const-string v27, "com.car.hud.show"

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    const/high16 v27, 0x30000000

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v27, "persist.sys.hud.show"

    const-string v28, "1"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-class v28, Lcom/car/systemfunc/NaviHudActivity;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x67

    const-wide/16 v30, 0x3e8

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

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

    :cond_b
    const-string v27, "com.car.hud.dismiss"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mParentView:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x67

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x68

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    const-string v27, "persist.sys.hud.show"

    const-string v28, "0"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v27

    goto/16 :goto_0
.end method

.method showNaviHud()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDirection:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mDistanceRemain:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/systemfunc/NaviChangeReceiver;->mShortCutNavi:Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;

    iget-object v0, v0, Lcom/car/systemfunc/NaviChangeReceiver$ShortCutNavi;->mRoadName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
