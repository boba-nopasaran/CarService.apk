.class Lcom/amap/api/col/cv$1;
.super Landroid/os/Handler;
.source "MyRouteObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cv;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cv$1;->a:Lcom/amap/api/col/cv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/cv$1;->a:Lcom/amap/api/col/cv;

    invoke-static {v0}, Lcom/amap/api/col/cv;->a(Lcom/amap/api/col/cv;)Lcom/amap/api/col/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/cr;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cw;

    invoke-virtual {v0}, Lcom/amap/api/col/cw;->b()[B

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/cv$1;->a:Lcom/amap/api/col/cv;

    invoke-static {v1}, Lcom/amap/api/col/cv;->a(Lcom/amap/api/col/cv;)Lcom/amap/api/col/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/cr;->f()Lcom/autonavi/ae/route/RouteService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/col/cw;->a()I

    move-result v2

    const/16 v3, 0xc8

    invoke-virtual {v0}, Lcom/amap/api/col/cw;->b()[B

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/ae/route/RouteService;->processHttpData(II[B)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/cv$1;->a:Lcom/amap/api/col/cv;

    invoke-static {v1}, Lcom/amap/api/col/cv;->a(Lcom/amap/api/col/cv;)Lcom/amap/api/col/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/cr;->f()Lcom/autonavi/ae/route/RouteService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/col/cw;->a()I

    move-result v0

    const/16 v2, 0x194

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/ae/route/RouteService;->processHttpError(II)V

    goto :goto_0

    :pswitch_1
    const-string v1, "AE8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDER_FLAG_SIGLE_ROUTE_SUCESS-->Thread Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onCalculateRouteSuccess()V

    goto :goto_1

    :pswitch_2
    const-string v1, "AE8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDER_FLAG_MULTIPLE_ROUTE__SUCESS-->Thread Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cv$1;->a:Lcom/amap/api/col/cv;

    invoke-static {v2}, Lcom/amap/api/col/cv;->b(Lcom/amap/api/col/cv;)[I

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onCalculateMultipleRoutesSuccess([I)V

    goto :goto_2

    :pswitch_3
    const-string v1, "AE8"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDER_FLAG_RECALCULATE_YAW-->Thread Name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/col/dw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onReCalculateRouteForYaw()V

    goto :goto_3

    :pswitch_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onCalculateRouteFailure(I)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
