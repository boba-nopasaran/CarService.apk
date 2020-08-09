.class public interface abstract Lcom/tcp2usb/UsbTransfer$AccessoryListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcp2usb/UsbTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessoryListener"
.end annotation


# virtual methods
.method public abstract getUSBSnoopString()Ljava/lang/String;
.end method

.method public abstract isOurAccessory(Landroid/hardware/usb/UsbAccessory;)Z
.end method

.method public abstract onUSBAccessoryStatus(Ljava/lang/String;I)V
.end method
