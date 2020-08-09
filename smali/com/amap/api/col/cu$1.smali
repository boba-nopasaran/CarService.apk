.class Lcom/amap/api/col/cu$1;
.super Landroid/os/Handler;
.source "MyGuideObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/cu;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cu;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v1}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/4 v1, 0x3

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0x9

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0xa

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0xe

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0x12

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0x13

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0x14

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0x16

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    const/16 v1, 0x17

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/col/cw;

    invoke-virtual {v0}, Lcom/amap/api/col/cw;->b()[B

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    invoke-static {v1}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;)Lcom/amap/api/col/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/cr;->e()Lcom/autonavi/ae/guide/GuideService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/col/cw;->a()I

    move-result v2

    const/16 v3, 0xc8

    invoke-virtual {v0}, Lcom/amap/api/col/cw;->b()[B

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/ae/guide/GuideService;->processHttpData(II[B)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/cu$1;->a:Lcom/amap/api/col/cu;

    invoke-static {v1}, Lcom/amap/api/col/cu;->a(Lcom/amap/api/col/cu;)Lcom/amap/api/col/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/cr;->e()Lcom/autonavi/ae/guide/GuideService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amap/api/col/cw;->a()I

    move-result v0

    const/16 v2, 0x194

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/ae/guide/GuideService;->processHttpError(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
