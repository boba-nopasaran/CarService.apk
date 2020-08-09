.class public final Lcom/tcp2usb/TCP2USB;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDeviceSide(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$AccessoryListener;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tcp2usb/TCPProxy;->instance()Lcom/tcp2usb/TCPProxy;

    move-result-object v1

    invoke-static {}, Lcom/tcp2usb/e;->a()Lcom/tcp2usb/e;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/tcp2usb/e;->a(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$AccessoryListener;Lcom/tcp2usb/UsbTransfer$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/tcp2usb/TCPProxy;->a(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$b;)V

    return-void
.end method

.method public static createHostSide(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$DeviceListener;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tcp2usb/TCPProxy;->instance()Lcom/tcp2usb/TCPProxy;

    move-result-object v1

    invoke-static {}, Lcom/tcp2usb/h;->a()Lcom/tcp2usb/h;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/tcp2usb/h;->a(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$DeviceListener;Lcom/tcp2usb/UsbTransfer$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/tcp2usb/TCPProxy;->a(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$b;)V

    return-void
.end method

.method public static deInitHostSide()V
    .locals 1

    invoke-static {}, Lcom/tcp2usb/h;->a()Lcom/tcp2usb/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tcp2usb/h;->b()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/tcp2usb/h;->a()Lcom/tcp2usb/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tcp2usb/h;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tcp2usb/e;->a()Lcom/tcp2usb/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tcp2usb/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static onNewDeviceAttach(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-static {}, Lcom/tcp2usb/h;->a()Lcom/tcp2usb/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tcp2usb/h;->a(Landroid/hardware/usb/UsbDevice;)Z

    return-void
.end method
