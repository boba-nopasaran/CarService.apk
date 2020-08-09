.class final Lcom/tcp2usb/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tcp2usb/UsbTransfer$DeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcp2usb/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tcp2usb/UsbTransfer$DeviceListener;

.field final synthetic b:Lcom/tcp2usb/h;


# direct methods
.method public constructor <init>(Lcom/tcp2usb/h;Lcom/tcp2usb/UsbTransfer$DeviceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/h$a;->b:Lcom/tcp2usb/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tcp2usb/h$a;->a:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    return-void
.end method


# virtual methods
.method public checkDeviceMode(Landroid/hardware/usb/UsbDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/h$a;->a:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    invoke-interface {v0, p1}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->checkDeviceMode(Landroid/hardware/usb/UsbDevice;)I

    move-result v0

    return v0
.end method

.method public getAccessoryInfomation()Lcom/tcp2usb/UsbTransfer$AccessoryInformation;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/h$a;->a:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->getAccessoryInfomation()Lcom/tcp2usb/UsbTransfer$AccessoryInformation;

    move-result-object v0

    return-object v0
.end method

.method public onCustomCommand(B[B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tcp2usb/h$a;->a:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, p2

    new-array v0, v0, [B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/tcp2usb/h$a;->b:Lcom/tcp2usb/h;

    invoke-static {v1}, Lcom/tcp2usb/h;->b(Lcom/tcp2usb/h;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tcp2usb/l;

    invoke-direct {v2, p0, p1, v0}, Lcom/tcp2usb/l;-><init>(Lcom/tcp2usb/h$a;B[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onUSBDeviceStatus(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/tcp2usb/h$a;->a:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tcp2usb/h$a;->b:Lcom/tcp2usb/h;

    invoke-static {v0}, Lcom/tcp2usb/h;->b(Lcom/tcp2usb/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tcp2usb/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/tcp2usb/k;-><init>(Lcom/tcp2usb/h$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
