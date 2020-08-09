.class public Lcom/amap/api/navi/AMapHudView;
.super Landroid/widget/FrameLayout;
.source "AMapHudView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/amap/api/navi/MyNaviListener;


# static fields
.field private static final delayMillis:J = 0x7d0L

.field static final hud_imgActions:[I


# instance fields
.field aMapHudVewListener:Lcom/amap/api/navi/AMapHudViewListener;

.field private autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

.field private disappearHudHandler:Landroid/os/Handler;

.field private disappearHudTitleRunnable:Ljava/lang/Runnable;

.field private distanceTimeTextStr:Ljava/lang/String;

.field private frameLayout:Landroid/view/View;

.field private hudMode:I

.field private isHudMenu:Z

.field isLandscape:Z

.field private limitSpeedTextView:Landroid/widget/TextView;

.field private mAMapNavi:Lcom/amap/api/navi/INavi;

.field private mHeight:I

.field private mHudMirrorTitle:Landroid/view/View;

.field private mMirrorModeCheckBox:Landroid/widget/CheckBox;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mWidth:I

.field private nextRoadDisTextSpannableStr:Landroid/text/SpannableString;

.field private nextRoadDistanceText:Landroid/widget/TextView;

.field private nextRoadNameText:Landroid/widget/TextView;

.field private nextRoadNameTextStr:Ljava/lang/String;

.field private resId:I

.field private restDistanceText:Landroid/widget/TextView;

.field private restDistanceTextStr:Ljava/lang/String;

.field private restDistanceTime:Landroid/widget/TextView;

.field private roadsignimg:Landroid/widget/ImageView;

.field private title_btn_goback:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amap/api/navi/AMapHudView;->hud_imgActions:[I

    return-void

    :array_0
    .array-data 4
        0x47020021
        0x47020021
        0x47020021
        0x47020022
        0x47020023
        0x47020024
        0x47020025
        0x47020026
        0x47020027
        0x47020028
        0x47020017
        0x47020018
        0x47020019
        0x4702001a
        0x4702001b
        0x4702001c
        0x4702001d
        0x4702001e
        0x4702001f
        0x47020020    # 33280.125f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapHudView;->isLandscape:Z

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->mWidth:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->mHeight:I

    iput v1, p0, Lcom/amap/api/navi/AMapHudView;->hudMode:I

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapHudView;->isHudMenu:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/navi/AMapHudView$1;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/AMapHudView$1;-><init>(Lcom/amap/api/navi/AMapHudView;)V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudTitleRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/navi/AMapHudView$2;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/AMapHudView$2;-><init>(Lcom/amap/api/navi/AMapHudView;)V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadDisTextSpannableStr:Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Lcom/amap/api/navi/AMapHudView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapHudView;->isLandscape:Z

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->mWidth:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->mHeight:I

    iput v1, p0, Lcom/amap/api/navi/AMapHudView;->hudMode:I

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapHudView;->isHudMenu:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/navi/AMapHudView$1;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/AMapHudView$1;-><init>(Lcom/amap/api/navi/AMapHudView;)V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudTitleRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/navi/AMapHudView$2;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/AMapHudView$2;-><init>(Lcom/amap/api/navi/AMapHudView;)V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadDisTextSpannableStr:Landroid/text/SpannableString;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/navi/AMapHudView;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "AMapHudView(Context context, AttributeSet attrs) "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapHudView;->isLandscape:Z

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->mWidth:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->mHeight:I

    iput v1, p0, Lcom/amap/api/navi/AMapHudView;->hudMode:I

    iput-boolean v1, p0, Lcom/amap/api/navi/AMapHudView;->isHudMenu:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/navi/AMapHudView$1;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/AMapHudView$1;-><init>(Lcom/amap/api/navi/AMapHudView;)V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudTitleRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/navi/AMapHudView$2;

    invoke-direct {v0, p0}, Lcom/amap/api/navi/AMapHudView$2;-><init>(Lcom/amap/api/navi/AMapHudView;)V

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadDisTextSpannableStr:Landroid/text/SpannableString;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/navi/AMapHudView;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "AMapHudView(Context context, AttributeSet attrs, int defStyle) "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/amap/api/navi/AMapHudView;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->loadHideHudTitleAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/amap/api/navi/AMapHudView;)Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    return-object v0
.end method

.method static synthetic access$202(Lcom/amap/api/navi/AMapHudView;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/navi/AMapHudView;->hudMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/amap/api/navi/AMapHudView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/navi/AMapHudView;->setCheckBoxAndMirrorImageState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/amap/api/navi/AMapHudView;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->removeCallbacks()V

    return-void
.end method

.method static synthetic access$500(Lcom/amap/api/navi/AMapHudView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudTitleRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amap/api/navi/AMapHudView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amap/api/navi/AMapHudView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    return-object v0
.end method

.method private getScreenInfo()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    iget v1, p0, Lcom/amap/api/navi/AMapHudView;->mWidth:I

    iput v1, v0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mWidth:I

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    iget v1, p0, Lcom/amap/api/navi/AMapHudView;->mHeight:I

    add-int/lit8 v1, v1, -0x32

    iput v1, v0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->mHeight:I

    goto :goto_0
.end method

.method private getSpanableString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 8

    const/4 v7, -0x1

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x3c

    invoke-static {p1, v1}, Lcom/amap/api/col/ds;->b(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {p1, v2}, Lcom/amap/api/col/ds;->b(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v6, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/navi/AMapNavi;->getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mAMapNavi:Lcom/amap/api/navi/INavi;

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/amap/api/navi/AMapHudView;->isLandscape:Z

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapHudView;->isLandscape:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x47030001

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    :goto_1
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/AMapHudView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->initResolution()V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->initWidget()V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mAMapNavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0, p0}, Lcom/amap/api/navi/INavi;->addAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mAMapNavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviInfo()Lcom/amap/api/navi/model/NaviInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/AMapHudView;->onNaviInfoUpdate(Lcom/amap/api/navi/model/NaviInfo;)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x47030000    # 33536.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "init(Context context)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initResolution()V
    .locals 3

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->mWidth:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->mHeight:I

    return-void
.end method

.method private initWidget()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const/high16 v1, 0x47090000    # 35072.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mMirrorModeCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadNameText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->restDistanceText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->roadsignimg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadDistanceText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->title_btn_goback:Landroid/view/View;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->restDistanceTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    const v1, 0x47090006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->limitSpeedTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->getScreenInfo()V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->setWidgetListener()V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->updateHudWidgetContent()V

    return-void
.end method

.method private isHudMirror()Z
    .locals 2

    iget v0, p0, Lcom/amap/api/navi/AMapHudView;->hudMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadHideHudTitleAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x47040001

    invoke-static {v0, v1}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/amap/api/navi/AMapHudView$3;

    invoke-direct {v1, p0}, Lcom/amap/api/navi/AMapHudView$3;-><init>(Lcom/amap/api/navi/AMapHudView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private loadShowHudTitleAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x47040000    # 33792.0f

    invoke-static {v0, v1}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->mHudMirrorTitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private removeCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudTitleRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudTitleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setCheckBoxAndMirrorImageState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mMirrorModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mMirrorModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->setMirrorState(Z)V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->invalidate()V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->postInvalidate()V

    :cond_1
    return-void
.end method

.method private setWidgetListener()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    invoke-virtual {v0, p0}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->setAMapHudView(Lcom/amap/api/navi/AMapHudView;)V

    invoke-virtual {p0, p0}, Lcom/amap/api/navi/AMapHudView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mMirrorModeCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mMirrorModeCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->title_btn_goback:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->title_btn_goback:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private switchStrFromMeter(I)Landroid/text/SpannableString;
    .locals 3

    const/high16 v2, 0x41200000    # 10.0f

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u516c\u91cc"

    invoke-direct {p0, v1, v0, v2}, Lcom/amap/api/navi/AMapHudView;->getSpanableString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7c73"

    invoke-direct {p0, v0, v1, v2}, Lcom/amap/api/navi/AMapHudView;->getSpanableString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0
.end method

.method private updateHudUI(Lcom/amap/api/navi/model/NaviInfo;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/amap/api/navi/model/NaviInfo;->m_NextRoadName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadNameTextStr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getPathRetainDistance()I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->restDistanceTextStr:Ljava/lang/String;

    iget v0, p1, Lcom/amap/api/navi/model/NaviInfo;->m_SegRemainDis:I

    invoke-direct {p0, v0}, Lcom/amap/api/navi/AMapHudView;->switchStrFromMeter(I)Landroid/text/SpannableString;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadDisTextSpannableStr:Landroid/text/SpannableString;

    iget v0, p1, Lcom/amap/api/navi/model/NaviInfo;->m_Icon:I

    iput v0, p0, Lcom/amap/api/navi/AMapHudView;->resId:I

    iget v0, p1, Lcom/amap/api/navi/model/NaviInfo;->m_RouteRemainTime:I

    invoke-static {v0}, Lcom/amap/api/col/ds;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->distanceTimeTextStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mAMapNavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviSetting()Lcom/amap/api/navi/NaviSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/navi/NaviSetting;->isMonitorCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mAMapNavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getEngineType()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/navi/model/NaviInfo;->getCameraDistance()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->limitSpeedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/amap/api/navi/model/NaviInfo;->m_CameraSpeed:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->limitSpeedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/amap/api/navi/model/NaviInfo;->m_CameraSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->limitSpeedTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->updateHudWidgetContent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "updateHudUI(NaviInfo naviInfo)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p1, Lcom/amap/api/navi/model/NaviInfo;->m_CameraSpeed:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->limitSpeedTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->limitSpeedTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateHudWidgetContent()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadNameText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadNameTextStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadDistanceText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadDistanceText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->nextRoadDisTextSpannableStr:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->restDistanceText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->restDistanceText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->restDistanceTextStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->restDistanceTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->restDistanceTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->distanceTimeTextStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->roadsignimg:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/navi/AMapHudView;->resId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amap/api/navi/AMapHudView;->resId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/amap/api/navi/AMapHudView;->hud_imgActions:[I

    iget v2, p0, Lcom/amap/api/navi/AMapHudView;->resId:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->roadsignimg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->invalidate()V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->postInvalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public OnUpdateTrafficFacility(Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V
    .locals 0

    return-void
.end method

.method public OnUpdateTrafficFacility(Lcom/autonavi/tbt/TrafficFacilityInfo;)V
    .locals 0

    return-void
.end method

.method public OnUpdateTrafficFacility([Lcom/amap/api/navi/model/AMapNaviTrafficFacilityInfo;)V
    .locals 0

    return-void
.end method

.method public carProjectionChange(Lcom/amap/api/navi/model/AmapCarLocation;)V
    .locals 0

    return-void
.end method

.method public getHudMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/AMapHudView;->isHudMenu:Z

    return v0
.end method

.method public getHudViewMode()I
    .locals 1

    iget v0, p0, Lcom/amap/api/navi/AMapHudView;->hudMode:I

    return v0
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

.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->title_btn_goback:Landroid/view/View;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->aMapHudVewListener:Lcom/amap/api/navi/AMapHudViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->aMapHudVewListener:Lcom/amap/api/navi/AMapHudViewListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapHudViewListener;->onHudViewCancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "onClick(View v)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->recycleMirrorBitmap()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->removeAllViews()V

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x47030001

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/AMapHudView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->initResolution()V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->initWidget()V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->getScreenInfo()V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mAMapNavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviInfo()Lcom/amap/api/navi/model/NaviInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/AMapHudView;->onNaviInfoUpdate(Lcom/amap/api/navi/model/NaviInfo;)V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->isHudMirror()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/navi/AMapHudView;->setCheckBoxAndMirrorImageState(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/navi/AMapHudView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x47030000    # 33536.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->frameLayout:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "onConfigurationChanged(Configuration newConfig)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->autonaviHudMirrorImage:Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/AutoNaviHudMirrorImage;->recycleMirrorBitmap()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->aMapHudVewListener:Lcom/amap/api/navi/AMapHudViewListener;

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->mAMapNavi:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->destroy()V

    const-string v0, "dm"

    const-string v1, "AmapHudView-->onDestory()"

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "onDestroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEndEmulatorNavi()V
    .locals 0

    return-void
.end method

.method public onGetNavigationText(ILjava/lang/String;)V
    .locals 0

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
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/navi/AMapHudView;->updateHudUI(Lcom/amap/api/navi/model/NaviInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "onNaviInfoUpdate(NaviInfo naviinfo)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNaviInfoUpdated(Lcom/amap/api/navi/model/AMapNaviInfo;)V
    .locals 0

    return-void
.end method

.method public final onPause()V
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

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
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

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/amap/api/navi/AMapHudView;->onTouchHudMirrorEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "onTouch(View arg0, MotionEvent arg1)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchHudMirrorEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/navi/AMapHudView;->isHudMenu:Z

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->loadShowHudTitleAnimation()V

    invoke-direct {p0}, Lcom/amap/api/navi/AMapHudView;->removeCallbacks()V

    iget-object v0, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/navi/AMapHudView;->disappearHudTitleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "onTouchHudMirrorEvent(MotionEvent event)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTrafficStatusUpdate()V
    .locals 0

    return-void
.end method

.method public setHudMenuEnabled(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/navi/AMapHudView;->isHudMenu:Z

    return-void
.end method

.method public setHudViewListener(Lcom/amap/api/navi/AMapHudViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/navi/AMapHudView;->aMapHudVewListener:Lcom/amap/api/navi/AMapHudViewListener;

    return-void
.end method

.method public setHudViewMode(I)V
    .locals 3

    :try_start_0
    iput p1, p0, Lcom/amap/api/navi/AMapHudView;->hudMode:I

    iget v0, p0, Lcom/amap/api/navi/AMapHudView;->hudMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/amap/api/navi/AMapHudView;->setCheckBoxAndMirrorImageState(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapHudView"

    const-string v2, "setHudViewMode(int mode)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
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
    .locals 0

    return-void
.end method

.method public updateAimlessModeStatistics(Lcom/amap/api/navi/model/AimLessModeStat;)V
    .locals 0

    return-void
.end method

.method public updateCameraInfo([Lcom/amap/api/navi/model/AMapNaviCameraInfo;)V
    .locals 0

    return-void
.end method
