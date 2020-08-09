.class Lcom/amap/api/col/cp$1;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/cp;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cp;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-static {v0}, Lcom/amap/api/col/cp;->a(Lcom/amap/api/col/cp;)Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->f()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-static {v1}, Lcom/amap/api/col/cp;->a(Lcom/amap/api/col/cp;)Lcom/amap/api/mapcore/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/k;->getMaxZoomLevel()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-static {v0}, Lcom/amap/api/col/cp;->a(Lcom/amap/api/col/cp;)Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/k;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-static {v0}, Lcom/amap/api/col/cp;->c(Lcom/amap/api/col/cp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-static {v1}, Lcom/amap/api/col/cp;->b(Lcom/amap/api/col/cp;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-static {v0}, Lcom/amap/api/col/cp;->c(Lcom/amap/api/col/cp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-static {v1}, Lcom/amap/api/col/cp;->d(Lcom/amap/api/col/cp;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cp$1;->a:Lcom/amap/api/col/cp;

    invoke-static {v0}, Lcom/amap/api/col/cp;->a(Lcom/amap/api/col/cp;)Lcom/amap/api/mapcore/k;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/col/d;->a()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/k;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZoomControllerView"

    const-string v2, "zoomin ontouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
