.class Lcom/tcp2usb/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tcp2usb/e$a;


# direct methods
.method constructor <init>(Lcom/tcp2usb/e$a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/g;->c:Lcom/tcp2usb/e$a;

    iput-object p2, p0, Lcom/tcp2usb/g;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tcp2usb/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tcp2usb/g;->c:Lcom/tcp2usb/e$a;

    iget-object v0, v0, Lcom/tcp2usb/e$a;->a:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    iget-object v1, p0, Lcom/tcp2usb/g;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tcp2usb/g;->b:I

    invoke-interface {v0, v1, v2}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->onUSBAccessoryStatus(Ljava/lang/String;I)V

    return-void
.end method
