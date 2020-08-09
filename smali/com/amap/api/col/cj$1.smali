.class Lcom/amap/api/col/cj$1;
.super Ljava/lang/Object;
.source "CompassView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/cj;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cj;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cj$1;->a:Lcom/amap/api/col/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cj$1;->a:Lcom/amap/api/col/cj;

    iget-object v0, v0, Lcom/amap/api/col/cj;->e:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cj$1;->a:Lcom/amap/api/col/cj;

    iget-object v0, v0, Lcom/amap/api/col/cj;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/cj$1;->a:Lcom/amap/api/col/cj;

    iget-object v1, v1, Lcom/amap/api/col/cj;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CompassView"

    const-string v2, "onTouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cj$1;->a:Lcom/amap/api/col/cj;

    iget-object v0, v0, Lcom/amap/api/col/cj;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/cj$1;->a:Lcom/amap/api/col/cj;

    iget-object v1, v1, Lcom/amap/api/col/cj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/cj$1;->a:Lcom/amap/api/col/cj;

    iget-object v0, v0, Lcom/amap/api/col/cj;->e:Lcom/amap/api/mapcore/k;

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cj$1;->a:Lcom/amap/api/col/cj;

    iget-object v1, v1, Lcom/amap/api/col/cj;->e:Lcom/amap/api/mapcore/k;

    new-instance v2, Lcom/amap/api/maps/model/CameraPosition;

    iget-object v3, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget v0, v0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    invoke-static {v2}, Lcom/amap/api/col/d;->a(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore/k;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
