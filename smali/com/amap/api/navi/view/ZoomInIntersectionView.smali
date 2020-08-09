.class public Lcom/amap/api/navi/view/ZoomInIntersectionView;
.super Landroid/widget/ImageView;
.source "ZoomInIntersectionView.java"


# instance fields
.field private zoomInBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/ZoomInIntersectionView;->zoomInBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/ZoomInIntersectionView;->zoomInBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/ZoomInIntersectionView;->zoomInBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public recycleResource()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/navi/view/ZoomInIntersectionView;->zoomInBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/ZoomInIntersectionView;->zoomInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/navi/view/ZoomInIntersectionView;->zoomInBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setIntersectionBitMap(Lcom/amap/api/navi/model/AMapNaviCross;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amap/api/navi/model/AMapNaviCross;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/ZoomInIntersectionView;->zoomInBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/navi/view/ZoomInIntersectionView;->zoomInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/ZoomInIntersectionView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
