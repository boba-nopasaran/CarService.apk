.class public Lcom/amap/api/navi/view/ZoomButtonView;
.super Landroid/widget/LinearLayout;
.source "ZoomButtonView.java"


# instance fields
.field private zoomInBtn:Landroid/widget/ImageButton;

.field private zoomOutBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/amap/api/navi/view/ZoomButtonView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/amap/api/navi/view/ZoomButtonView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/amap/api/navi/view/ZoomButtonView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/amap/api/navi/view/ZoomButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x47030004

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/navi/view/ZoomButtonView;->addView(Landroid/view/View;)V

    const v0, 0x4709002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amap/api/navi/view/ZoomButtonView;->zoomOutBtn:Landroid/widget/ImageButton;

    const v0, 0x4709002c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amap/api/navi/view/ZoomButtonView;->zoomInBtn:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public getZoomInBtn()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/ZoomButtonView;->zoomInBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getZoomOutBtn()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/ZoomButtonView;->zoomOutBtn:Landroid/widget/ImageButton;

    return-object v0
.end method
