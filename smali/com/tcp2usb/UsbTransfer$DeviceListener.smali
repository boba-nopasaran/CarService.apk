.class public interface abstract Lcom/tcp2usb/UsbTransfer$DeviceListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcp2usb/UsbTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceListener"
.end annotation


# virtual methods
.method public abstract checkDeviceMode(Landroid/hardware/usb/UsbDevice;)I
.end method

.method public abstract getAccessoryInfomation()Lcom/tcp2usb/UsbTransfer$AccessoryInformation;
.end method

.method public abstract onCustomCommand(B[B)V
.end method

.method public abstract onUSBDeviceStatus(Ljava/lang/String;I)V
.end method
