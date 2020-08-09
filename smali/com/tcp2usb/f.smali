.class Lcom/tcp2usb/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tcp2usb/e;


# direct methods
.method constructor <init>(Lcom/tcp2usb/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/f;->a:Lcom/tcp2usb/e;

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

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "accessory"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/tcp2usb/f;->a:Lcom/tcp2usb/e;

    invoke-static {v1, v0}, Lcom/tcp2usb/e;->a(Lcom/tcp2usb/e;Landroid/hardware/usb/UsbAccessory;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    if-ne v0, v1, :cond_2

    const-string v0, "accessory"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/tcp2usb/f;->a:Lcom/tcp2usb/e;

    invoke-static {v1, v0}, Lcom/tcp2usb/e;->b(Lcom/tcp2usb/e;Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.tcp2usb.usbdevice.USB_PERMISSION"

    if-ne v0, v1, :cond_0

    const-string v0, "accessory"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    const-string v1, "permission"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tcp2usb/f;->a:Lcom/tcp2usb/e;

    invoke-static {v1, v0}, Lcom/tcp2usb/e;->a(Lcom/tcp2usb/e;Landroid/hardware/usb/UsbAccessory;)Z

    goto :goto_0

    :cond_3
    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no permisson for such accessory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tcp2usb/f;->a:Lcom/tcp2usb/e;

    invoke-static {v0}, Lcom/tcp2usb/e;->a(Lcom/tcp2usb/e;)Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    move-result-object v0

    const-string v1, ""

    const/16 v2, -0x1f4

    invoke-interface {v0, v1, v2}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->onUSBAccessoryStatus(Ljava/lang/String;I)V

    goto :goto_0
.end method
