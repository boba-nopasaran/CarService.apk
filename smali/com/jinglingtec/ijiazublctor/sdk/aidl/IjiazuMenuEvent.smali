.class public Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;
.super Ljava/lang/Object;
.source "IjiazuMenuEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field id:I

.field imgBytes:[B

.field text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent$1;

    invoke-direct {v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent$1;-><init>()V

    sput-object v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->id:I

    iput-object p2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->id:I

    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->text:Ljava/lang/String;

    const-string v0, "imgBytes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->imgBytes:[B

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;
    .locals 1

    invoke-static {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->getMenuEvent(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;

    move-result-object v0

    return-object v0
.end method

.method private static getMenuEvent(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;

    invoke-direct {v1, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;-><init>(Landroid/os/Bundle;)V

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

    const-string v1, "id"

    iget v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "text"

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imgBytes"

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->imgBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->id:I

    return v0
.end method

.method public getImgBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->imgBytes:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->id:I

    return-void
.end method

.method public setImgBytes([B)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->imgBytes:[B

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IjiazuMenuEvent{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imgBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->imgBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->generateBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
