.class Lcom/tcp2usb/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tcp2usb/h;


# direct methods
.method constructor <init>(Lcom/tcp2usb/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/j;->a:Lcom/tcp2usb/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsbActionReceiver recv:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.tcp2usb.usbhost.USB_PERMISSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    const-string v1, "permission"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tcp2usb/j;->a:Lcom/tcp2usb/h;

    invoke-virtual {v1, v0}, Lcom/tcp2usb/h;->a(Landroid/hardware/usb/UsbDevice;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no permisson for such device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tcp2usb/j;->a:Lcom/tcp2usb/h;

    invoke-static {v0}, Lcom/tcp2usb/h;->c(Lcom/tcp2usb/h;)Lcom/tcp2usb/UsbTransfer$DeviceListener;

    move-result-object v0

    const-string v1, ""

    const/16 v2, -0x1f4

    invoke-interface {v0, v1, v2}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onUSBDeviceStatus(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    if-ne v0, v1, :cond_3

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attached device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    if-ne v0, v1, :cond_0

    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detached device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tcp2usb/j;->a:Lcom/tcp2usb/h;

    invoke-static {v1}, Lcom/tcp2usb/h;->d(Lcom/tcp2usb/h;)Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lcom/tcp2usb/j;->a:Lcom/tcp2usb/h;

    invoke-static {v1}, Lcom/tcp2usb/h;->c(Lcom/tcp2usb/h;)Lcom/tcp2usb/UsbTransfer$DeviceListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->checkDeviceMode(Landroid/hardware/usb/UsbDevice;)I

    move-result v0

    if-ltz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/tcp2usb/j;->a:Lcom/tcp2usb/h;

    invoke-static {v0}, Lcom/tcp2usb/h;->e(Lcom/tcp2usb/h;)V

    goto/16 :goto_0
.end method
