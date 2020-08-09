.class public Lcom/car/systemfunc/SysEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SysEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;
    }
.end annotation


# static fields
.field public static final GPS_PROP_INFO:Ljava/lang/String; = "sys.current.gpsinfo"

.field static final MSG_DOUBLE_CLICK:I = 0x66

.field static final MSG_SHORTCUT_DISMISS:I = 0x64

.field static final MSG_SINGLE_CLICK:I = 0x65

.field static final TAG:Ljava/lang/String; = "CarSvc_SysEventReceiver"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDownTime:J

.field mHandler:Landroid/os/Handler;

.field mLastClickTime:J

.field mParentView:Landroid/view/View;

.field private mRawX:F

.field private mRawY:F

.field private mRect:Landroid/graphics/Rect;

.field mShortCutSysEvent:Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

.field mSleep:Z

.field private mStartRawX:F

.field private mStartRawY:F

.field private mStartX:F

.field private mStartY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;-><init>(Lcom/car/systemfunc/SysEventReceiver;)V

    iput-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mShortCutSysEvent:Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

    new-instance v1, Lcom/car/systemfunc/SysEventReceiver$1;

    invoke-direct {v1, p0}, Lcom/car/systemfunc/SysEventReceiver$1;-><init>(Lcom/car/systemfunc/SysEventReceiver;)V

    iput-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/systemfunc/SysEventReceiver;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/car/systemfunc/SysEventReceiver;->createShortCut(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.car.gotosleep"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.syswakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.car.sysevent.display"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/car/systemfunc/SysEventReceiver;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/car/systemfunc/SysEventReceiver;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/systemfunc/SysEventReceiver;)F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/SysEventReceiver;->mRawX:F

    return v0
.end method

.method static synthetic access$102(Lcom/car/systemfunc/SysEventReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/SysEventReceiver;->mRawX:F

    return p1
.end method

.method static synthetic access$200(Lcom/car/systemfunc/SysEventReceiver;)F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/SysEventReceiver;->mRawY:F

    return v0
.end method

.method static synthetic access$202(Lcom/car/systemfunc/SysEventReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/SysEventReceiver;->mRawY:F

    return p1
.end method

.method static synthetic access$302(Lcom/car/systemfunc/SysEventReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartX:F

    return p1
.end method

.method static synthetic access$402(Lcom/car/systemfunc/SysEventReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartY:F

    return p1
.end method

.method static synthetic access$500(Lcom/car/systemfunc/SysEventReceiver;)F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartRawX:F

    return v0
.end method

.method static synthetic access$502(Lcom/car/systemfunc/SysEventReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartRawX:F

    return p1
.end method

.method static synthetic access$600(Lcom/car/systemfunc/SysEventReceiver;)F
    .locals 1

    iget v0, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartRawY:F

    return v0
.end method

.method static synthetic access$602(Lcom/car/systemfunc/SysEventReceiver;F)F
    .locals 0

    iput p1, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartRawY:F

    return p1
.end method

.method static synthetic access$700(Lcom/car/systemfunc/SysEventReceiver;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/systemfunc/SysEventReceiver;->mDownTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/car/systemfunc/SysEventReceiver;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/systemfunc/SysEventReceiver;->mDownTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/car/systemfunc/SysEventReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/systemfunc/SysEventReceiver;->updateViewPosition()V

    return-void
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

.method private updateViewPosition()V
    .locals 5

    :try_start_0
    const-string v1, "CarSvc_SysEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRawX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mRawX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRawY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mRawY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartX:F

    iget v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mRawX:F

    iget v4, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartRawX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartY:F

    iget v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mRawY:F

    iget v4, p0, Lcom/car/systemfunc/SysEventReceiver;->mStartRawY:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v1, "CarSvc_SysEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

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
.method createShortCut(Landroid/content/Context;)V
    .locals 4

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver;->mShortCutSysEvent:Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    const v3, 0x7f0b0016

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;->mDetail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    new-instance v2, Lcom/car/systemfunc/SysEventReceiver$2;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/SysEventReceiver$2;-><init>(Lcom/car/systemfunc/SysEventReceiver;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    new-instance v2, Lcom/car/systemfunc/SysEventReceiver$3;

    invoke-direct {v2, p0}, Lcom/car/systemfunc/SysEventReceiver$3;-><init>(Lcom/car/systemfunc/SysEventReceiver;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x258

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/car/systemfunc/SysEventReceiver;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/car/systemfunc/SysEventReceiver;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    goto :goto_0
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

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v9, 0x64

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.car.gotosleep"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mSleep:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "com.car.syswakeup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v8, p0, Lcom/car/systemfunc/SysEventReceiver;->mSleep:Z

    goto :goto_0

    :cond_2
    const-string v5, "com.car.sysevent.display"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "debug.sysevent.show"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_0

    const-string v5, "detail"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "timeout"

    const/16 v6, 0xa

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "size"

    const/16 v6, 0x30

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "flush"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mShortCutSysEvent:Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

    iget-object v5, v5, Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;->mDetail:Landroid/widget/TextView;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mShortCutSysEvent:Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

    iget-object v5, v5, Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;->mDetail:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mShortCutSysEvent:Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

    iget-object v5, v5, Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;->mDetail:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v6, v4, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mParentView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/car/systemfunc/SysEventReceiver;->mShortCutSysEvent:Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

    iget-object v6, v6, Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;->mDetail:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v5, p0, Lcom/car/systemfunc/SysEventReceiver;->mShortCutSysEvent:Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;

    iget-object v5, v5, Lcom/car/systemfunc/SysEventReceiver$ShortCutSysEvent;->mDetail:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
