.class public Lcom/amap/api/col/dp;
.super Lcom/amap/api/col/dm;
.source "RideTBTTask.java"


# instance fields
.field private r:Lcom/amap/api/col/dj;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/dj;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;II[B)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/amap/api/col/dm;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;II[B)V

    iput-object p1, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    return-void
.end method

.method private b()Lcom/amap/api/col/gn;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/amap/api/col/dp$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/dp$1;-><init>(Lcom/amap/api/col/dp;)V

    invoke-static {}, Lcom/amap/api/col/gk;->b()Lcom/amap/api/col/gk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/col/gk;->b(Lcom/amap/api/col/gl;Z)Lcom/amap/api/col/gn;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/dp;->b()Lcom/amap/api/col/gn;

    move-result-object v3

    const-string v0, "http://restapi.amap.com/v4/direction/bicycling"

    invoke-static {v0, v3}, Lcom/amap/api/col/dn;->a(Ljava/lang/String;Lcom/amap/api/col/gn;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ltz v0, :cond_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/col/dj;->e()Lcom/autonavi/rtbt/RTBT;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_3

    :try_start_4
    iget-object v1, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :try_start_5
    invoke-virtual {v1}, Lcom/amap/api/col/dj;->e()Lcom/autonavi/rtbt/RTBT;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v1

    :try_start_6
    iget v2, p0, Lcom/amap/api/col/dp;->f:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    :try_start_7
    iget v4, p0, Lcom/amap/api/col/dp;->g:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    :try_start_8
    iget-object v5, v3, Lcom/amap/api/col/gn;->a:[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    :try_start_9
    iget-object v3, v3, Lcom/amap/api/col/gn;->a:[B
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    :try_start_a
    array-length v3, v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    :try_start_b
    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/autonavi/rtbt/RTBT;->receiveNetData(II[BI)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    :try_start_c
    iget-object v1, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    :try_start_d
    invoke-virtual {v1}, Lcom/amap/api/col/dj;->e()Lcom/autonavi/rtbt/RTBT;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_11

    move-result-object v1

    :try_start_e
    iget v2, p0, Lcom/amap/api/col/dp;->f:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    :try_start_f
    iget v3, p0, Lcom/amap/api/col/dp;->g:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_13

    :try_start_10
    invoke-virtual {v1, v2, v3, v0}, Lcom/autonavi/rtbt/RTBT;->setNetRequestState(III)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x2

    const-string v3, "WalkTBTTask"

    const-string v4, "runTask()"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/ew;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    iget-object v0, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    invoke-virtual {v0}, Lcom/amap/api/col/dj;->e()Lcom/autonavi/rtbt/RTBT;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    invoke-virtual {v0}, Lcom/amap/api/col/dj;->e()Lcom/autonavi/rtbt/RTBT;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/dp;->f:I

    iget v3, p0, Lcom/amap/api/col/dp;->g:I

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v3, v4}, Lcom/autonavi/rtbt/RTBT;->setNetRequestState(III)V

    iget-object v0, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    invoke-virtual {v0}, Lcom/amap/api/col/dj;->f()Lcom/autonavi/rtbt/IFrameForRTBT;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/autonavi/rtbt/IFrameForRTBT;->setRouteRequestState(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    throw v0

    :catchall_0
    move-exception v0

    :try_start_13
    iget-object v2, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    invoke-virtual {v2}, Lcom/amap/api/col/dj;->e()Lcom/autonavi/rtbt/RTBT;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    invoke-virtual {v2}, Lcom/amap/api/col/dj;->e()Lcom/autonavi/rtbt/RTBT;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/col/dp;->f:I

    iget v4, p0, Lcom/amap/api/col/dp;->g:I

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lcom/autonavi/rtbt/RTBT;->setNetRequestState(III)V

    iget-object v2, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;

    invoke-virtual {v2}, Lcom/amap/api/col/dj;->f()Lcom/autonavi/rtbt/IFrameForRTBT;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/autonavi/rtbt/IFrameForRTBT;->setRouteRequestState(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_3

    :cond_3
    :try_start_14
    iget-object v1, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    :try_start_15
    invoke-virtual {v1}, Lcom/amap/api/col/dj;->e()Lcom/autonavi/rtbt/RTBT;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v1

    :try_start_16
    iget v2, p0, Lcom/amap/api/col/dp;->f:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    :try_start_17
    iget v3, p0, Lcom/amap/api/col/dp;->g:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    const/4 v4, 0x4

    :try_start_18
    invoke-virtual {v1, v2, v3, v4}, Lcom/autonavi/rtbt/RTBT;->setNetRequestState(III)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    :try_start_19
    iget-object v1, p0, Lcom/amap/api/col/dp;->r:Lcom/amap/api/col/dj;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    :try_start_1a
    invoke-virtual {v1}, Lcom/amap/api/col/dj;->f()Lcom/autonavi/rtbt/IFrameForRTBT;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    move-result-object v1

    :try_start_1b
    invoke-interface {v1, v0}, Lcom/autonavi/rtbt/IFrameForRTBT;->setRouteRequestState(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    goto :goto_2

    :catch_b
    move-exception v0

    goto :goto_2

    :catch_c
    move-exception v0

    goto :goto_2

    :catch_d
    move-exception v0

    goto :goto_2

    :catch_e
    move-exception v0

    goto :goto_2

    :catch_f
    move-exception v0

    goto :goto_2

    :catch_10
    move-exception v0

    goto :goto_2

    :catch_11
    move-exception v0

    goto :goto_2

    :catch_12
    move-exception v0

    goto :goto_2

    :catch_13
    move-exception v0

    goto :goto_2

    :catch_14
    move-exception v0

    goto :goto_2

    :catch_15
    move-exception v0

    goto :goto_2

    :catch_16
    move-exception v0

    goto :goto_2

    :catch_17
    move-exception v0

    goto :goto_2

    :catch_18
    move-exception v0

    goto :goto_2

    :catch_19
    move-exception v0

    goto :goto_2

    :catch_1a
    move-exception v0

    goto :goto_2
.end method
