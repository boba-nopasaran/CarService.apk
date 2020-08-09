.class final Lcom/tcp2usb/d;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v5, v1, [B

    array-length v1, v0

    invoke-static {v0, v3, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    aput-byte v3, v5, v0

    const/16 v1, 0x40

    const/16 v2, 0x34

    array-length v6, v5

    const/16 v7, 0x2710

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    return-void
.end method

.method static a(Landroid/hardware/usb/UsbDeviceConnection;Lcom/tcp2usb/UsbTransfer$AccessoryInformation;)Z
    .locals 12

    const/4 v11, 0x2

    const/16 v10, -0x46

    const/16 v9, -0x53

    const/4 v8, 0x1

    const/4 v3, 0x0

    new-array v5, v11, [B

    aput-byte v10, v5, v3

    aput-byte v9, v5, v8

    const/16 v1, 0xc0

    const/16 v2, 0x33

    array-length v6, v5

    const/16 v7, 0x2710

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    const-string v0, "TCP2USB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocol version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v5, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v5, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v0, v5, v3

    if-eq v0, v10, :cond_0

    aget-byte v0, v5, v8

    if-ne v0, v9, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p1, Lcom/tcp2usb/UsbTransfer$AccessoryInformation;->manufacturer:Ljava/lang/String;

    invoke-static {p0, v3, v0}, Lcom/tcp2usb/d;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    iget-object v0, p1, Lcom/tcp2usb/UsbTransfer$AccessoryInformation;->model:Ljava/lang/String;

    invoke-static {p0, v8, v0}, Lcom/tcp2usb/d;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    iget-object v0, p1, Lcom/tcp2usb/UsbTransfer$AccessoryInformation;->description:Ljava/lang/String;

    invoke-static {p0, v11, v0}, Lcom/tcp2usb/d;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p1, Lcom/tcp2usb/UsbTransfer$AccessoryInformation;->version:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tcp2usb/d;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p1, Lcom/tcp2usb/UsbTransfer$AccessoryInformation;->url:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tcp2usb/d;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p1, Lcom/tcp2usb/UsbTransfer$AccessoryInformation;->serial:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tcp2usb/d;->a(Landroid/hardware/usb/UsbDeviceConnection;ILjava/lang/String;)V

    const/16 v1, 0x40

    const/16 v2, 0x35

    const/4 v5, 0x0

    const/16 v7, 0x2710

    move-object v0, p0

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    const-string v0, "TCP2USB"

    const-string v1, "setAccessoryMode Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    goto :goto_0
.end method
