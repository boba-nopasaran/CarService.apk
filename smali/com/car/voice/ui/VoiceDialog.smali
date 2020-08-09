.class public Lcom/car/voice/ui/VoiceDialog;
.super Landroid/app/Dialog;
.source "VoiceDialog.java"

# interfaces
.implements Lcom/car/voice/VoiceUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/voice/ui/VoiceDialog$MyWebChromeClient;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_VOICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarSvc_VoiceDialog"

.field private static final VOICE_RES:[I


# instance fields
.field private mCallback:Lcom/car/voice/VoiceUICallback;

.field private mClearID:I

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHelpView:Landroid/view/View;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mPhoneIncoming:Z

.field mProgressBar:Landroid/widget/ProgressBar;

.field private mRecType:I

.field mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSpeeching:Z

.field private mUIContext:Landroid/content/Context;

.field private mVoiceResIndex:I

.field private mVolumeView:Lcom/car/voice/ui/VolumeView;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/car/voice/ui/VoiceDialog;->VOICE_RES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020027
        0x7f020028
        0x7f020029
        0x7f02002a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v0, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    iput v0, p0, Lcom/car/voice/ui/VoiceDialog;->mVoiceResIndex:I

    iput v0, p0, Lcom/car/voice/ui/VoiceDialog;->mClearID:I

    iput-boolean v0, p0, Lcom/car/voice/ui/VoiceDialog;->mPhoneIncoming:Z

    new-instance v0, Lcom/car/voice/ui/VoiceDialog$9;

    invoke-direct {v0, p0}, Lcom/car/voice/ui/VoiceDialog$9;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    iput-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog;->mUIContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/car/voice/ui/VoiceDialog;)Lcom/car/voice/VoiceUICallback;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mCallback:Lcom/car/voice/VoiceUICallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/voice/ui/VoiceDialog;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/voice/ui/VoiceDialog;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/car/voice/ui/VoiceDialog;I)I
    .locals 0

    iput p1, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/car/voice/ui/VoiceDialog;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/ui/VoiceDialog;->mClearID:I

    return v0
.end method

.method static synthetic access$400(Lcom/car/voice/ui/VoiceDialog;)I
    .locals 1

    iget v0, p0, Lcom/car/voice/ui/VoiceDialog;->mRecType:I

    return v0
.end method

.method static synthetic access$500(Lcom/car/voice/ui/VoiceDialog;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/voice/ui/VoiceDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceDialog;->containEmptyView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/car/voice/ui/VoiceDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/voice/ui/VoiceDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceDialog;->flipScrollView()V

    return-void
.end method

.method private addView(Landroid/view/View;IZ)V
    .locals 5

    const/4 v4, -0x1

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    :cond_0
    iget v2, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceDialog;->containEmptyView()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/car/voice/ui/VoiceDialog;->flipScrollView()V

    return-void
.end method

.method private addView(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    :cond_0
    invoke-direct {p0}, Lcom/car/voice/ui/VoiceDialog;->containEmptyView()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/voice/ui/VoiceDialog$7;

    invoke-direct {v2, p0, p1}, Lcom/car/voice/ui/VoiceDialog$7;-><init>(Lcom/car/voice/ui/VoiceDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private clear()V
    .locals 2

    const-string v0, "CarSvc_VoiceDialog"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/car/voice/ui/VoiceDialog;->mClearID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/voice/ui/VoiceDialog;->mClearID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/voice/ui/VoiceDialog;->mHeight:I

    return-void
.end method

.method private containEmptyView()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mEmptyView:Landroid/view/View;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private flipScrollView()V
    .locals 2

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/voice/ui/VoiceDialog$8;

    invoke-direct {v1, p0}, Lcom/car/voice/ui/VoiceDialog$8;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setChooseList(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/common/voice/SuggestItem;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/common/voice/SuggestItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/car/common/voice/SuggestItem;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020026

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setBackgroundResource(I)V

    const/16 v7, 0x3c

    const/16 v8, 0x28

    invoke-virtual {v6, v7, v11, v8, v11}, Landroid/widget/ListView;->setPadding(IIII)V

    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x7f030000

    invoke-direct {v7, v8, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v7, Lcom/car/voice/ui/VoiceDialog$6;

    invoke-direct {v7, p0}, Lcom/car/voice/ui/VoiceDialog$6;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f080000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float v7, v4, v10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v10

    float-to-int v7, v7

    invoke-direct {p0, v6, v7, v11}, Lcom/car/voice/ui/VoiceDialog;->addView(Landroid/view/View;IZ)V

    return-void
.end method

.method private setSpeeching(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/car/voice/ui/VoiceDialog;->mSpeeching:Z

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    iget-boolean v1, p0, Lcom/car/voice/ui/VoiceDialog;->mSpeeching:Z

    invoke-virtual {v0, v1}, Lcom/car/voice/ui/VolumeView;->setSpeeching(Z)V

    return-void
.end method

.method private setTipString(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

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

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2, v6}, Lcom/car/voice/ui/VoiceDialog;->addView(Landroid/view/View;Z)V

    return-void
.end method

.method private setVoiceString(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

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

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2, v6}, Lcom/car/voice/ui/VoiceDialog;->addView(Landroid/view/View;Z)V

    return-void
.end method

.method private setVolume(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VolumeView;->setVolume(I)V

    :cond_0
    return-void
.end method

.method private showHelpMessage()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dismissUI()V
    .locals 1

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->dismiss()V

    :cond_0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUIContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mUIContext:Landroid/content/Context;

    return-object v0
.end method

.method public isPhoneCallIncoming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/voice/ui/VoiceDialog;->mPhoneIncoming:Z

    return v0
.end method

.method public isUIShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClear()V
    .locals 1

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceDialog;->clear()V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u95ee\u6709\u4ec0\u4e48\u9700\u8981\u5e2e\u52a9"

    invoke-direct {p0, v0}, Lcom/car/voice/ui/VoiceDialog;->setTipString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/high16 v3, 0x1000000

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/car/voice/ui/VoiceDialog;->setContentView(I)V

    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/car/voice/ui/VoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/car/voice/ui/VoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/car/voice/ui/VolumeView;

    iput-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/car/voice/ui/VoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    invoke-virtual {v1, v0}, Lcom/car/voice/ui/VolumeView;->setImageView(Landroid/widget/ImageView;)V

    new-instance v1, Lcom/car/voice/ui/VoiceDialog$1;

    invoke-direct {v1, p0}, Lcom/car/voice/ui/VoiceDialog$1;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/car/voice/ui/VoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0b001e

    invoke-virtual {p0, v1}, Lcom/car/voice/ui/VoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mHelpView:Landroid/view/View;

    iget-object v1, p0, Lcom/car/voice/ui/VoiceDialog;->mHelpView:Landroid/view/View;

    new-instance v2, Lcom/car/voice/ui/VoiceDialog$2;

    invoke-direct {v2, p0}, Lcom/car/voice/ui/VoiceDialog$2;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/car/voice/ui/VoiceDialog$3;

    invoke-direct {v1, p0}, Lcom/car/voice/ui/VoiceDialog$3;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    invoke-virtual {p0, v1}, Lcom/car/voice/ui/VoiceDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public onEngineError(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceDialog;->setTipString(Ljava/lang/String;)V

    return-void
.end method

.method public onEngineStopped()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "CarSvc_VoiceDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown:keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CarSvc_VoiceDialog"

    const-string v1, "Key Down Home,Dismiss VoiceDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
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

    invoke-direct {p0, v0}, Lcom/car/voice/ui/VoiceDialog;->setTipString(Ljava/lang/String;)V

    return-void
.end method

.method public onRecognizeError(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceDialog;->setTipString(Ljava/lang/String;)V

    return-void
.end method

.method public onRecognizeString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceDialog;->setVoiceString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShowCommandTip()V
    .locals 0

    return-void
.end method

.method public onShowPhoneCallIncoming(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceDialog;->clear()V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    new-instance v5, Lcom/car/voice/ui/VoiceDialog$4;

    invoke-direct {v5, p0}, Lcom/car/voice/ui/VoiceDialog$4;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b0009

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Lcom/car/voice/ui/VoiceDialog$5;

    invoke-direct {v5, p0}, Lcom/car/voice/ui/VoiceDialog$5;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x12c

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lcom/car/voice/ui/VoiceDialog;->addView(Landroid/view/View;IZ)V

    return-void
.end method

.method public onSpeech(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceDialog;->setSpeeching(Z)V

    return-void
.end method

.method public onSuggestionResult(Ljava/util/List;)V
    .locals 1
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

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceDialog;->setChooseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/RemoteVoice;->sendSuggestionResult(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onTipString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/car/voice/ui/VoiceDialog;->setUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    invoke-virtual {v0, p1}, Lcom/car/voice/remote/RemoteVoice;->sendTips(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceDialog;->setTipString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVolumeUpdate(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/voice/ui/VoiceDialog;->setVolume(I)V

    return-void
.end method

.method public prepareUI(ILjava/lang/String;)Z
    .locals 9

    const/4 v8, 0x4

    iput p1, p0, Lcom/car/voice/ui/VoiceDialog;->mRecType:I

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/car/voice/ui/VoiceDialog;->clear()V

    invoke-virtual {p0}, Lcom/car/voice/ui/VoiceDialog;->show()V

    iget-object v7, p0, Lcom/car/voice/ui/VoiceDialog;->mCallback:Lcom/car/voice/VoiceUICallback;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/voice/ui/VoiceDialog;->mCallback:Lcom/car/voice/VoiceUICallback;

    invoke-interface {v7}, Lcom/car/voice/VoiceUICallback;->onVoiceUIShow()V

    :cond_0
    const/4 v7, 0x3

    if-eq p1, v7, :cond_1

    if-nez p2, :cond_1

    const-string v7, "\u8bf7\u95ee\u6709\u4ec0\u4e48\u9700\u8981\u5e2e\u52a9"

    invoke-direct {p0, v7}, Lcom/car/voice/ui/VoiceDialog;->setTipString(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_3

    if-ge p1, v8, :cond_3

    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    array-length v6, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v3, v0, v1

    new-instance v2, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v2}, Lcom/car/common/voice/SuggestItem;-><init>()V

    iput-object v3, v2, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/car/voice/ui/VoiceDialog;->setChooseList(Ljava/util/List;)V

    :cond_3
    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_4
    if-eqz p2, :cond_6

    if-ge p1, v8, :cond_6

    const-string v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    array-length v6, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_5

    aget-object v3, v0, v1

    new-instance v2, Lcom/car/common/voice/SuggestItem;

    invoke-direct {v2}, Lcom/car/common/voice/SuggestItem;-><init>()V

    iput-object v3, v2, Lcom/car/common/voice/SuggestItem;->title:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v4}, Lcom/car/voice/ui/VoiceDialog;->setChooseList(Ljava/util/List;)V

    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/car/voice/VoiceUICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog;->mCallback:Lcom/car/voice/VoiceUICallback;

    return-void
.end method

.method public setPhoneCallIncoming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/voice/ui/VoiceDialog;->mPhoneIncoming:Z

    return-void
.end method

.method public setProcess(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/voice/ui/VoiceDialog;->mVolumeView:Lcom/car/voice/ui/VolumeView;

    invoke-virtual {v0, p1}, Lcom/car/voice/ui/VolumeView;->setProcess(Z)V

    :cond_0
    return-void
.end method

.method public setRemoteVoice(Lcom/car/voice/remote/RemoteVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/ui/VoiceDialog;->mRemoteVoice:Lcom/car/voice/remote/RemoteVoice;

    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v3, 0x7f0b0022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/voice/ui/VoiceDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/car/voice/ui/VoiceDialog$MyWebChromeClient;

    invoke-direct {v4, p0}, Lcom/car/voice/ui/VoiceDialog$MyWebChromeClient;-><init>(Lcom/car/voice/ui/VoiceDialog;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0, v2, v6}, Lcom/car/voice/ui/VoiceDialog;->addView(Landroid/view/View;Z)V

    return-void
.end method

.method public showUnSpeech()V
    .locals 1

    const-string v0, "\u4f60\u597d\u50cf\u6ca1\u6709\u8bf4\u8bdd\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    invoke-direct {p0, v0}, Lcom/car/voice/ui/VoiceDialog;->setTipString(Ljava/lang/String;)V

    return-void
.end method

.method public showUnknownAction()V
    .locals 1

    const-string v0, "\u672a\u8bc6\u522b\u7684\u547d\u4ee4\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb"

    invoke-direct {p0, v0}, Lcom/car/voice/ui/VoiceDialog;->setTipString(Ljava/lang/String;)V

    return-void
.end method
