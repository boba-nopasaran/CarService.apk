.class public Lcom/amap/api/col/cy;
.super Ljava/lang/Object;
.source "AMapNaviViewCore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/amap/api/maps/AMap$OnCameraChangeListener;
.implements Lcom/amap/api/maps/AMap$OnMapLoadedListener;
.implements Lcom/amap/api/maps/AMap$OnMapTouchListener;
.implements Lcom/amap/api/navi/IAMapNaviView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/cy$a;
    }
.end annotation


# static fields
.field private static M:I

.field private static N:I


# instance fields
.field A:Lcom/amap/api/navi/view/OverviewButtonView;

.field B:Lcom/amap/api/navi/view/DriveWayView;

.field C:Landroid/widget/RelativeLayout;

.field D:Landroid/widget/RelativeLayout;

.field E:I

.field F:I

.field G:Z

.field H:I

.field I:I

.field J:Z

.field K:Z

.field L:Z

.field private O:Z

.field private P:D

.field private Q:D

.field private R:I

.field private S:I

.field private T:Lcom/amap/api/navi/AMapNaviViewOptions;

.field private U:Lcom/amap/api/maps/MapView;

.field private V:Lcom/amap/api/navi/INavi;

.field private W:Lcom/amap/api/col/di;

.field private X:Lcom/amap/api/maps/AMap;

.field private Y:Lcom/amap/api/col/cy$a;

.field private Z:J

.field a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

.field private aa:Z

.field private ab:I

.field private ac:Lcom/amap/api/navi/AMapNaviViewListener;

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:I

.field private ah:Lcom/amap/api/navi/view/DriveWayView;

.field private ai:Lcom/amap/api/navi/view/ZoomInIntersectionView;

.field private aj:Lcom/amap/api/navi/view/TrafficBarView;

.field private ak:Lcom/amap/api/navi/view/DirectionView;

.field private al:Lcom/amap/api/navi/view/TrafficButtonView;

.field private am:Lcom/amap/api/navi/view/NextTurnTipView;

.field private an:Lcom/amap/api/navi/view/ZoomButtonView;

.field private ao:Lcom/amap/api/navi/AMapNaviView;

.field private ap:Landroid/view/View$OnClickListener;

.field private aq:Landroid/content/Context;

.field private ar:Lcom/amap/api/navi/view/ZoomButtonView;

.field private as:Lcom/amap/api/navi/view/OverviewButtonView;

.field private at:Landroid/view/View$OnClickListener;

.field private au:Landroid/view/View$OnClickListener;

.field private av:Lcom/amap/api/maps/model/CrossOverlay;

.field private aw:Z

.field b:Landroid/view/View;

.field c:Lcom/amap/api/navi/view/NextTurnTipView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/FrameLayout;

.field h:Landroid/widget/FrameLayout;

.field i:Landroid/widget/LinearLayout;

.field j:Landroid/widget/LinearLayout;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/FrameLayout;

.field m:Landroid/widget/LinearLayout;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Lcom/amap/api/navi/view/TrafficBarView;

.field q:Lcom/amap/api/navi/view/DirectionView;

.field r:Lcom/amap/api/navi/view/TrafficButtonView;

.field s:Landroid/graphics/drawable/Drawable;

.field t:Landroid/graphics/drawable/Drawable;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/ImageView;

.field x:Landroid/widget/ImageView;

.field y:Landroid/widget/ImageView;

.field z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/amap/api/col/cy;->M:I

    const/16 v0, 0x1f4

    sput v0, Lcom/amap/api/col/cy;->N:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/navi/AMapNaviView;Lcom/amap/api/navi/AMapNaviViewOptions;)V
    .locals 7

    const/4 v6, 0x0

    const v1, 0x7fffffff

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/amap/api/col/cy;->E:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/amap/api/col/cy;->F:I

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->G:Z

    iput v2, p0, Lcom/amap/api/col/cy;->H:I

    iput v2, p0, Lcom/amap/api/col/cy;->I:I

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->J:Z

    iput-boolean v3, p0, Lcom/amap/api/col/cy;->K:Z

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->L:Z

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->O:Z

    iput-wide v4, p0, Lcom/amap/api/col/cy;->P:D

    iput-wide v4, p0, Lcom/amap/api/col/cy;->Q:D

    iput v1, p0, Lcom/amap/api/col/cy;->R:I

    iput v1, p0, Lcom/amap/api/col/cy;->S:I

    iput-object v6, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/amap/api/col/cy;->Z:J

    iput-boolean v3, p0, Lcom/amap/api/col/cy;->aa:Z

    iput v2, p0, Lcom/amap/api/col/cy;->ab:I

    iput-boolean v3, p0, Lcom/amap/api/col/cy;->ad:Z

    iput-boolean v3, p0, Lcom/amap/api/col/cy;->ae:Z

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->af:Z

    iput v2, p0, Lcom/amap/api/col/cy;->ag:I

    new-instance v0, Lcom/amap/api/col/cy$1;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cy$1;-><init>(Lcom/amap/api/col/cy;)V

    iput-object v0, p0, Lcom/amap/api/col/cy;->ap:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/amap/api/col/cy$3;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cy$3;-><init>(Lcom/amap/api/col/cy;)V

    iput-object v0, p0, Lcom/amap/api/col/cy;->at:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/amap/api/col/cy$4;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cy$4;-><init>(Lcom/amap/api/col/cy;)V

    iput-object v0, p0, Lcom/amap/api/col/cy;->au:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->aw:Z

    iput-object p2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    iput-object p1, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {p1}, Lcom/amap/api/navi/AMapNaviView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    return-void
.end method

.method private a(F)I
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez v0, :cond_1

    float-to-int v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 0

    sput p1, Lcom/amap/api/col/cy;->M:I

    return-void
.end method

.method private a(IIII)V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->K:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/amap/api/col/cy;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/amap/api/col/cy;->c(I)I

    move-result v2

    invoke-direct {p0, p3}, Lcom/amap/api/col/cy;->c(I)I

    move-result v3

    invoke-direct {p0, p4}, Lcom/amap/api/col/cy;->c(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/cy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cy;->e(Z)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->O:Z

    return v0
.end method

.method static synthetic b(Lcom/amap/api/col/cy;)Lcom/amap/api/col/di;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    return-object v0
.end method

.method private b(I)V
    .locals 0

    sput p1, Lcom/amap/api/col/cy;->N:I

    return-void
.end method

.method private b(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/cy;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/amap/api/col/cy;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/amap/api/col/cy;->c(I)I

    move-result v2

    invoke-direct {p0, p3}, Lcom/amap/api/col/cy;->c(I)I

    move-result v3

    invoke-direct {p0, p4}, Lcom/amap/api/col/cy;->c(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/amap/api/col/cy;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c(I)I
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    int-to-float v2, p1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    float-to-int p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "AMapNaviView"

    const-string v2, "dp2px(int dipValue)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    return-object v0
.end method

.method private c(Z)V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/cy;->aj:Lcom/amap/api/navi/view/TrafficBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->aj:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/TrafficBarView;->onConfigurationChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/TrafficBarView;->onConfigurationChanged(Z)V

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->J:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cy;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/cy;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x140

    invoke-direct {p0, v1}, Lcom/amap/api/col/cy;->c(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/amap/api/col/cy;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2}, Lcom/amap/api/col/cy;->d(I)V

    invoke-direct {p0, v2, v2, v3, v2}, Lcom/amap/api/col/cy;->b(IIII)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/cy;->m()V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/col/cy;->aa:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/col/cy;->a(Z)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/cy;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/amap/api/col/cy;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->d(I)V

    const/16 v0, 0x1e

    invoke-direct {p0, v2, v2, v3, v0}, Lcom/amap/api/col/cy;->b(IIII)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/cy;->m()V

    goto :goto_0
.end method

.method private d(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->K:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/amap/api/col/cy;->c(I)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/amap/api/col/cy;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cy;->r()V

    return-void
.end method

.method private d(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/cy;->K:Z

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->K:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/amap/api/col/cy;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    if-nez v0, :cond_1

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->d(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/amap/api/col/cy;->d(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    return-object v0
.end method

.method private e(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/cy;->O:Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/OverviewButtonView;->setChecked(Z)V

    return-void
.end method

.method static synthetic f(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/view/OverviewButtonView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->as:Lcom/amap/api/navi/view/OverviewButtonView;

    return-object v0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/INavi;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    return-object v0
.end method

.method private g()V
    .locals 3

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/amap/api/col/cy;->E:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/amap/api/col/cy;->F:I

    return-void
.end method

.method static synthetic h(Lcom/amap/api/col/cy;)Lcom/amap/api/col/cy$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    return-object v0
.end method

.method private h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    iget-object v1, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-interface {v0, v1}, Lcom/amap/api/navi/INavi;->addAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->c:Lcom/amap/api/navi/view/NextTurnTipView;

    invoke-virtual {v0, p0}, Lcom/amap/api/navi/view/NextTurnTipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0, p0}, Lcom/amap/api/navi/view/DirectionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "initListener()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/navi/view/TrafficBarView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/navi/view/TrafficBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    const v1, 0x4709001a

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/AMapNaviView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/view/ZoomInIntersectionView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/view/DirectionView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x4709000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x4709001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/view/DriveWayView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DriveWayView;->setAMapNaviView(Lcom/amap/api/navi/AMapNaviView;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/view/NextTurnTipView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->c:Lcom/amap/api/navi/view/NextTurnTipView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x4709002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->x:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->y:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x4709002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->z:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->w:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->l:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090020    # 35072.125f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/view/TrafficButtonView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->at:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x4709001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/view/OverviewButtonView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->ap:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/OverviewButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cy;->s:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cy;->t:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x4709001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->C:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x4709001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amap/api/col/cy;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x4709001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/view/ZoomButtonView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->an:Lcom/amap/api/navi/view/ZoomButtonView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->an:Lcom/amap/api/navi/view/ZoomButtonView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomButtonView;->getZoomInBtn()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/cy$5;

    invoke-direct {v1, p0}, Lcom/amap/api/col/cy$5;-><init>(Lcom/amap/api/col/cy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->an:Lcom/amap/api/navi/view/ZoomButtonView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomButtonView;->getZoomOutBtn()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/cy$6;

    invoke-direct {v1, p0}, Lcom/amap/api/col/cy$6;-><init>(Lcom/amap/api/col/cy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "findView()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/amap/api/col/cy;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cy;->q()V

    return-void
.end method

.method private j()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->recycleResource()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->ai:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->ai:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->ai:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->recycleResource()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DriveWayView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/DriveWayView;->recycleResource()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/cy;->ah:Lcom/amap/api/navi/view/DriveWayView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cy;->ah:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DriveWayView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->ah:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/DriveWayView;->recycleResource()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DirectionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/DirectionView;->recycleResource()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/cy;->ak:Lcom/amap/api/navi/view/DirectionView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/cy;->ak:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DirectionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->ak:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/DirectionView;->recycleResource()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/TrafficBarView;->recycleResource()V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/cy;->aj:Lcom/amap/api/navi/view/TrafficBarView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/cy;->aj:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->aj:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/TrafficBarView;->recycleResource()V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/cy;->c:Lcom/amap/api/navi/view/NextTurnTipView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/cy;->c:Lcom/amap/api/navi/view/NextTurnTipView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/NextTurnTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->c:Lcom/amap/api/navi/view/NextTurnTipView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/NextTurnTipView;->recycleResource()V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/cy;->am:Lcom/amap/api/navi/view/NextTurnTipView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/cy;->am:Lcom/amap/api/navi/view/NextTurnTipView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/NextTurnTipView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->am:Lcom/amap/api/navi/view/NextTurnTipView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/NextTurnTipView;->recycleResource()V

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/TrafficButtonView;->recycleResource()V

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/cy;->al:Lcom/amap/api/navi/view/TrafficButtonView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/cy;->al:Lcom/amap/api/navi/view/TrafficButtonView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->al:Lcom/amap/api/navi/view/TrafficButtonView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/TrafficButtonView;->recycleResource()V

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/OverviewButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/OverviewButtonView;->recycleResource()V

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/cy;->as:Lcom/amap/api/navi/view/OverviewButtonView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/col/cy;->as:Lcom/amap/api/navi/view/OverviewButtonView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/OverviewButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->as:Lcom/amap/api/navi/view/OverviewButtonView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/OverviewButtonView;->recycleResource()V

    :cond_d
    iget-object v0, p0, Lcom/amap/api/col/cy;->an:Lcom/amap/api/navi/view/ZoomButtonView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/cy;->an:Lcom/amap/api/navi/view/ZoomButtonView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomButtonView;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/amap/api/col/cy;->ar:Lcom/amap/api/navi/view/ZoomButtonView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/col/cy;->ar:Lcom/amap/api/navi/view/ZoomButtonView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomButtonView;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method static synthetic j(Lcom/amap/api/col/cy;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cy;->p()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->getZoom()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/cy;->R:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->getZoom()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/cy;->R:I

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    iget v1, p0, Lcom/amap/api/col/cy;->R:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomTo(F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->getTilt()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/cy;->S:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->getTilt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/cy;->S:I

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    iget v1, p0, Lcom/amap/api/col/cy;->S:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->changeTilt(F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0}, Lcom/amap/api/col/di;->d()V

    return-void
.end method

.method private m()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/amap/api/col/cy;->M:I

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v1, v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/amap/api/col/cy;->M:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->a(F)I

    move-result v0

    invoke-direct {p0, v0, v2, v2, v2}, Lcom/amap/api/col/cy;->a(IIII)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/amap/api/col/cy;->N:I

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v1, v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v1, v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v2, v2, v2}, Lcom/amap/api/col/cy;->a(IIII)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0}, Lcom/amap/api/col/di;->e()V

    return-void
.end method

.method private p()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u9000\u51fa\u5bfc\u822a?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/amap/api/col/cy$8;

    invoke-direct {v2, p0}, Lcom/amap/api/col/cy$8;-><init>(Lcom/amap/api/col/cy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/amap/api/col/cy$7;

    invoke-direct {v2, p0}, Lcom/amap/api/col/cy$7;-><init>(Lcom/amap/api/col/cy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "showDialog()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->changeBearing(F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy$a;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    invoke-virtual {v0, v4}, Lcom/amap/api/col/cy$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    iget-wide v2, p0, Lcom/amap/api/col/cy;->Z:J

    invoke-virtual {v0, v4, v2, v3}, Lcom/amap/api/col/cy$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private r()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->isTrafficEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/amap/api/navi/view/TrafficButtonView;->setIsTrafficOpen(Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->getLazyTrafficButtonView()Lcom/amap/api/navi/view/TrafficButtonView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->getLazyTrafficButtonView()Lcom/amap/api/navi/view/TrafficButtonView;

    move-result-object v4

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/amap/api/navi/view/TrafficButtonView;->setIsTrafficOpen(Z)V

    :cond_0
    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/amap/api/col/cy;->setTrafficLine(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0}, Lcom/amap/api/col/di;->c()V

    :cond_0
    return-void
.end method

.method private t()Z
    .locals 2

    iget v0, p0, Lcom/amap/api/col/cy;->H:I

    iget-object v1, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/col/cy;->I:I

    iget-object v1, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/cy;->H:I

    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/cy;->I:I

    iget v0, p0, Lcom/amap/api/col/cy;->H:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/cy;->I:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    iget v1, p0, Lcom/amap/api/col/cy;->I:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/amap/api/col/cy;->P:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget v2, p0, Lcom/amap/api/col/cy;->H:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/amap/api/col/cy;->Q:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/AMap;->setPointToCenter(II)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0}, Lcom/amap/api/col/di;->g()V

    return-void
.end method

.method private v()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/navi/view/TrafficBarView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/navi/view/TrafficBarView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->D:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/TrafficBarView;->getDisplayingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v2}, Lcom/amap/api/navi/view/TrafficBarView;->getTmcBarBgHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    sub-int v0, v2, v0

    shr-int/lit8 v0, v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v2}, Lcom/amap/api/navi/view/TrafficBarView;->getTmcBarBgPosY()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v2}, Lcom/amap/api/navi/view/TrafficBarView;->getTmcBarBgPosX()I

    move-result v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->D:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v2}, Lcom/amap/api/navi/view/TrafficBarView;->getTmcBarBgHeight()I

    move-result v2

    sub-int v0, v2, v0

    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x8

    :try_start_0
    const-string v2, "AmapNaviCore"

    const-string v3, "checkViewOptions"

    invoke-static {v2, v3}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->getMapCenter_X()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/cy;->P:D

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->getMapCenter_Y()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/cy;->Q:D

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->isLayoutVisible()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/amap/api/col/cy;->d(Z)V

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->getLockMapDelayed()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/cy;->Z:J

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->isAutoChangeZoom()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->af:Z

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->isRealCrossDisplayShow()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->ad:Z

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->isModelCrossDisplayShow()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->ae:Z

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->isCompassEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/amap/api/navi/view/DirectionView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficBarEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficBarView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficLayerEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->getDefaultTrafficBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->getPressedTrafficBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/navi/view/TrafficButtonView;->reDrawBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficButtonView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->isRouteListButtonShow()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/OverviewButtonView;->setVisibility(I)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->getCustomMapStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapCustomEnable(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->isNaviNight()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    :goto_3
    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficLine()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/di;->d(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->getLeaderLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/di;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isAutoDrawRoute()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/di;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isLaneInfoShow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/di;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->getStartMarker()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->getEndMarker()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->getWayMarker()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v3}, Lcom/amap/api/navi/AMapNaviViewOptions;->getMonitorMarker()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v4}, Lcom/amap/api/navi/AMapNaviViewOptions;->getCarBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v5}, Lcom/amap/api/navi/AMapNaviViewOptions;->getFourCornersBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v6}, Lcom/amap/api/navi/AMapNaviViewOptions;->getRouteOverlayOptions()Lcom/amap/api/navi/model/RouteOverlayOptions;

    move-result-object v6

    iget-object v7, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v7, v0}, Lcom/amap/api/col/di;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/di;->b(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/di;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0, v3}, Lcom/amap/api/col/di;->d(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0, v4}, Lcom/amap/api/col/di;->e(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0, v5}, Lcom/amap/api/col/di;->f(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0, v6}, Lcom/amap/api/col/di;->a(Lcom/amap/api/navi/model/RouteOverlayOptions;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviSetting()Lcom/amap/api/navi/NaviSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isScreenAlwaysBright()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/NaviSetting;->setScreenAlwaysBright(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviSetting()Lcom/amap/api/navi/NaviSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficInfoUpdateEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/NaviSetting;->setTrafficInfoUpdateEnabled(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    invoke-interface {v0}, Lcom/amap/api/navi/INavi;->getNaviSetting()Lcom/amap/api/navi/NaviSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isCameraInfoUpdateEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/NaviSetting;->setCameraInfoUpdateEnabled(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForYaw()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/navi/INavi;->setReCalculateRouteForYaw(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isReCalculateRouteForTrafficJam()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/navi/INavi;->setReCalculateRouteForTrafficJam(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;->isSettingMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/cy;->x:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->z:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    invoke-direct {p0}, Lcom/amap/api/col/cy;->k()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->d:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->e:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cy;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cy;->x:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/amap/api/col/cy;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->w:Landroid/widget/ImageView;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x47020082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->z:Landroid/widget/ImageView;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x47020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->n:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->o:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    const-string v1, "#ffffff"

    const-string v2, "#ffffff"

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/di;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    iget-boolean v3, p0, Lcom/amap/api/col/cy;->aa:Z

    if-eqz v3, :cond_3

    :goto_6
    invoke-virtual {v2, v0}, Lcom/amap/api/navi/view/TrafficBarView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "checkViewOptions()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    move v0, v1

    goto :goto_6

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficButtonView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->getDefaultOverBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->getPressedOverBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/navi/view/OverviewButtonView;->reDrawBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->aa:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/OverviewButtonView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapCustomEnable(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->getCustomMapStylePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setCustomMapStylePath(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/cy;->x:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method a(Lcom/amap/api/navi/model/AMapNaviCross;)V
    .locals 13

    const/4 v12, 0x2

    const/16 v11, 0x5f

    const/16 v10, 0xff

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviCross;->getPicFormat()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviCross;->getType()I

    move-result v0

    if-eq v0, v9, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviCross;->getType()I

    move-result v0

    if-ne v0, v12, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/cy;->K:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->ad:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/cy;->m()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviView;->requestLayout()V

    iput-boolean v9, p0, Lcom/amap/api/col/cy;->L:Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0, v8}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setIntersectionBitMap(Lcom/amap/api/navi/model/AMapNaviCross;)V

    invoke-virtual {p0, v9}, Lcom/amap/api/col/cy;->b(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/cy;->ae:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviCross;->getType()I

    move-result v0

    if-ne v0, v9, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviCross;->getPicFormat()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;-><init>()V

    iput v8, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterX:I

    iput v8, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nCenterY:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMax:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stRectMin:Landroid/graphics/Rect;

    iput v8, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->nAngle:I

    invoke-direct {p0}, Lcom/amap/api/col/cy;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->getLandscapeCross()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    :goto_0
    const/16 v1, 0xd9

    invoke-static {v1, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaColor:I

    const/16 v1, 0x16

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportBorderWidth:I

    invoke-static {v10, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportBorderColor:I

    iget v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportBorderWidth:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportBorderWidth:I

    iget v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportBorderColor:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportBorderColor:I

    const/16 v1, 0x16

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowBorderWidth:I

    const/16 v1, 0x32

    const/16 v2, 0x14

    invoke-static {v8, v8, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowBorderColor:I

    const/16 v1, 0x12

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportLineWidth:I

    const/16 v1, 0x96

    const/16 v2, 0xaa

    const/16 v3, 0xc8

    invoke-static {v10, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportLineColor:I

    iget v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fImportLineWidth:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fUnImportLineWidth:I

    iget v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stImportLineColor:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportLineColor:I

    iput v12, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fDashLineWidth:I

    iget v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stUnImportBorderColor:I

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stDashLineColor:I

    const/16 v1, 0x12

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->fArrowLineWidth:I

    const/16 v1, 0xfd

    const/16 v2, 0x41

    invoke-static {v10, v10, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stArrowLineColor:I

    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->isNaviNight()Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v8, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->dayMode:Z

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "vector3d_arrow_in.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v2

    new-instance v3, Lcom/amap/api/maps/model/CrossOverlayOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/CrossOverlayOptions;-><init>()V

    invoke-virtual {v3, v0}, Lcom/amap/api/maps/model/CrossOverlayOptions;->setAttribute(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;)Lcom/amap/api/maps/model/CrossOverlayOptions;

    move-result-object v0

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/CrossOverlayOptions;->setRes(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/CrossOverlayOptions;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->addCrossOverlay(Lcom/amap/api/maps/model/CrossOverlayOptions;)Lcom/amap/api/maps/model/CrossOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cy;->av:Lcom/amap/api/maps/model/CrossOverlay;

    iget-object v0, p0, Lcom/amap/api/col/cy;->av:Lcom/amap/api/maps/model/CrossOverlay;

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviCross;->getPicBuf1()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CrossOverlay;->setData([B)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->av:Lcom/amap/api/maps/model/CrossOverlay;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CrossOverlay;->setVisible(Z)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0, v9}, Lcom/amap/api/col/cy;->b(Z)V

    :cond_3
    return-void

    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lcom/amap/api/col/cy;->c(I)I

    move-result v2

    iget v3, p0, Lcom/amap/api/col/cy;->E:I

    int-to-double v4, v3

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iget v4, p0, Lcom/amap/api/col/cy;->F:I

    invoke-direct {v1, v8, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviViewOptions;->getVerticalCross()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_6

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_6
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lcom/amap/api/col/cy;->c(I)I

    move-result v2

    iget v3, p0, Lcom/amap/api/col/cy;->E:I

    const/16 v4, 0x122

    invoke-direct {p0, v4}, Lcom/amap/api/col/cy;->c(I)I

    move-result v4

    invoke-direct {v1, v8, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->stAreaRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_7
    iput-boolean v9, v0, Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;->dayMode:Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/col/cy;->a(ZZ)V

    return-void
.end method

.method a(ZZ)V
    .locals 6

    const/16 v1, 0x8

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amap/api/col/cy;->aa:Z

    if-eq v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/amap/api/col/cy;->J:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    invoke-interface {v2, p1}, Lcom/amap/api/navi/AMapNaviViewListener;->onLockMap(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/col/cy;->G:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/cy;->C:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-boolean v2, p0, Lcom/amap/api/col/cy;->J:Z

    if-eqz v2, :cond_4

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/cy;->C:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "setCarLock(boolean isLock, boolean autoRestore)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviView;->requestLayout()V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/cy;->C:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iput-boolean p1, p0, Lcom/amap/api/col/cy;->aa:Z

    iget-object v2, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/amap/api/navi/AMapNaviViewListener;->onNaviMapMode(I)V

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amap/api/col/cy$a;->removeMessages(I)V

    if-eqz p1, :cond_9

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amap/api/col/cy;->e(Z)V

    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v2, p1}, Lcom/amap/api/col/di;->c(Z)V

    iget-object v3, p0, Lcom/amap/api/col/cy;->g:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    move v2, v1

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/amap/api/col/cy;->h:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_b

    move v2, v0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/amap/api/col/cy;->an:Lcom/amap/api/navi/view/ZoomButtonView;

    if-nez p1, :cond_c

    move v2, v0

    :goto_7
    invoke-virtual {v3, v2}, Lcom/amap/api/navi/view/ZoomButtonView;->setVisibility(I)V

    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->isRouteListButtonShow()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    if-nez p1, :cond_d

    move v2, v0

    :goto_8
    invoke-virtual {v3, v2}, Lcom/amap/api/navi/view/OverviewButtonView;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviViewOptions;->isTrafficBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    invoke-interface {v2}, Lcom/amap/api/navi/INavi;->getEngineType()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    if-eqz p1, :cond_e

    :goto_9
    invoke-virtual {v2, v0}, Lcom/amap/api/navi/view/TrafficBarView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/amap/api/navi/AMapNaviViewListener;->onNaviMapMode(I)V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/amap/api/col/cy;->n()V

    if-eqz p2, :cond_6

    iget-object v2, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/amap/api/col/cy;->Z:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/amap/api/col/cy$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_a
    move v2, v0

    goto :goto_5

    :cond_b
    move v2, v1

    goto :goto_6

    :cond_c
    move v2, v1

    goto :goto_7

    :cond_d
    move v2, v1

    goto :goto_8

    :cond_e
    move v0, v1

    goto :goto_9
.end method

.method b()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->ad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/amap/api/col/cy;->L:Z

    invoke-direct {p0}, Lcom/amap/api/col/cy;->n()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->recycleResource()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviView;->requestLayout()V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/cy;->b(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/cy;->ae:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->av:Lcom/amap/api/maps/model/CrossOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->av:Lcom/amap/api/maps/model/CrossOverlay;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CrossOverlay;->setVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/amap/api/col/cy;->b(Z)V

    :cond_1
    return-void
.end method

.method protected b(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "AmapNaviCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threadName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",checkCrossView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cy;->aw:Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    invoke-virtual {v0, v4}, Lcom/amap/api/navi/view/TrafficButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0, v4}, Lcom/amap/api/navi/view/DirectionView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/amap/api/col/cy;->aw:Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0, v3}, Lcom/amap/api/navi/view/DirectionView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    invoke-virtual {v0, v3}, Lcom/amap/api/navi/view/TrafficButtonView;->setVisibility(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cy;->J:Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->l:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0, v2}, Lcom/amap/api/navi/view/TrafficBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    invoke-virtual {v0, v2}, Lcom/amap/api/navi/view/TrafficButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    invoke-virtual {v0, v2}, Lcom/amap/api/navi/view/OverviewButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method d()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/cy;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->r:Lcom/amap/api/navi/view/TrafficButtonView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->an:Lcom/amap/api/navi/view/ZoomButtonView;

    invoke-virtual {v0, v2}, Lcom/amap/api/navi/view/ZoomButtonView;->setVisibility(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->A:Lcom/amap/api/navi/view/OverviewButtonView;

    invoke-virtual {v0, v2}, Lcom/amap/api/navi/view/OverviewButtonView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->c(Z)V

    return-void
.end method

.method public displayOverview()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->e(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/col/cy;->a(ZZ)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0}, Lcom/amap/api/col/di;->b()V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->aw:Z

    return v0
.end method

.method public getAnchorX()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/cy;->P:D

    return-wide v0
.end method

.method public getAnchorY()D
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/cy;->Q:D

    return-wide v0
.end method

.method public getLazyDirectionView()Lcom/amap/api/navi/view/DirectionView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->ak:Lcom/amap/api/navi/view/DirectionView;

    return-object v0
.end method

.method public getLazyDriveWayView()Lcom/amap/api/navi/view/DriveWayView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->ah:Lcom/amap/api/navi/view/DriveWayView;

    return-object v0
.end method

.method public getLazyNextTurnTipView()Lcom/amap/api/navi/view/NextTurnTipView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->am:Lcom/amap/api/navi/view/NextTurnTipView;

    return-object v0
.end method

.method public getLazyTrafficBarView()Lcom/amap/api/navi/view/TrafficBarView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->aj:Lcom/amap/api/navi/view/TrafficBarView;

    return-object v0
.end method

.method public getLazyTrafficButtonView()Lcom/amap/api/navi/view/TrafficButtonView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->al:Lcom/amap/api/navi/view/TrafficButtonView;

    return-object v0
.end method

.method public getLazyZoomInIntersectionView()Lcom/amap/api/navi/view/ZoomInIntersectionView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->ai:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    return-object v0
.end method

.method public getLockTilt()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cy;->S:I

    return v0
.end method

.method public getLockZoom()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cy;->R:I

    return v0
.end method

.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method public getNaviMode()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cy;->ag:I

    return v0
.end method

.method public getViewOptions()Lcom/amap/api/navi/AMapNaviViewOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    return-object v0
.end method

.method public init()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-direct {v0}, Lcom/amap/api/navi/AMapNaviViewOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/navi/AMapNavi;->getInstance(Landroid/content/Context;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    iget-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/dt;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x47030003

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/AMapNaviView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->b:Landroid/view/View;

    const v1, 0x47090010    # 35072.062f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/MapView;

    iput-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-direct {p0}, Lcom/amap/api/col/cy;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/di;

    iget-object v1, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-direct {v0, v1, v2, p0}, Lcom/amap/api/col/di;-><init>(Landroid/content/Context;Lcom/amap/api/maps/MapView;Lcom/amap/api/col/cy;)V

    iput-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/cy;->i()V

    new-instance v0, Lcom/amap/api/col/cy$a;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cy$a;-><init>(Lcom/amap/api/col/cy;)V

    iput-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "init()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAutoChangeZoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->af:Z

    return v0
.end method

.method public isOrientationLandscape()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    return v0
.end method

.method public isRouteOverviewNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->O:Z

    return v0
.end method

.method public isShowRoadEnlarge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->L:Z

    return v0
.end method

.method public isTrafficLine()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->isTrafficEnabled()Z

    move-result v0

    return v0
.end method

.method public layout(ZIIII)V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/cy;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/cy;->u()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DriveWayView;->setDefaultTopMargin(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->B:Lcom/amap/api/navi/view/DriveWayView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/DriveWayView;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->aq:Landroid/content/Context;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/amap/api/col/ds;->b(Landroid/content/Context;I)I

    move-result v4

    iget-object v0, p0, Lcom/amap/api/col/cy;->p:Lcom/amap/api/navi/view/TrafficBarView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v1}, Lcom/amap/api/navi/AMapNaviView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v2}, Lcom/amap/api/navi/AMapNaviView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/col/cy;->F:I

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->isOrientationLandscape()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/navi/view/TrafficBarView;->setTmcBarPosition(IIIIZ)V

    invoke-direct {p0}, Lcom/amap/api/col/cy;->v()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapNaviView"

    const-string v2, "onLayout(boolean changed, int left, int top, int right,\n                            int bottom)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 3

    const/high16 v2, 0x43b40000    # 360.0f

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/cy;->aw:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/cy;->getLazyDirectionView()Lcom/amap/api/navi/view/DirectionView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->getLazyDirectionView()Lcom/amap/api/navi/view/DirectionView;

    move-result-object v0

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DirectionView;->setRotate(F)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/DirectionView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    iget v1, p1, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DirectionView;->setRotate(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "onCameraChange(CameraPosition arg0)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x2

    const v0, 0x47090028

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->recoverLockMode()V

    :cond_0
    const v0, 0x4709002b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy$a;->sendEmptyMessage(I)Z

    :cond_1
    const v0, 0x47090021

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviViewListener;->onNaviBackClick()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy$a;->sendEmptyMessage(I)Z

    :cond_2
    const v0, 0x47090014

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviViewListener;->onNaviTurnClick()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/cy;->q:Lcom/amap/api/navi/view/DirectionView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/amap/api/col/cy;->q()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/cy;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviViewListener;->onNextRoadClick()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/cy;->c:Lcom/amap/api/navi/view/NextTurnTipView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/amap/api/col/cy;->ab:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/cy;->ab:I

    iget v0, p0, Lcom/amap/api/col/cy;->ab:I

    if-le v0, v2, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/cy;->ab:I

    invoke-direct {p0}, Lcom/amap/api/col/cy;->s()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "onClick(View v)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/cy;->g()V

    invoke-direct {p0}, Lcom/amap/api/col/cy;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    iget v0, p0, Lcom/amap/api/col/cy;->E:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->a(I)V

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapNaviView"

    const-string v2, "onConfigurationChanged(Configuration newConfig)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    new-instance v0, Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;-><init>()V

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyTrafficStyle;->setRatio(F)V

    const-string v1, "#CC80CD65"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSmoothColor(I)V

    const-string v1, "#F2CB7257"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyTrafficStyle;->setCongestedColor(I)V

    const-string v1, "#F2D5C247"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSlowColor(I)V

    const-string v1, "#CCA52A2A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSeriousCongestedColor(I)V

    iget-object v1, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setTrafficEnabled(Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->a()V

    invoke-direct {p0}, Lcom/amap/api/col/cy;->h()V

    invoke-direct {p0}, Lcom/amap/api/col/cy;->g()V

    iget-boolean v0, p0, Lcom/amap/api/col/cy;->G:Z

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "onCreate(Bundle bundle)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    iget-object v1, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-interface {v0, v1}, Lcom/amap/api/navi/INavi;->removeAMapNaviListener(Lcom/amap/api/navi/AMapNaviListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0}, Lcom/amap/api/col/di;->f()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onDestroy()V

    invoke-static {}, Lcom/amap/api/col/dt;->b()V

    invoke-direct {p0}, Lcom/amap/api/col/cy;->j()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->ao:Lcom/amap/api/navi/AMapNaviView;

    invoke-virtual {v0}, Lcom/amap/api/navi/AMapNaviView;->removeAllViews()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "onDestroy()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMapLoaded()V
    .locals 7

    const/4 v6, 0x5

    :try_start_0
    const-string v0, "AmapNaviViewCore-->onMapLoaded()"

    invoke-static {v0}, Lcom/amap/api/col/dw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/cy;->H:I

    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/cy;->I:I

    invoke-direct {p0}, Lcom/amap/api/col/cy;->g()V

    iget v0, p0, Lcom/amap/api/col/cy;->F:I

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->b(I)V

    iget v0, p0, Lcom/amap/api/col/cy;->E:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/amap/api/col/cy;->a(I)V

    iget v0, p0, Lcom/amap/api/col/cy;->H:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/cy;->I:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    iget v1, p0, Lcom/amap/api/col/cy;->I:I

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/amap/api/col/cy;->P:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget v2, p0, Lcom/amap/api/col/cy;->H:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/amap/api/col/cy;->Q:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/AMap;->setPointToCenter(II)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0}, Lcom/amap/api/col/di;->a()V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    iget-object v1, p0, Lcom/amap/api/col/cy;->V:Lcom/amap/api/navi/INavi;

    invoke-interface {v1}, Lcom/amap/api/navi/INavi;->getNaviPath()Lcom/amap/api/navi/model/AMapNaviPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/di;->a(Lcom/amap/api/navi/model/AMapNaviPath;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    invoke-virtual {v0, v6}, Lcom/amap/api/col/cy$a;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "onMapLoaded() "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    invoke-virtual {v0, v6}, Lcom/amap/api/col/cy$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    invoke-virtual {v1, v6}, Lcom/amap/api/col/cy$a;->sendEmptyMessage(I)Z

    throw v0
.end method

.method public final onPause()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapNaviView"

    const-string v2, "onPause()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    invoke-direct {p0}, Lcom/amap/api/col/cy;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapNaviView"

    const-string v2, "onResume()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->U:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapNaviView"

    const-string v2, "onSaveInstanceState(android.os.Bundle paramBundle)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->a:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/cy;->aw:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->av:Lcom/amap/api/maps/model/CrossOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cy;->av:Lcom/amap/api/maps/model/CrossOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CrossOverlay;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy$a;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->Y:Lcom/amap/api/col/cy$a;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/amap/api/col/cy;->Z:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/col/cy$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "onTouch(MotionEvent arg0)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openNorthMode()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/cy;->ag:I

    invoke-virtual {p0, v0}, Lcom/amap/api/col/cy;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0}, Lcom/amap/api/col/di;->d()V

    return-void
.end method

.method public recoverLockMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/cy;->a(Z)V

    return-void
.end method

.method public setAMapNaviViewListener(Lcom/amap/api/navi/AMapNaviViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cy;->ac:Lcom/amap/api/navi/AMapNaviViewListener;

    return-void
.end method

.method public setLazyDirectionView(Lcom/amap/api/navi/view/DirectionView;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/cy;->ak:Lcom/amap/api/navi/view/DirectionView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->ak:Lcom/amap/api/navi/view/DirectionView;

    new-instance v1, Lcom/amap/api/col/cy$9;

    invoke-direct {v1, p0}, Lcom/amap/api/col/cy$9;-><init>(Lcom/amap/api/col/cy;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/DirectionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLazyDriveWayView(Lcom/amap/api/navi/view/DriveWayView;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cy;->ah:Lcom/amap/api/navi/view/DriveWayView;

    return-void
.end method

.method public setLazyNextTurnTipView(Lcom/amap/api/navi/view/NextTurnTipView;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cy;->am:Lcom/amap/api/navi/view/NextTurnTipView;

    return-void
.end method

.method public setLazyOverviewButtonView(Lcom/amap/api/navi/view/OverviewButtonView;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/cy;->as:Lcom/amap/api/navi/view/OverviewButtonView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->as:Lcom/amap/api/navi/view/OverviewButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->as:Lcom/amap/api/navi/view/OverviewButtonView;

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->isRouteOverviewNow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/OverviewButtonView;->setChecked(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->as:Lcom/amap/api/navi/view/OverviewButtonView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->au:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/OverviewButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setLazyTrafficBarView(Lcom/amap/api/navi/view/TrafficBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cy;->aj:Lcom/amap/api/navi/view/TrafficBarView;

    return-void
.end method

.method public setLazyTrafficButtonView(Lcom/amap/api/navi/view/TrafficButtonView;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/cy;->al:Lcom/amap/api/navi/view/TrafficButtonView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->al:Lcom/amap/api/navi/view/TrafficButtonView;

    iget-object v1, p0, Lcom/amap/api/col/cy;->at:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/navi/view/TrafficButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLazyZoomButtonView(Lcom/amap/api/navi/view/ZoomButtonView;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/cy;->ar:Lcom/amap/api/navi/view/ZoomButtonView;

    iget-object v0, p0, Lcom/amap/api/col/cy;->ar:Lcom/amap/api/navi/view/ZoomButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->ar:Lcom/amap/api/navi/view/ZoomButtonView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomButtonView;->getZoomInBtn()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/cy$10;

    invoke-direct {v1, p0}, Lcom/amap/api/col/cy$10;-><init>(Lcom/amap/api/col/cy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->ar:Lcom/amap/api/navi/view/ZoomButtonView;

    invoke-virtual {v0}, Lcom/amap/api/navi/view/ZoomButtonView;->getZoomOutBtn()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/cy$2;

    invoke-direct {v1, p0}, Lcom/amap/api/col/cy$2;-><init>(Lcom/amap/api/col/cy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setLazyZoomInIntersectionView(Lcom/amap/api/navi/view/ZoomInIntersectionView;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cy;->ai:Lcom/amap/api/navi/view/ZoomInIntersectionView;

    return-void
.end method

.method public setLockTilt(I)V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cy;->S:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/AMapNaviViewOptions;->setTilt(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/cy;->setViewOptions(Lcom/amap/api/navi/AMapNaviViewOptions;)V

    goto :goto_0
.end method

.method public setLockZoom(I)V
    .locals 1

    iget v0, p0, Lcom/amap/api/col/cy;->R:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {v0, p1}, Lcom/amap/api/navi/AMapNaviViewOptions;->setZoom(I)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/cy;->setViewOptions(Lcom/amap/api/navi/AMapNaviViewOptions;)V

    goto :goto_0
.end method

.method public setNaviMode(I)V
    .locals 2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/col/cy;->ag:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/amap/api/col/cy;->ag:I

    invoke-virtual {p0, v1}, Lcom/amap/api/col/cy;->a(Z)V

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/cy;->l()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/cy;->o()V

    goto :goto_0
.end method

.method public setTrafficLine(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->setTrafficEnabled(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cy;->W:Lcom/amap/api/col/di;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/di;->d(Z)V

    :cond_0
    return-void
.end method

.method public setViewOptions(Lcom/amap/api/navi/AMapNaviViewOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cy;->T:Lcom/amap/api/navi/AMapNaviViewOptions;

    invoke-virtual {p0}, Lcom/amap/api/col/cy;->a()V

    return-void
.end method

.method public zoomIn()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/cy;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method public zoomOut()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/cy;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/cy;->X:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method
