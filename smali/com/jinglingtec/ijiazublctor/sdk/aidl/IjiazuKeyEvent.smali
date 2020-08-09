.class public Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;
.super Ljava/lang/Object;
.source "IjiazuKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field actionCode:I

.field keyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent$1;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent$1;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0xd8fe0

    const v1, 0xd8fea

    invoke-direct {p0, v0, v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->keyCode:I

    iput p2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->actionCode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "keyCode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->keyCode:I

    const-string v0, "actionCode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->actionCode:I

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;
    .locals 1

    invoke-static {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->getKeyEvent(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyEvent(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;

    invoke-direct {v1, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;-><init>(Landroid/os/Bundle;)V

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

    const-string v1, "keyCode"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->keyCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "actionCode"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->actionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getActionCode()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->actionCode:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->keyCode:I

    return v0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->actionCode:I

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->keyCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IjiazuKeyEvent{keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->actionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuKeyEvent;->generateBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
