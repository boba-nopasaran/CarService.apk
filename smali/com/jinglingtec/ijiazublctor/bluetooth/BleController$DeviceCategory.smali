.class final enum Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;
.super Ljava/lang/Enum;
.source "BleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/bluetooth/BleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

.field public static final enum DC_CROWDFUNDING:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

.field public static final enum DC_GENERAL_4_DIRECTION:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

.field public static final enum DC_INVALID:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

.field public static final enum DC_SWITCH_OK_RIGHT:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    const-string v1, "DC_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_INVALID:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    const-string v1, "DC_CROWDFUNDING"

    invoke-direct {v0, v1, v3}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_CROWDFUNDING:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    const-string v1, "DC_GENERAL_4_DIRECTION"

    invoke-direct {v0, v1, v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_GENERAL_4_DIRECTION:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    new-instance v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    const-string v1, "DC_SWITCH_OK_RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_SWITCH_OK_RIGHT:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_INVALID:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_CROWDFUNDING:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_GENERAL_4_DIRECTION:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->DC_SWITCH_OK_RIGHT:Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->$VALUES:[Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;
    .locals 1

    const-class v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    return-object v0
.end method

.method public static values()[Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;
    .locals 1

    sget-object v0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->$VALUES:[Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    invoke-virtual {v0}, [Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jinglingtec/ijiazublctor/bluetooth/BleController$DeviceCategory;

    return-object v0
.end method
