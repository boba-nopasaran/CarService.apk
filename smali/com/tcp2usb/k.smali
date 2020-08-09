.class Lcom/tcp2usb/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tcp2usb/h$a;


# direct methods
.method constructor <init>(Lcom/tcp2usb/h$a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/k;->c:Lcom/tcp2usb/h$a;

    iput-object p2, p0, Lcom/tcp2usb/k;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tcp2usb/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tcp2usb/k;->c:Lcom/tcp2usb/h$a;

    iget-object v0, v0, Lcom/tcp2usb/h$a;->a:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    iget-object v1, p0, Lcom/tcp2usb/k;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tcp2usb/k;->b:I

    invoke-interface {v0, v1, v2}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onUSBDeviceStatus(Ljava/lang/String;I)V

    return-void
.end method
