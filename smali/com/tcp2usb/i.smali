.class Lcom/tcp2usb/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tcp2usb/h;


# direct methods
.method constructor <init>(Lcom/tcp2usb/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tcp2usb/i;->a:Lcom/tcp2usb/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/i;->a:Lcom/tcp2usb/h;

    invoke-static {v0}, Lcom/tcp2usb/h;->a(Lcom/tcp2usb/h;)V

    return-void
.end method
