.class public Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field device:I

.field deviceName:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->type:I

    iput p2, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->device:I

    iput-object p3, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->deviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDevice()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->device:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->setType(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->setDevice(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public setDevice(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->device:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->device:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
