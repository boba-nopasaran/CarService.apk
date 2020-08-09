.class Lcom/amap/api/mapcore/a$1;
.super Landroid/os/Handler;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/a;->o()V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a;->o()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key\u9a8c\u8bc1\u5931\u8d25\uff1a["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "amapsdk"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/amap/api/col/eg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/maps/model/CameraPosition;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v1}, Lcom/amap/api/mapcore/a;->b(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v1}, Lcom/amap/api/mapcore/a;->b(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->c(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->c(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$OnMapLoadedListener;->onMapLoaded()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "AMapDelegateImp"

    const-string v2, "onMapLoaded"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :pswitch_4
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->d(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapTouchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->d(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapTouchListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnMapTouchListener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "AMapDelegateImp"

    const-string v2, "onTouchHandler"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/a;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cm;->a(F)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v0}, Lcom/amap/api/col/cm;->g()Lcom/amap/api/col/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/col/cj;->a()V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v2, :cond_7

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v3, v3, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v3}, Lcom/amap/api/col/cm;->h()Lcom/amap/api/col/co;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lcom/amap/api/col/co;->onDraw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v3, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v3, v3, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v3, v2}, Lcom/amap/api/col/cm;->a(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->e(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->e(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v4}, Lcom/amap/api/mapcore/a;->f(Lcom/amap/api/mapcore/a;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->g(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->g(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->g(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;I)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/a;Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/a;Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->e(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->e(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->g(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->g(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->g(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :pswitch_8
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/a;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/a;->c:Lcom/amap/api/col/cm;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/cm;->a(Lcom/amap/api/maps/model/CameraPosition;)V

    :cond_9
    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/a;->g(Z)V

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v1}, Lcom/amap/api/mapcore/a;->h(Lcom/amap/api/mapcore/a;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/a;->i()V

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/a;Z)Z

    :cond_a
    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/amap/api/mapcore/a;->a(ZLcom/amap/api/maps/model/CameraPosition;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->i(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->i(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onFinish()V

    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->j(Lcom/amap/api/mapcore/a;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/a;->a(Lcom/amap/api/mapcore/a;Lcom/amap/api/maps/AMap$CancelableCallback;)Lcom/amap/api/maps/AMap$CancelableCallback;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_7
    const-string v1, "AMapDelegateImp"

    const-string v2, "CameraUpdateFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :cond_c
    :try_start_8
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/a;->b(Lcom/amap/api/mapcore/a;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    :pswitch_9
    :try_start_9
    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v2}, Lcom/amap/api/mapcore/a;->k(Lcom/amap/api/mapcore/a;)Lcom/autonavi/ae/gmap/GLMapEngine;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/u;->b(Z)V

    :cond_d
    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v2, v2, Lcom/amap/api/mapcore/a;->d:Lcom/amap/api/mapcore/u;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_e

    :goto_4
    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/u;->a(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto :goto_4

    :pswitch_a
    :try_start_a
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->l(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnPOIClickListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/maps/model/Poi;

    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnPOIClickListener;->onPOIClick(Lcom/amap/api/maps/model/Poi;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_b
    const-string v1, "AMapDelegateImp"

    const-string v2, "OnPOIClickListener.onPOIClick"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/a;->m(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/autonavi/amap/mapcore/DPoint;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/DPoint;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    iget-object v1, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    invoke-static {v1}, Lcom/amap/api/mapcore/a;->m(Lcom/amap/api/mapcore/a;)Lcom/amap/api/maps/AMap$OnMapClickListener;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    :try_start_d
    const-string v1, "AMapDelegateImp"

    const-string v2, "OnMapClickListener.onMapClick"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/a$1;->a:Lcom/amap/api/mapcore/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/a;->a:Lcom/amap/api/col/aq;

    invoke-interface {v0}, Lcom/amap/api/col/aq;->e()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
