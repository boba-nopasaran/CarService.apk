.class public Lcom/tcp2usb/UsbTransfer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tcp2usb/UsbTransfer$b;,
        Lcom/tcp2usb/UsbTransfer$a;,
        Lcom/tcp2usb/UsbTransfer$AccessoryListener;,
        Lcom/tcp2usb/UsbTransfer$DeviceListener;,
        Lcom/tcp2usb/UsbTransfer$AccessoryInformation;
    }
.end annotation


# static fields
.field public static final Status_Connected:I = 0x64

.field public static final Status_Disconnected:I = 0x0

.field public static final Status_NoPermission:I = -0x1f4

.field public static final Status_Probe_Error:I = 0x2

.field public static final Status_Probe_Start:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
