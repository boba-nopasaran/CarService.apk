.class Lcom/car/CarService$1;
.super Lcom/car/common/ICarService$Stub;
.source "CarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/CarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/CarService;


# direct methods
.method constructor <init>(Lcom/car/CarService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/CarService$1;->this$0:Lcom/car/CarService;

    invoke-direct {p0}, Lcom/car/common/ICarService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/car/CarService$1;->this$0:Lcom/car/CarService;

    invoke-static {v3}, Lcom/car/CarService;->access$000(Lcom/car/CarService;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getBrightness()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/CarService$1;->this$0:Lcom/car/CarService;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/car/CarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iget-object v3, p0, Lcom/car/CarService$1;->this$0:Lcom/car/CarService;

    invoke-virtual {v3}, Lcom/car/CarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public requestScreen(ZZLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/car/systemfunc/PowerConnectionReceiver;->getInstance()Lcom/car/systemfunc/PowerConnectionReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/systemfunc/PowerConnectionReceiver;->getInstance()Lcom/car/systemfunc/PowerConnectionReceiver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/car/systemfunc/PowerConnectionReceiver;->requestScreenStatus(ZZLjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public screenRecover(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/car/systemfunc/PowerConnectionReceiver;->getInstance()Lcom/car/systemfunc/PowerConnectionReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/systemfunc/PowerConnectionReceiver;->getInstance()Lcom/car/systemfunc/PowerConnectionReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/systemfunc/PowerConnectionReceiver;->screenRecover(Z)V

    :cond_0
    return-void
.end method

.method public setBrightness(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/car/CarService$1;->this$0:Lcom/car/CarService;

    invoke-static {v1}, Lcom/car/CarService;->access$000(Lcom/car/CarService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/car/CarService$1;->this$0:Lcom/car/CarService;

    invoke-virtual {v1}, Lcom/car/CarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, -0x2

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
