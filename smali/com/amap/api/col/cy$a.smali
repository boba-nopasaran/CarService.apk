.class Lcom/amap/api/col/cy$a;
.super Landroid/os/Handler;
.source "AMapNaviViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/col/cy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amap/api/col/cy;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/col/cy$a;->a:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AMapNaviView"

    const-string v2, "MapViewListenerTriggerHandler()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cy$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/cy;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "AMapNaviView"

    const-string v2, "MapViewListenerTriggerHandler.handleMessage(android.os.Message msg) "

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {v0}, Lcom/amap/api/col/cy;->c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/cy;->c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviViewListener;->onNaviSetting()V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/amap/api/col/cy;->j(Lcom/amap/api/col/cy;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/amap/api/col/cy;->c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/cy;->c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviViewListener;->onNaviCancel()V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cy;->a(Z)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0}, Lcom/amap/api/col/cy;->c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/cy;->c(Lcom/amap/api/col/cy;)Lcom/amap/api/navi/AMapNaviViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviViewListener;->onNaviViewLoaded()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
