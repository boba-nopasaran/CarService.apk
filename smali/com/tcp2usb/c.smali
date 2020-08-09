.class Lcom/tcp2usb/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tcp2usb/TCPProxy$c;


# direct methods
.method constructor <init>(Lcom/tcp2usb/TCPProxy$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/c;->a:Lcom/tcp2usb/TCPProxy$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tcp2usb/c;->a:Lcom/tcp2usb/TCPProxy$c;

    invoke-static {v0}, Lcom/tcp2usb/TCPProxy$c;->a(Lcom/tcp2usb/TCPProxy$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tcp2usb/c;->a:Lcom/tcp2usb/TCPProxy$c;

    invoke-static {v0}, Lcom/tcp2usb/TCPProxy$c;->b(Lcom/tcp2usb/TCPProxy$c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "write thread exited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tcp2usb/c;->a:Lcom/tcp2usb/TCPProxy$c;

    invoke-static {v1}, Lcom/tcp2usb/TCPProxy$c;->b(Lcom/tcp2usb/TCPProxy$c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeLoop error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
