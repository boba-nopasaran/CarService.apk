.class Lcom/amap/api/col/cz$a;
.super Landroid/os/Handler;
.source "FrameForRTBT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cz;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v1}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget-object v2, v2, Lcom/amap/api/col/cz;->a:Lcom/amap/api/navi/model/NaviInfo;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onNaviInfoUpdate(Lcom/amap/api/navi/model/NaviInfo;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_2
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget v2, v2, Lcom/amap/api/col/cz;->b:I

    iget-object v3, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget-object v3, v3, Lcom/amap/api/col/cz;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/amap/api/navi/AMapNaviListener;->onGetNavigationText(ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_3
    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onEndEmulatorNavi()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :pswitch_4
    iget-object v1, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget v1, v1, Lcom/amap/api/col/cz;->d:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget v1, v1, Lcom/amap/api/col/cz;->d:I

    if-nez v1, :cond_2

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onArriveDestination()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_2
    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget v2, v2, Lcom/amap/api/col/cz;->d:I

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onArrivedWayPoint(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :pswitch_5
    move v1, v0

    :goto_6
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onReCalculateRouteForYaw()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :pswitch_6
    iget-object v1, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget-object v1, v1, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget-object v2, v2, Lcom/amap/api/col/cz;->f:Lcom/amap/api/navi/model/AMapNaviLocation;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onLocationChange(Lcom/amap/api/navi/model/AMapNaviLocation;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :pswitch_7
    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/amap/api/navi/MyNaviListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/MyNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget-object v2, v2, Lcom/amap/api/col/cz;->g:Lcom/amap/api/navi/model/AmapCarLocation;

    invoke-interface {v0, v2}, Lcom/amap/api/navi/MyNaviListener;->carProjectionChange(Lcom/amap/api/navi/model/AmapCarLocation;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :pswitch_8
    move v1, v0

    :goto_9
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onCalculateRouteSuccess()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :pswitch_9
    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget v2, v2, Lcom/amap/api/col/cz;->h:I

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onCalculateRouteFailure(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_4
    const-string v0, "http://restapi.amap.com/v4/direction/bicycling"

    const-string v1, "http://restapi.amap.com/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    iget v1, v1, Lcom/amap/api/col/cz;->h:I

    invoke-static {v0, v1}, Lcom/amap/api/col/dn;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/amap/api/col/ds;->a(Ljava/lang/Throwable;)V

    const-string v1, "FrameForWTBT"

    const-string v2, "NaviListenerTriggerHandler.handleMessage(Message msg)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    move v1, v0

    :goto_b
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onInitNaviSuccess()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :pswitch_b
    move v1, v0

    :goto_c
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    invoke-interface {v0}, Lcom/amap/api/navi/AMapNaviListener;->onInitNaviFailure()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :pswitch_c
    move v1, v0

    :goto_d
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v2}, Lcom/amap/api/col/cz;->b(Lcom/amap/api/col/cz;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onStartNavi(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :pswitch_d
    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v0}, Lcom/amap/api/col/cz;->a(Lcom/amap/api/col/cz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/navi/AMapNaviListener;

    iget-object v2, p0, Lcom/amap/api/col/cz$a;->a:Lcom/amap/api/col/cz;

    invoke-static {v2}, Lcom/amap/api/col/cz;->c(Lcom/amap/api/col/cz;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/amap/api/navi/AMapNaviListener;->onGpsOpenStatus(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
