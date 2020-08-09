.class public Lcom/car/voice/ui/VoiceUIActivity;
.super Landroid/app/Activity;
.source "VoiceUIActivity.java"

# interfaces
.implements Lcom/car/voice/VoiceUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/voice/ui/VoiceUIActivity$MyWebChromeClient;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_VOICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarSvc_VoiceUIActivity"

.field private static final TIP_NUM:I = 0x7

.field private static mCallback:Lcom/car/voice/VoiceUICallback;

.field private static mShowing:Ljava/lang/Boolean;

.field private static sIns:Lcom/car/voice/ui/VoiceUIActivity;


# instance fields
.field private mClearID:I

.field private mCommandTips:[Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHelpView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPhoneIncoming:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRandom:Ljava/util/Random;

.field private mRecType:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSpeeching:Z

.field private mUIContext:Landroid/content/Context;

.field private mVolumeView:Lcom/car/voice/ui/VolumeView;

.field private mWebView:Landroid/webkit/WebView;

.field mWidescreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/car/voice/ui/VoiceUIActivity;->mShowing:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    iput v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mClearID:I

    iput-boolean v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mPhoneIncoming:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mItems:Ljava/util/List;

    iput-boolean v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWidescreen:Z

    new-instance v0, Lcom/car/voice/ui/VoiceUIActivity$9;

    invoke-direct {v0, p0}, Lcom/car/voice/ui/VoiceUIActivity$9;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    iput-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/car/voice/VoiceUICallback;
    .locals 1

    sget-object v0, Lcom/car/voice/ui/VoiceUIActivity;->mCallback:Lcom/car/voice/VoiceUICallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/voice/ui/VoiceUIActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mClearID:I

    return v0
.end method

.method static synthetic access$1000(Lcom/car/voice/ui/VoiceUIActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->flipScrollView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/car/voice/ui/VoiceUIActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->doShowCommandTips()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/voice/ui/VoiceUIActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mRecType:I

    return v0
.end method

.method static synthetic access$400(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/voice/ui/VoiceUIActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/car/voice/ui/VoiceUIActivity;I)I
    .locals 0

    iput p1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/voice/ui/VoiceUIActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->containEmptyView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/car/voice/ui/VoiceUIActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addView(Landroid/view/View;IZ)V
    .locals 5

    const/4 v4, -0x1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    :cond_0
    iget v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->containEmptyView()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->flipScrollView()V

    return-void
.end method

.method private addView(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    :cond_0
    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->containEmptyView()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/voice/ui/VoiceUIActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/car/voice/ui/VoiceUIActivity$6;-><init>(Lcom/car/voice/ui/VoiceUIActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private clear()V
    .locals 2

    const-string v0, "CarSvc_VoiceUIActivity"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mClearID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mClearID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    return-void
.end method

.method private containEmptyView()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mEmptyView:Landroid/view/View;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private doShowCommandTips()V
    .locals 12

    new-instance v3, Ljava/util/ArrayList;

    const/4 v10, 0x7

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x7

    if-ge v10, v11, :cond_1

    iget-object v10, p0, Lcom/car/voice/ui/VoiceUIActivity;->mRandom:Ljava/util/Random;

    iget-object v11, p0, Lcom/car/voice/ui/VoiceUIActivity;->mCommandTips:[Ljava/lang/String;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v10, p0, Lcom/car/voice/ui/VoiceUIActivity;->mCommandTips:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/car/voice/ui/VoiceUIActivity;->mCommandTips:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, 0x0

    const-string v11, "\u60a8\u53ef\u4ee5\u8fd9\u6837\u5bf9\u6211\u8bf4:"

    invoke-interface {v3, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "CarSvc_VoiceUIActivity"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_2
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x5

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v10, 0x5

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    :cond_3
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xd

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->containEmptyView()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/car/voice/ui/VoiceUIActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_4
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    iget-object v11, p0, Lcom/car/voice/ui/VoiceUIActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getHeight()I

    move-result v11

    invoke-direct {v6, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v10, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    iput v10, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->flipScrollView()V

    return-void
.end method

.method private flipScrollView()V
    .locals 2

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/voice/ui/VoiceUIActivity$7;

    invoke-direct {v1, p0}, Lcom/car/voice/ui/VoiceUIActivity$7;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static instance()Lcom/car/voice/ui/VoiceUIActivity;
    .locals 1

    sget-object v0, Lcom/car/voice/ui/VoiceUIActivity;->sIns:Lcom/car/voice/ui/VoiceUIActivity;

    return-object v0
.end method

.method private setChooseList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020026

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setBackgroundResource(I)V

    const/16 v3, 0x1e

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v7, v4, v7}, Landroid/widget/ListView;->setPadding(IIII)V

    new-instance v3, Lcom/car/voice/ui/PoiListAdapter;

    invoke-direct {v3, p0, p1}, Lcom/car/voice/ui/PoiListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/car/voice/ui/VoiceUIActivity$5;

    invoke-direct {v3, p0}, Lcom/car/voice/ui/VoiceUIActivity$5;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f080000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float v3, v1, v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-direct {p0, v2, v3, v7}, Lcom/car/voice/ui/VoiceUIActivity;->addView(Landroid/view/View;IZ)V

    return-void
.end method

.method private setSpeeching(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mSpeeching:Z

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    iget-boolean v1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mSpeeching:Z

    invoke-virtual {v0, v1}, Lcom/car/voice/ui/VolumeView;->setSpeeching(Z)V

    return-void
.end method

.method private setTipString(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020026

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x1e

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2, v6}, Lcom/car/voice/ui/VoiceUIActivity;->addView(Landroid/view/View;Z)V

    return-void
.end method

.method private setVoiceString(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02002b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0xa

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f070000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2, v6}, Lcom/car/voice/ui/VoiceUIActivity;->addView(Landroid/view/View;Z)V

    return-void
.end method

.method private setVolume(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VolumeView;->setVolume(I)V

    :cond_0
    return-void
.end method

.method private showCommandTips()V
    .locals 2

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/voice/ui/VoiceUIActivity$8;

    invoke-direct {v1, p0}, Lcom/car/voice/ui/VoiceUIActivity$8;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->doShowCommandTips()V

    goto :goto_0
.end method

.method private showHelpMessage()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dismissUI()V
    .locals 0

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->finish()V

    return-void
.end method

.method public getSuggestionResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getUIContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mUIContext:Landroid/content/Context;

    return-object v0
.end method

.method public isPhoneCallIncoming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mPhoneIncoming:Z

    return v0
.end method

.method public isUIShowing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->finish()V

    return-void
.end method

.method public onClear()V
    .locals 0

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->clear()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "CarSvc_VoiceUIActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    mul-int/lit16 v3, v2, 0xa0

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v2, v3, v4

    const/16 v3, 0x438

    if-lt v2, v3, :cond_0

    iput-boolean v5, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWidescreen:Z

    :goto_0
    iput-boolean v5, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWidescreen:Z

    iget-boolean v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWidescreen:Z

    if-eqz v3, :cond_1

    const v3, 0x7f03000d

    invoke-virtual {p0, v3}, Lcom/car/voice/ui/VoiceUIActivity;->setContentView(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    const v3, 0x7f0b001c

    invoke-virtual {p0, v3}, Lcom/car/voice/ui/VoiceUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mScrollView:Landroid/widget/ScrollView;

    const v3, 0x7f0b001f

    invoke-virtual {p0, v3}, Lcom/car/voice/ui/VoiceUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/car/voice/ui/VolumeView;

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    iget-boolean v4, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWidescreen:Z

    invoke-virtual {v3, v4}, Lcom/car/voice/ui/VolumeView;->setWideScreen(Z)V

    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lcom/car/voice/ui/VoiceUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    invoke-virtual {v3, v0}, Lcom/car/voice/ui/VolumeView;->setImageView(Landroid/widget/ImageView;)V

    new-instance v3, Lcom/car/voice/ui/VoiceUIActivity$1;

    invoke-direct {v3, p0}, Lcom/car/voice/ui/VoiceUIActivity$1;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/car/voice/ui/VoiceUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mEmptyView:Landroid/view/View;

    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lcom/car/voice/ui/VoiceUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHelpView:Landroid/view/View;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHelpView:Landroid/view/View;

    new-instance v4, Lcom/car/voice/ui/VoiceUIActivity$2;

    invoke-direct {v4, p0}, Lcom/car/voice/ui/VoiceUIActivity$2;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mCommandTips:[Ljava/lang/String;

    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mRandom:Ljava/util/Random;

    invoke-static {}, Lcom/car/voice/ui/VoiceUIImpl;->instance()Lcom/car/voice/ui/VoiceUIImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/voice/ui/VoiceUIImpl;->getVoiceUICallback()Lcom/car/voice/VoiceUICallback;

    move-result-object v3

    sput-object v3, Lcom/car/voice/ui/VoiceUIActivity;->mCallback:Lcom/car/voice/VoiceUICallback;

    return-void

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWidescreen:Z

    goto/16 :goto_0

    :cond_1
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/car/voice/ui/VoiceUIActivity;->setContentView(I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "CarSvc_VoiceUIActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mItems:Ljava/util/List;

    return-void
.end method

.method public onEngineError(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setTipString(Ljava/lang/String;)V

    return-void
.end method

.method public onEngineStopped()V
    .locals 0

    return-void
.end method

.method public onNaviLocation(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51c6\u5907\u5bfc\u822a\u5230:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/voice/ui/VoiceUIActivity;->setTipString(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "CarSvc_VoiceUIActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/car/voice/ui/VoiceUIActivity;->mShowing:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput v2, p0, Lcom/car/voice/ui/VoiceUIActivity;->mHeight:I

    sget-object v0, Lcom/car/voice/ui/VoiceUIActivity;->mCallback:Lcom/car/voice/VoiceUICallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/voice/ui/VoiceUIActivity;->mCallback:Lcom/car/voice/VoiceUICallback;

    invoke-interface {v0}, Lcom/car/voice/VoiceUICallback;->onVoiceUIDismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceUIActivity;->finish()V

    const/4 v0, 0x0

    sput-object v0, Lcom/car/voice/ui/VoiceUIActivity;->sIns:Lcom/car/voice/ui/VoiceUIActivity;

    return-void
.end method

.method public onRecognizeError(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setTipString(Ljava/lang/String;)V

    return-void
.end method

.method public onRecognizeString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setVoiceString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "CarSvc_VoiceUIActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/car/voice/ui/VoiceUIActivity;->sIns:Lcom/car/voice/ui/VoiceUIActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/car/voice/ui/VoiceUIActivity;->mShowing:Ljava/lang/Boolean;

    sget-object v0, Lcom/car/voice/ui/VoiceUIActivity;->mCallback:Lcom/car/voice/VoiceUICallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/voice/ui/VoiceUIActivity;->mCallback:Lcom/car/voice/VoiceUICallback;

    invoke-interface {v0}, Lcom/car/voice/VoiceUICallback;->onVoiceUIShow()V

    :cond_0
    return-void
.end method

.method public onShowCommandTip()V
    .locals 0

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->showCommandTips()V

    return-void
.end method

.method public onShowPhoneCallIncoming(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->clear()V

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/car/voice/ui/VoiceUIActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0b0007

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const v5, 0x7f0b0008

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v5, Lcom/car/voice/ui/VoiceUIActivity$3;

    invoke-direct {v5, p0}, Lcom/car/voice/ui/VoiceUIActivity$3;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b0009

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Lcom/car/voice/ui/VoiceUIActivity$4;

    invoke-direct {v5, p0}, Lcom/car/voice/ui/VoiceUIActivity$4;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lcom/car/voice/ui/VoiceUIActivity;->addView(Landroid/view/View;IZ)V

    return-void
.end method

.method public onSpeech(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setSpeeching(Z)V

    return-void
.end method

.method public onSuggestionResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setChooseList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onTipString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setTipString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVolumeUpdate(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceUIActivity;->setVolume(I)V

    return-void
.end method

.method public prepareUI(ILjava/lang/String;)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v7, 0x1

    iput p1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mRecType:I

    sget-object v8, Lcom/car/voice/ui/VoiceUIActivity;->mShowing:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "CarSvc_VoiceUIActivity"

    const-string v9, "prepareUI, clear"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/car/voice/ui/VoiceUIActivity;->mShowing:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->clear()V

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceUIActivity;->showCommandTips()V

    :cond_0
    if-eqz p2, :cond_2

    if-ge p1, v10, :cond_2

    const-string v8, ","

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    array-length v6, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v3, v0, v1

    new-instance v2, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v2}, Lcom/car/common/voice/SuggestItem;-><init>()V

    iput-object v3, v2, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/car/voice/ui/VoiceUIActivity;->setChooseList(Ljava/util/List;)V

    :cond_2
    :goto_1
    return v7

    :cond_3
    const-string v7, "CarSvc_VoiceUIActivity"

    const-string v8, "prepareUI, not clear"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    if-ge p1, v10, :cond_5

    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    array-length v6, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_4

    aget-object v3, v0, v1

    new-instance v2, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v2}, Lcom/car/common/voice/SuggestItem;-><init>()V

    iput-object v3, v2, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v4}, Lcom/car/voice/ui/VoiceUIActivity;->setChooseList(Ljava/util/List;)V

    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/car/voice/VoiceUICallback;)V
    .locals 0

    return-void
.end method

.method public setPhoneCallIncoming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/voice/ui/VoiceUIActivity;->mPhoneIncoming:Z

    return-void
.end method

.method public setProcess(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceUIActivity;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VolumeView;->setProcess(Z)V

    :cond_0
    return-void
.end method

.method public setRemoteVoice(Lcom/car/voice/remote/RemoteVoice;)V
    .locals 0

    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v3, 0x7f0b0022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/voice/ui/VoiceUIActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/car/voice/ui/VoiceUIActivity$MyWebChromeClient;

    invoke-direct {v4, p0}, Lcom/car/voice/ui/VoiceUIActivity$MyWebChromeClient;-><init>(Lcom/car/voice/ui/VoiceUIActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0, v2, v6}, Lcom/car/voice/ui/VoiceUIActivity;->addView(Landroid/view/View;Z)V

    return-void
.end method

.method public showUnSpeech()V
    .locals 1

    const-string v0, "\u4f60\u597d\u50cf\u6ca1\u6709\u8bf4\u8bdd\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    invoke-direct {p0, v0}, Lcom/car/voice/ui/VoiceUIActivity;->setTipString(Ljava/lang/String;)V

    return-void
.end method

.method public showUnknownAction()V
    .locals 1

    const-string v0, "\u672a\u8bc6\u522b\u7684\u547d\u4ee4\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    invoke-direct {p0, v0}, Lcom/car/voice/ui/VoiceUIActivity;->setTipString(Ljava/lang/String;)V

    return-void
.end method
