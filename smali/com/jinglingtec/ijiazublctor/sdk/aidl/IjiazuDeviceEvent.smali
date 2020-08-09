.class public Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;
.super Ljava/lang/Object;
.source "IjiazuDeviceEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field actionCode:I

.field deviceId:Ljava/lang/String;

.field keyCode:I

.field mac:Ljava/lang/String;

.field status:I

.field supported:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent$1;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent$1;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v0, 0xd8ff4

    const v1, 0xd8fe0

    const v2, 0xd8fea

    const v3, 0xd9012

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;-><init>(IIII)V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->status:I

    iput p2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->keyCode:I

    iput p3, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->actionCode:I

    iput p4, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->supported:I

    const-string v0, ""

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->mac:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->status:I

    const-string v0, "keyCode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->keyCode:I

    const-string v0, "actionCode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->actionCode:I

    const-string v0, "supported"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->supported:I

    const-string v0, "mac"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->mac:Ljava/lang/String;

    const-string v0, "deviceId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->deviceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;
    .locals 1

    invoke-static {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->getKeyEvent(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyEvent(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;

    invoke-direct {v1, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public generateBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "keyCode"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->keyCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "actionCode"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->actionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "supported"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->supported:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mac"

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getActionCode()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->actionCode:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->keyCode:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->status:I

    return v0
.end method

.method public getSupported()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->supported:I

    return v0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->actionCode:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->keyCode:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->mac:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->status:I

    return-void
.end method

.method public setSupported(I)V
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->supported:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IjiazuDeviceEvent{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->actionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->supported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuDeviceEvent;->generateBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
