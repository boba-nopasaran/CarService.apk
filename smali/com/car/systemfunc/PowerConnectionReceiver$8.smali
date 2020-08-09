.class Lcom/car/systemfunc/PowerConnectionReceiver$8;
.super Ljava/lang/Object;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerConnectionReceiver;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerConnectionReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$8;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v1, "CarSvc_PowerConnectionReceiver"

    const-string v2, "Try to fix sdcard reading error from suspend."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/sdcard1/DVR"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$8;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    const-string v2, "/sys/bus/platform/drivers/mt-gpio/tfctl"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
