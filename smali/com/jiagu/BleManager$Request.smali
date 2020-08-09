.class public final Lcom/jiagu/BleManager$Request;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiagu/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiagu/BleManager$Request$Type;
    }
.end annotation


# instance fields
.field private FlagUsed:Z

.field private final callback:Lcom/jiagu/BleListener$OnCharacteristic;

.field private final characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final mac:Ljava/lang/String;

.field private final service:Landroid/bluetooth/BluetoothGattService;

.field private final type:Lcom/jiagu/BleManager$Request$Type;

.field private final value:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/jiagu/BleManager$Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/jiagu/BleListener$OnCharacteristic;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiagu/BleManager$Request;->FlagUsed:Z

    iput-object p2, p0, Lcom/jiagu/BleManager$Request;->type:Lcom/jiagu/BleManager$Request$Type;

    iput-object p3, p0, Lcom/jiagu/BleManager$Request;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object v1, p0, Lcom/jiagu/BleManager$Request;->value:[B

    iput-object p1, p0, Lcom/jiagu/BleManager$Request;->mac:Ljava/lang/String;

    iput-object p4, p0, Lcom/jiagu/BleManager$Request;->callback:Lcom/jiagu/BleListener$OnCharacteristic;

    iput-object v1, p0, Lcom/jiagu/BleManager$Request;->service:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/jiagu/BleManager$Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/jiagu/BleListener$OnCharacteristic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiagu/BleManager$Request;->FlagUsed:Z

    iput-object p2, p0, Lcom/jiagu/BleManager$Request;->type:Lcom/jiagu/BleManager$Request$Type;

    iput-object p3, p0, Lcom/jiagu/BleManager$Request;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p4, p0, Lcom/jiagu/BleManager$Request;->value:[B

    iput-object p1, p0, Lcom/jiagu/BleManager$Request;->mac:Ljava/lang/String;

    iput-object p5, p0, Lcom/jiagu/BleManager$Request;->callback:Lcom/jiagu/BleListener$OnCharacteristic;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiagu/BleManager$Request;->service:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/jiagu/BleManager$Request$Type;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/jiagu/BleListener$OnCharacteristic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiagu/BleManager$Request;->FlagUsed:Z

    iput-object p2, p0, Lcom/jiagu/BleManager$Request;->type:Lcom/jiagu/BleManager$Request$Type;

    iput-object p3, p0, Lcom/jiagu/BleManager$Request;->service:Landroid/bluetooth/BluetoothGattService;

    iput-object p4, p0, Lcom/jiagu/BleManager$Request;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p5, p0, Lcom/jiagu/BleManager$Request;->value:[B

    iput-object p1, p0, Lcom/jiagu/BleManager$Request;->mac:Ljava/lang/String;

    iput-object p6, p0, Lcom/jiagu/BleManager$Request;->callback:Lcom/jiagu/BleListener$OnCharacteristic;

    return-void
.end method

.method static synthetic access$1100(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleManager$Request$Type;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager$Request;->type:Lcom/jiagu/BleManager$Request$Type;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/jiagu/BleManager$Request;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager$Request;->mac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/jiagu/BleManager$Request;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager$Request;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/jiagu/BleManager$Request;)[B
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager$Request;->value:[B

    return-object v0
.end method

.method static synthetic access$2200(Lcom/jiagu/BleManager$Request;)Lcom/jiagu/BleListener$OnCharacteristic;
    .locals 1

    iget-object v0, p0, Lcom/jiagu/BleManager$Request;->callback:Lcom/jiagu/BleListener$OnCharacteristic;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiagu/BleManager$Request;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jiagu/BleManager$Request;->FlagUsed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/jiagu/BleManager$Request;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jiagu/BleManager$Request;->FlagUsed:Z

    return p1
.end method

.method public static newEnableIndicationsRequest(Ljava/lang/String;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/jiagu/BleListener$OnCharacteristic;)Lcom/jiagu/BleManager$Request;
    .locals 2

    new-instance v0, Lcom/jiagu/BleManager$Request;

    sget-object v1, Lcom/jiagu/BleManager$Request$Type;->ENABLE_INDICATIONS:Lcom/jiagu/BleManager$Request$Type;

    invoke-direct {v0, p0, v1, p2, p4}, Lcom/jiagu/BleManager$Request;-><init>(Ljava/lang/String;Lcom/jiagu/BleManager$Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/jiagu/BleListener$OnCharacteristic;)V

    return-object v0
.end method

.method public static newEnableNotificationsRequest(Ljava/lang/String;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/jiagu/BleListener$OnCharacteristic;)Lcom/jiagu/BleManager$Request;
    .locals 7

    new-instance v0, Lcom/jiagu/BleManager$Request;

    sget-object v2, Lcom/jiagu/BleManager$Request$Type;->ENABLE_NOTIFICATIONS:Lcom/jiagu/BleManager$Request$Type;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/jiagu/BleManager$Request;-><init>(Ljava/lang/String;Lcom/jiagu/BleManager$Request$Type;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/jiagu/BleListener$OnCharacteristic;)V

    return-object v0
.end method

.method public static newReadRequest(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/jiagu/BleListener$OnCharacteristic;)Lcom/jiagu/BleManager$Request;
    .locals 2

    new-instance v0, Lcom/jiagu/BleManager$Request;

    sget-object v1, Lcom/jiagu/BleManager$Request$Type;->READ:Lcom/jiagu/BleManager$Request$Type;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/jiagu/BleManager$Request;-><init>(Ljava/lang/String;Lcom/jiagu/BleManager$Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/jiagu/BleListener$OnCharacteristic;)V

    return-object v0
.end method

.method public static newWriteRequest(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;[BZLcom/jiagu/BleListener$OnCharacteristic;)Lcom/jiagu/BleManager$Request;
    .locals 6

    new-instance v0, Lcom/jiagu/BleManager$Request;

    if-eqz p3, :cond_0

    sget-object v2, Lcom/jiagu/BleManager$Request$Type;->WRITE:Lcom/jiagu/BleManager$Request$Type;

    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jiagu/BleManager$Request;-><init>(Ljava/lang/String;Lcom/jiagu/BleManager$Request$Type;Landroid/bluetooth/BluetoothGattCharacteristic;[BLcom/jiagu/BleListener$OnCharacteristic;)V

    return-object v0

    :cond_0
    sget-object v2, Lcom/jiagu/BleManager$Request$Type;->WRITE_TYPE_NO_RESPONSE:Lcom/jiagu/BleManager$Request$Type;

    goto :goto_0
.end method
