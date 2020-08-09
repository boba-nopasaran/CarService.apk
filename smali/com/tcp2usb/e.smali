.class Lcom/tcp2usb/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tcp2usb/UsbTransfer$b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tcp2usb/e$a;
    }
.end annotation


# static fields
.field private static k:Lcom/tcp2usb/e;


# instance fields
.field private a:Landroid/hardware/usb/UsbManager;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

.field private e:Lcom/tcp2usb/UsbTransfer$a;

.field private f:Landroid/hardware/usb/UsbAccessory;

.field private g:Ljava/io/FileInputStream;

.field private h:Ljava/io/FileOutputStream;

.field private i:Landroid/os/ParcelFileDescriptor;

.field private j:Z

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tcp2usb/f;

    invoke-direct {v0, p0}, Lcom/tcp2usb/f;-><init>(Lcom/tcp2usb/e;)V

    iput-object v0, p0, Lcom/tcp2usb/e;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/tcp2usb/e;)Lcom/tcp2usb/UsbTransfer$AccessoryListener;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/e;->d:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    return-object v0
.end method

.method public static a()Lcom/tcp2usb/e;
    .locals 1

    sget-object v0, Lcom/tcp2usb/e;->k:Lcom/tcp2usb/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tcp2usb/e;

    invoke-direct {v0}, Lcom/tcp2usb/e;-><init>()V

    sput-object v0, Lcom/tcp2usb/e;->k:Lcom/tcp2usb/e;

    :cond_0
    sget-object v0, Lcom/tcp2usb/e;->k:Lcom/tcp2usb/e;

    return-object v0
.end method

.method private a([BZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/tcp2usb/e;->d:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->getUSBSnoopString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    array-length v4, v1

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    const v3, 0x27afe2d8

    array-length v1, v1

    invoke-static {p1, v2, v3, v1}, Lcom/tcp2usb/m;->a([BBII)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/tcp2usb/e;->a([BI)V

    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write snoop response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,first= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tcp2usb/e;->d:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    invoke-interface {v2, p1}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->isOurAccessory(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tcp2usb/e;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/tcp2usb/e;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tcp2usb.usbdevice.USB_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/tcp2usb/e;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {p0, v2}, Lcom/tcp2usb/e;->b(Landroid/hardware/usb/UsbAccessory;)V

    iget-object v2, p0, Lcom/tcp2usb/e;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p1}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/tcp2usb/e;->i:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/tcp2usb/e;->i:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_3

    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t open accessroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tcp2usb/e;->i:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/tcp2usb/e;->h:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/tcp2usb/e;->g:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/tcp2usb/e;->e:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$a;->onUSBReset()V

    iget-object v0, p0, Lcom/tcp2usb/e;->d:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->onUSBAccessoryStatus(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tcp2usb/e;->j:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v2, "ReadLoop"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open accessory OK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tcp2usb/e;Landroid/hardware/usb/UsbAccessory;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tcp2usb/e;->a(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tcp2usb/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tcp2usb/e;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/tcp2usb/e;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "TCP2USB"

    const-string v1, "No Accessory List Found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/tcp2usb/e;->a(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/hardware/usb/UsbAccessory;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tcp2usb/e;->d:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    invoke-interface {v0, p1}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->isOurAccessory(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tcp2usb/e;->e:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$a;->onUSBReset()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    iget-object v1, p0, Lcom/tcp2usb/e;->i:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/tcp2usb/n;->a(Landroid/os/ParcelFileDescriptor;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/e;->i:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tcp2usb/e;->h:Ljava/io/FileOutputStream;

    :goto_1
    iget-boolean v1, p0, Lcom/tcp2usb/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "TCP2USB"

    const-string v2, "wait thread to exit..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v1, "TCP2USB"

    const-string v2, "wait thread to exit done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/tcp2usb/e;->g:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/tcp2usb/e;->d:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/tcp2usb/UsbTransfer$AccessoryListener;->onUSBAccessoryStatus(Ljava/lang/String;I)V

    const-string v0, "TCP2USB"

    const-string v1, "close accessory OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tcp2usb/e;Landroid/hardware/usb/UsbAccessory;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tcp2usb/e;->b(Landroid/hardware/usb/UsbAccessory;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tcp2usb/e;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/tcp2usb/e;->b:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/tcp2usb/e;->a:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tcp2usb/UsbTransfer$AccessoryListener;Lcom/tcp2usb/UsbTransfer$a;)V
    .locals 3

    iget-object v0, p0, Lcom/tcp2usb/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tcp2usb/e;->b:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/tcp2usb/e;->a:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tcp2usb/e;->b:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/tcp2usb/e;->a:Landroid/hardware/usb/UsbManager;

    :cond_1
    iput-object p3, p0, Lcom/tcp2usb/e;->e:Lcom/tcp2usb/UsbTransfer$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tcp2usb/e;->c:Landroid/os/Handler;

    new-instance v0, Lcom/tcp2usb/e$a;

    invoke-direct {v0, p0, p2}, Lcom/tcp2usb/e$a;-><init>(Lcom/tcp2usb/e;Lcom/tcp2usb/UsbTransfer$AccessoryListener;)V

    iput-object v0, p0, Lcom/tcp2usb/e;->d:Lcom/tcp2usb/UsbTransfer$AccessoryListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tcp2usb.usbdevice.USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tcp2usb/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tcp2usb/e;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/tcp2usb/e;->b()V

    const-string v0, "TCP2USB"

    const-string v1, "init OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tcp2usb/e;->h:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "TCP2USB"

    const-string v3, "usb readLoop enter"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x4000

    new-array v3, v0, [B

    new-instance v4, Lcom/tcp2usb/b;

    invoke-direct {v4}, Lcom/tcp2usb/b;-><init>()V

    new-instance v5, Lcom/tcp2usb/m;

    invoke-direct {v5}, Lcom/tcp2usb/m;-><init>()V

    iput-object v3, v5, Lcom/tcp2usb/m;->d:[B

    iget-object v0, p0, Lcom/tcp2usb/e;->e:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v0}, Lcom/tcp2usb/UsbTransfer$a;->onUSBReset()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v3, v0}, Lcom/tcp2usb/e;->a([BZ)V

    move v0, v2

    :cond_0
    iget-object v6, p0, Lcom/tcp2usb/e;->g:Ljava/io/FileInputStream;

    invoke-virtual {v6, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_1

    const-string v0, "TCP2USB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb read return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-enter p0

    :try_start_1
    const-string v0, "TCP2USB"

    const-string v1, "usb read thread will exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tcp2usb/e;->j:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {p0, v0}, Lcom/tcp2usb/e;->b(Landroid/hardware/usb/UsbAccessory;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    const-string v0, "TCP2USB"

    const-string v1, "usb readLoop exited"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v4, v3, v6}, Lcom/tcp2usb/b;->a([BI)V

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/tcp2usb/b;->a(ZLcom/tcp2usb/m;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-byte v6, v5, Lcom/tcp2usb/m;->a:B

    if-eq v6, v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/tcp2usb/e;->e:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v6}, Lcom/tcp2usb/UsbTransfer$a;->onUSBReset()V

    invoke-direct {p0, v3, v0}, Lcom/tcp2usb/e;->a([BZ)V

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tcp2usb/e;->e:Lcom/tcp2usb/UsbTransfer$a;

    invoke-interface {v0, v5}, Lcom/tcp2usb/UsbTransfer$a;->onPacketReceived(Lcom/tcp2usb/m;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TCP2USB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usb readLoop error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-enter p0

    :try_start_4
    const-string v0, "TCP2USB"

    const-string v1, "usb read thread will exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tcp2usb/e;->j:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {p0, v0}, Lcom/tcp2usb/e;->b(Landroid/hardware/usb/UsbAccessory;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    monitor-enter p0

    :try_start_6
    const-string v1, "TCP2USB"

    const-string v2, "usb read thread will exit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tcp2usb/e;->j:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/tcp2usb/e;->f:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {p0, v1}, Lcom/tcp2usb/e;->b(Landroid/hardware/usb/UsbAccessory;)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method
