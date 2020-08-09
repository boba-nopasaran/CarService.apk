.class Lcom/car/gpsservice/CarGPSThread$1;
.super Landroid/os/Handler;
.source "CarGPSThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/gpsservice/CarGPSThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/gpsservice/CarGPSThread;


# direct methods
.method constructor <init>(Lcom/car/gpsservice/CarGPSThread;)V
    .locals 0

    iput-object p1, p0, Lcom/car/gpsservice/CarGPSThread$1;->this$0:Lcom/car/gpsservice/CarGPSThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v1, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/car/gpsservice/CarGPSThread$1;->this$0:Lcom/car/gpsservice/CarGPSThread;

    invoke-virtual {v0}, Lcom/car/gpsservice/CarGPSThread;->gpsReopen()V

    invoke-virtual {p0, v1}, Lcom/car/gpsservice/CarGPSThread$1;->removeMessages(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/car/gpsservice/CarGPSThread;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/sys/power/led_set_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/car/gpsservice/CarGPSThread;->GPS_LED_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/utils/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/car/gpsservice/CarGPSThread;->access$000()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/car/gpsservice/CarGPSThread;->access$002(Z)Z

    goto :goto_0

    :cond_2
    const-string v0, "/sys/power/led_set_control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/car/gpsservice/CarGPSThread;->GPS_LED_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/utils/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
