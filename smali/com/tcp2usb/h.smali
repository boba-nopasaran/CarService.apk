.class Lcom/tcp2usb/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tcp2usb/UsbTransfer$b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tcp2usb/h$a;
    }
.end annotation


# static fields
.field static a:Lcom/tcp2usb/h;


# instance fields
.field private b:Landroid/hardware/usb/UsbManager;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

.field private f:Lcom/tcp2usb/UsbTransfer$a;

.field private g:Landroid/hardware/usb/UsbDevice;

.field private h:Ljava/lang/String;

.field private i:Landroid/hardware/usb/UsbInterface;

.field private j:Landroid/hardware/usb/UsbDeviceConnection;

.field private k:Landroid/hardware/usb/UsbEndpoint;

.field private l:Landroid/hardware/usb/UsbEndpoint;

.field private m:Z

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tcp2usb/j;

    invoke-direct {v0, p0}, Lcom/tcp2usb/j;-><init>(Lcom/tcp2usb/h;)V

    iput-object v0, p0, Lcom/tcp2usb/h;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a()Lcom/tcp2usb/h;
    .locals 1

    sget-object v0, Lcom/tcp2usb/h;->a:Lcom/tcp2usb/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tcp2usb/h;

    invoke-direct {v0}, Lcom/tcp2usb/h;-><init>()V

    sput-object v0, Lcom/tcp2usb/h;->a:Lcom/tcp2usb/h;

    :cond_0
    sget-object v0, Lcom/tcp2usb/h;->a:Lcom/tcp2usb/h;

    return-object v0
.end method

.method static synthetic a(Lcom/tcp2usb/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/tcp2usb/h;->c()V

    return-void
.end method

.method static synthetic b(Lcom/tcp2usb/h;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/h;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Landroid/hardware/usb/UsbDevice;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    invoke-interface {v2, p1}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->checkDeviceMode(Landroid/hardware/usb/UsbDevice;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/tcp2usb/h;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t openDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    invoke-interface {v2}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->getAccessoryInfomation()Lcom/tcp2usb/UsbTransfer$AccessoryInformation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tcp2usb/d;->a(Landroid/hardware/usb/UsbDeviceConnection;Lcom/tcp2usb/UsbTransfer$AccessoryInformation;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TCP2USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t set accessory mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const-string v3, "TCP2USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/tcp2usb/h;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    iget-object v2, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v1, "TCP2USB"

    const-string v2, "claimInterface error, we will continue to run...."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onUSBDeviceStatus(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "TCP2USB"

    const-string v3, "openUsbDevice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    const-string v2, ""

    invoke-interface {v1, v2, v7}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onUSBDeviceStatus(Ljava/lang/String;I)V

    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open usb device fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    const-string v2, "TCP2USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inertface 0 has endpoint count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_6

    iput-object v3, p0, Lcom/tcp2usb/h;->k:Landroid/hardware/usb/UsbEndpoint;

    const-string v4, "TCP2USB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endpoint "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is IN endpoint"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-nez v4, :cond_7

    iput-object v3, p0, Lcom/tcp2usb/h;->l:Landroid/hardware/usb/UsbEndpoint;

    const-string v3, "TCP2USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endpoint "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is OUT endpoint"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/tcp2usb/h;->k:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/tcp2usb/h;->l:Landroid/hardware/usb/UsbEndpoint;

    if-nez v2, :cond_a

    :cond_9
    const-string v1, "TCP2USB"

    const-string v2, "endpoins in both direction not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onUSBDeviceStatus(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    monitor-exit p0

    goto/16 :goto_0

    :cond_a
    iput-object p1, p0, Lcom/tcp2usb/h;->g:Landroid/hardware/usb/UsbDevice;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tcp2usb/h;->m:Z

    new-instance v2, Ljava/lang/Thread;

    const-string v3, "UsbReadLoop"

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string v2, "TCP2USB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open usb device ok:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/tcp2usb/h;)Lcom/tcp2usb/UsbTransfer$DeviceListener;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/tcp2usb/h;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TCP2USB"

    const-string v1, "No Device List Found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, v0}, Lcom/tcp2usb/h;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method static synthetic d(Lcom/tcp2usb/h;)Landroid/hardware/usb/UsbDevice;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/h;->g:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method private d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tcp2usb/h;->g:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    const-string v0, "TCP2USB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->g:Landroid/hardware/usb/UsbDevice;

    :cond_0
    iget-boolean v0, p0, Lcom/tcp2usb/h;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    iget-object v1, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onUSBDeviceStatus(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/tcp2usb/h;->m:Z

    if-eqz v0, :cond_5

    const-string v0, "TCP2USB"

    const-string v1, "wait thread to exit ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v0, "TCP2USB"

    const-string v1, "wait thread wait exited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TCP2USB"

    const-string v2, "closeUsbDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->k:Landroid/hardware/usb/UsbEndpoint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->l:Landroid/hardware/usb/UsbEndpoint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->g:Landroid/hardware/usb/UsbDevice;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tcp2usb/h;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/tcp2usb/h;->f:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$a;->onUSBReset()V

    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->k:Landroid/hardware/usb/UsbEndpoint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->l:Landroid/hardware/usb/UsbEndpoint;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->g:Landroid/hardware/usb/UsbDevice;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tcp2usb/h;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/tcp2usb/h;->f:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$a;->onUSBReset()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/tcp2usb/h;->i:Landroid/hardware/usb/UsbInterface;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/h;->k:Landroid/hardware/usb/UsbEndpoint;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/h;->l:Landroid/hardware/usb/UsbEndpoint;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/h;->g:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tcp2usb/h;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/tcp2usb/h;->f:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v1}, Lcom/tcp2usb/UsbTransfer$a;->onUSBReset()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method static synthetic e(Lcom/tcp2usb/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tcp2usb/h;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/tcp2usb/h;->c:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/tcp2usb/h;->b:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$DeviceListener;Lcom/tcp2usb/UsbTransfer$a;)V
    .locals 3

    iget-object v0, p0, Lcom/tcp2usb/h;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tcp2usb/h;->c:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/tcp2usb/h;->b:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tcp2usb/h;->c:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/tcp2usb/h;->b:Landroid/hardware/usb/UsbManager;

    :cond_1
    new-instance v0, Lcom/tcp2usb/h$a;

    invoke-direct {v0, p0, p2}, Lcom/tcp2usb/h$a;-><init>(Lcom/tcp2usb/h;Lcom/tcp2usb/UsbTransfer$DeviceListener;)V

    iput-object v0, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    iput-object p3, p0, Lcom/tcp2usb/h;->f:Lcom/tcp2usb/UsbTransfer$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tcp2usb/h;->d:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tcp2usb.usbhost.USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tcp2usb/h;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tcp2usb/h;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tcp2usb/i;

    invoke-direct {v1, p0}, Lcom/tcp2usb/i;-><init>(Lcom/tcp2usb/h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x4000

    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too big:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bulkTransfer connection is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/tcp2usb/h;->l:Landroid/hardware/usb/UsbEndpoint;

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    if-eq v0, p2, :cond_2

    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write length error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bulkTransfer error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tcp2usb/h;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TCP2USB"

    const-string v1, "tryOpenOurUsbDevice call With Permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/tcp2usb/h;->b(Landroid/hardware/usb/UsbDevice;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "TCP2USB"

    const-string v1, "tryOpenOurUsbDevice call Without Permission, request Permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tcp2usb/h;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tcp2usb.usbhost.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/tcp2usb/h;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const-string v0, "TCP2USB"

    const-string v1, "deinit host side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tcp2usb/h;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tcp2usb/h;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tcp2usb/h;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tcp2usb/h;->n:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x4000

    new-array v2, v2, [B

    const-string v3, "TCP2USB"

    const-string v4, "readLoop enter"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/tcp2usb/b;

    invoke-direct {v3}, Lcom/tcp2usb/b;-><init>()V

    :try_start_0
    const-string v4, "TCP2USB"

    const-string v5, "send snoop request to device..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const v5, 0x27afe2d8

    invoke-static {v2, v4, v5}, Lcom/tcp2usb/m;->a([BBI)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/tcp2usb/h;->a([BI)V

    new-instance v4, Lcom/tcp2usb/m;

    invoke-direct {v4}, Lcom/tcp2usb/m;-><init>()V

    iput-object v2, v4, Lcom/tcp2usb/m;->d:[B

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/tcp2usb/h;->j:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/tcp2usb/h;->k:Landroid/hardware/usb/UsbEndpoint;

    array-length v7, v2

    const v8, 0x36ee80

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v5

    if-gtz v5, :cond_1

    const-string v6, "TCP2USB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read timeout or error, ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usb readLoop error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-enter p0

    :try_start_2
    const-string v0, "TCP2USB"

    const-string v1, "will exit read thread now..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tcp2usb/h;->m:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    :goto_1
    const-string v0, "TCP2USB"

    const-string v1, "readLoop exited"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v3, v2, v5}, Lcom/tcp2usb/b;->a([BI)V

    :goto_2
    invoke-virtual {v3, v0, v4}, Lcom/tcp2usb/b;->a(ZLcom/tcp2usb/m;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-byte v5, v4, Lcom/tcp2usb/m;->a:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v5, v4, Lcom/tcp2usb/m;->d:[B

    const/4 v6, 0x0

    iget-short v7, v4, Lcom/tcp2usb/m;->b:S

    const-string v8, "UTF-8"

    invoke-direct {v0, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    const-string v0, "TCP2USB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "snoop response is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tcp2usb/h;->f:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$a;->onUSBReset()V

    iget-object v0, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    iget-object v5, p0, Lcom/tcp2usb/h;->h:Ljava/lang/String;

    const/16 v6, 0x64

    invoke-interface {v0, v5, v6}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onUSBDeviceStatus(Ljava/lang/String;I)V

    move v0, v1

    goto :goto_2

    :cond_2
    iget-byte v5, v4, Lcom/tcp2usb/m;->a:B

    const/16 v6, 0x50

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Lcom/tcp2usb/h;->e:Lcom/tcp2usb/UsbTransfer$DeviceListener;

    iget-byte v6, v4, Lcom/tcp2usb/m;->a:B

    iget-object v7, v4, Lcom/tcp2usb/m;->d:[B

    invoke-interface {v5, v6, v7}, Lcom/tcp2usb/UsbTransfer$DeviceListener;->onCustomCommand(B[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-enter p0

    :try_start_4
    const-string v1, "TCP2USB"

    const-string v2, "will exit read thread now..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tcp2usb/h;->m:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    throw v0

    :cond_3
    if-nez v0, :cond_4

    :try_start_5
    iget-object v5, p0, Lcom/tcp2usb/h;->f:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v5, v4}, Lcom/tcp2usb/UsbTransfer$a;->onPacketReceived(Lcom/tcp2usb/m;)V

    goto :goto_2

    :cond_4
    const-string v5, "TCP2USB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore un-sync command:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v4, Lcom/tcp2usb/m;->a:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :cond_5
    monitor-enter p0

    :try_start_6
    const-string v0, "TCP2USB"

    const-string v1, "will exit read thread now..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tcp2usb/h;->m:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-direct {p0}, Lcom/tcp2usb/h;->d()V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method
