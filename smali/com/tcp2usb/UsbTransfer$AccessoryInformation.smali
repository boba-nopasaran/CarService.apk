.class public final Lcom/tcp2usb/UsbTransfer$AccessoryInformation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tcp2usb/UsbTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessoryInformation"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public manufacturer:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
