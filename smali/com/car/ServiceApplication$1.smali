.class Lcom/car/ServiceApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/ServiceApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ServiceApplication;


# direct methods
.method constructor <init>(Lcom/car/ServiceApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v8, "sdk.aios.intent.action.MAJOR_WAKEUP"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "CarSvc_ServiceApplication"

    const-string v8, "Need reinit for aios"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    iget v8, v5, Lcom/car/ServiceApplication;->mAiosReadyCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lcom/car/ServiceApplication;->mAiosReadyCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    iget-wide v8, v5, Lcom/car/ServiceApplication;->mLastReadyTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0xea60

    cmp-long v5, v8, v10

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    iget-wide v8, v5, Lcom/car/ServiceApplication;->mLastReadyTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    iget-wide v8, v5, Lcom/car/ServiceApplication;->mLastReadyTime:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    const-wide/16 v8, 0xa

    div-long v8, v6, v8

    long-to-int v1, v8

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    iget v5, v5, Lcom/car/ServiceApplication;->mAiosReadyCount:I

    div-int v0, v5, v1

    const/4 v5, 0x2

    if-lt v0, v5, :cond_0

    const-string v5, "CarSvc_ServiceApplication"

    const-string v8, "Something error, try to kill myself"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    const/4 v8, 0x0

    iput v8, v5, Lcom/car/ServiceApplication;->mAiosReadyCount:I

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/car/ServiceApplication;->mLastReadyTime:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    iget-wide v8, v5, Lcom/car/ServiceApplication;->mLastReadyTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    iput-wide v2, v5, Lcom/car/ServiceApplication;->mLastReadyTime:J

    :cond_3
    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v5}, Lcom/car/ServiceApplication;->speechInit()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v8, "com.car.nvramreset"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "sys.car.imei"

    const-string v8, ""

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    const-string v5, "CarSvc_ServiceApplication"

    const-string v8, "Modem ever ok, neednot reset"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    iget-wide v8, v5, Lcom/car/ServiceApplication;->mLastResetTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0x493e0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1

    const-string v5, "ctl.start"

    const-string v8, "nvramreset"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/ServiceApplication$1;->this$0:Lcom/car/ServiceApplication;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/car/ServiceApplication;->mLastResetTime:J

    goto :goto_0
.end method
