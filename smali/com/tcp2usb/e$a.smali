.class final Lcom/tcp2usb/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tcp2usb/UsbTransfer$AccessoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcp2usb/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

.field final synthetic b:Lcom/tcp2usb/e;


# direct methods
.method public constructor <init>(Lcom/tcp2usb/e;Lcom/tcp2usb/UsbTransfer$AccessoryListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/e$a;->b:Lcom/tcp2usb/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tcp2usb/e$a;->a:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    return-void
.end method


# virtual methods
.method public getUSBSnoopString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/e$a;->a:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->getUSBSnoopString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOurAccessory(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/e$a;->a:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    invoke-interface {v0, p1}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->isOurAccessory(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    return v0
.end method

.method public onUSBAccessoryStatus(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/tcp2usb/e$a;->a:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tcp2usb/e$a;->b:Lcom/tcp2usb/e;

    invoke-static {v0}, Lcom/tcp2usb/e;->b(Lcom/tcp2usb/e;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tcp2usb/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/tcp2usb/g;-><init>(Lcom/tcp2usb/e$a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
