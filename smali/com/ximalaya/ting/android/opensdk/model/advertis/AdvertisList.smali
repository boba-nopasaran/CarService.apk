.class public Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private advertisList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private responseId:I

.field private ret:I

.field private source:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdvertisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseId()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->responseId:I

    return v0
.end method

.method public getRet()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    return v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->source:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setResponseId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setRet(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setSource(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setAdvertisList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setAdvertisList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResponseId(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->responseId:I

    return-void
.end method

.method public setRet(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->source:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisList [advertisList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->responseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->responseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
