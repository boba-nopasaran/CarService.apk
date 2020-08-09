.class final Lcom/tcp2usb/TCPProxy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcp2usb/TCPProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tcp2usb/TCPProxy$a;->b:I

    iput p2, p0, Lcom/tcp2usb/TCPProxy$a;->a:I

    return-void
.end method
