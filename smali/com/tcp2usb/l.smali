.class Lcom/tcp2usb/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:B

.field final synthetic b:[B

.field final synthetic c:Lcom/tcp2usb/h$a;


# direct methods
.method constructor <init>(Lcom/tcp2usb/h$a;B[B)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/l;->c:Lcom/tcp2usb/h$a;

    iput-byte p2, p0, Lcom/tcp2usb/l;->a:B

    iput-object p3, p0, Lcom/tcp2usb/l;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tcp2usb/l;->c:Lcom/tcp2usb/h$a;

    iget-object v0, v0, Lcom/tcp2usb/h$a;->a:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    iget-byte v1, p0, Lcom/tcp2usb/l;->a:B

    iget-object v2, p0, Lcom/tcp2usb/l;->b:[B

    invoke-interface {v0, v1, v2}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onCustomCommand(B[B)V

    return-void
.end method
