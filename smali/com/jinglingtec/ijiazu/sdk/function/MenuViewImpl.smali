.class public Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;
.super Ljava/lang/Object;
.source "MenuViewImpl.java"

# interfaces
.implements Lcom/jinglingtec/ijiazu/sdk/api/MenuView;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final animationSpan:I

.field private currentIndex:I

.field private downAnimation:Landroid/view/animation/TranslateAnimation;

.field private downAnimationAfter:Landroid/view/animation/TranslateAnimation;

.field private isActivityResumed:Z

.field private isShowing:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFloatView:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mTextView:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private menuViewClickListener:Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;

.field private menuViewItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private touchDownX:I

.field private touchDownY:I

.field private touchUpX:I

.field private touchUpY:I

.field private upAnimation:Landroid/view/animation/TranslateAnimation;

.field private upAnimationAfter:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 11

    const/high16 v10, -0x41000000    # -0.5f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[yyn]MenuView"

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->TAG:Ljava/lang/String;

    const/16 v0, 0x96

    iput v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->animationSpan:I

    iput-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewClickListener:Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;

    iput-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    iput-object v4, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    iput v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    iput-boolean v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isShowing:Z

    iput-boolean v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityResumed:Z

    iput v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownX:I

    iput v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpX:I

    iput v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownY:I

    iput v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpY:I

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f000000    # 0.5f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->upAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v10

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->upAnimationAfter:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->downAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->downAnimationAfter:Landroid/view/animation/TranslateAnimation;

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->createView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->buildLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->clearData()V

    return-void
.end method

.method static synthetic access$1102(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;I)I
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownX:I

    return p1
.end method

.method static synthetic access$1202(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;I)I
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownY:I

    return p1
.end method

.method static synthetic access$1302(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;I)I
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpX:I

    return p1
.end method

.method static synthetic access$1402(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;I)I
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpY:I

    return p1
.end method

.method static synthetic access$1500(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchActionCheck()V

    return-void
.end method

.method static synthetic access$200(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->measure()V

    return-void
.end method

.method static synthetic access$400(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->showData(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isShowing:Z

    return v0
.end method

.method static synthetic access$502(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->upKeyClicked()V

    return-void
.end method

.method static synthetic access$700(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->downKeyClicked()V

    return-void
.end method

.method static synthetic access$800(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mFloatView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private beginAnimation(Z)V
    .locals 6

    const-wide/16 v4, 0x96

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->upAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->upAnimationAfter:Landroid/view/animation/TranslateAnimation;

    :goto_0
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mFloatView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mFloatView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;

    invoke-direct {v3, p0, v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$6;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$7;

    invoke-direct {v3, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$7;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->downAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->downAnimationAfter:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method

.method private beginClickAnimation()V
    .locals 0

    return-void
.end method

.method private buildLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "[yyn]MenuView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWindowManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x57

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method private clearData()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private createView()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, -0x222223

    const v1, -0x9090a

    const-string v4, "assets/ijiazu_sdk/layout/ijiazu_menu_view.xml"

    const-string v3, "res/drawable-hdpi-v4/flow_menu_down.png"

    const-string v2, "res/drawable-hdpi-v4/flow_menu_down_press.png"

    const-string v6, "res/drawable-hdpi-v4/flow_menu_up.png"

    const-string v5, "res/drawable-hdpi-v4/flow_menu_up_press.png"

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    const-string v11, "assets/ijiazu_sdk/layout/ijiazu_menu_view.xml"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->extractView(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    invoke-static {v10, v11}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->viewCheck(Landroid/content/Context;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    const-string v11, "menu_view_content"

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mFloatView:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mFloatView:Landroid/widget/RelativeLayout;

    const v11, -0x222223

    invoke-static {v11}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->extractDrawableFromColor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const v12, -0x9090a

    invoke-static {v12}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->extractDrawableFromColor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mFloatView:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$8;

    invoke-direct {v11, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$8;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    const-string v11, "menu_view_up"

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    const-string v11, "res/drawable-hdpi-v4/flow_menu_up_press.png"

    invoke-static {v10, v11}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->extractMenuDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    const-string v12, "res/drawable-hdpi-v4/flow_menu_up.png"

    invoke-static {v11, v12}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->extractMenuDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$9;

    invoke-direct {v10, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$9;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    const-string v11, "menu_view_down"

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    const-string v11, "res/drawable-hdpi-v4/flow_menu_down_press.png"

    invoke-static {v10, v11}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->extractMenuDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    const-string v12, "res/drawable-hdpi-v4/flow_menu_down.png"

    invoke-static {v11, v12}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->extractMenuDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$10;

    invoke-direct {v10, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$10;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    const-string v11, "menu_view_right"

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    new-instance v10, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$11;

    invoke-direct {v10, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$11;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    const-string v11, "menu_view_content_text"

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    const-string v11, "menu_view_content_img"

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mFloatView:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$12;

    invoke-direct {v11, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$12;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method private downKeyClicked()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->beginAnimation(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    goto :goto_1
.end method

.method private isActivityAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measure()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    return-void
.end method

.method private playFunction()V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->playKeySound(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private showData(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "[yyn]MenuView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->playFunction()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mImageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private touchActionCheck()V
    .locals 4

    const/16 v3, 0xc8

    const/4 v2, 0x0

    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownY:I

    iget v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpY:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownX:I

    iget v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_1

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->downKeyClicked()V

    :cond_0
    :goto_0
    iput v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownX:I

    iput v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownY:I

    iput v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpX:I

    iput v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpY:I

    return-void

    :cond_1
    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownY:I

    iget v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpY:I

    sub-int/2addr v0, v1

    const/16 v1, -0x64

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchDownX:I

    iget v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->touchUpX:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->upKeyClicked()V

    goto :goto_0
.end method

.method private upKeyClicked()V
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->beginAnimation(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    goto :goto_1
.end method


# virtual methods
.method public addMenuItem([Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;)I
    .locals 7

    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    move-object v0, p1

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v2, v0, v1

    iget v5, v2, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->itemID:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_3

    iget v5, v2, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->itemID:I

    const/16 v6, 0x1999

    if-gt v5, v6, :cond_3

    iget-object v5, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->setCurrentView(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->isDeviceConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->showMenuView()V

    goto :goto_0
.end method

.method protected dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isShowing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$2;

    invoke-direct {v1, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$2;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isShowing:Z

    return v0
.end method

.method protected menuViewOnClicked()V
    .locals 3

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->beginClickAnimation()V

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewClickListener:Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewClickListener:Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;

    iget v2, v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->itemID:I

    invoke-interface {v1, v2}, Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;->onClick(I)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->dismiss()V

    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;

    iget-object v2, v1, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v3, v1, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getCurrentView()Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getCurrentView()Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->setCurrentView(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    :cond_2
    iput-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    iput-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mTextView:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mImageView:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mFloatView:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mLayout:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method protected onDownKeyClicked()V
    .locals 2

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$4;

    invoke-direct {v1, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$4;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onLeftKeyClicked()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityResumed:Z

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    move-result-object v0

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->setForeground(Ljava/lang/String;)V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->setCurrentView(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->isDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->showMenuView()V

    :cond_0
    return-void
.end method

.method protected onRightKeyClicked()V
    .locals 2

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;

    invoke-direct {v1, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$5;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onUpKeyClicked()V
    .locals 2

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$3;

    invoke-direct {v1, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$3;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewClickListener:Lcom/jinglingtec/ijiazu/sdk/api/MenuView$OnClickListener;

    return-void
.end method

.method public setCurrentItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->text:Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    iput-object p2, v0, Lcom/jinglingtec/ijiazu/sdk/api/MenuViewItem;->icon:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v1, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->currentIndex:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->showData(Z)V

    goto :goto_0
.end method

.method protected setRight()V
    .locals 0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->beginClickAnimation()V

    return-void
.end method

.method protected showMenuView()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityResumed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isActivityAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->menuViewItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;

    invoke-direct {v1, p0}, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl$1;-><init>(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;->isShowing:Z

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;

    move-result-object v0

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/SdkUtil;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jinglingtec/ijiazu/sdk/function/IjiazuController;->setForeground(Ljava/lang/String;)V

    invoke-static {}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->getInstance()Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jinglingtec/ijiazu/sdk/function/KeyActionCenter;->setCurrentView(Lcom/jinglingtec/ijiazu/sdk/function/MenuViewImpl;)V

    goto :goto_0
.end method
