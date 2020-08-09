.class public Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private announcerList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "live_announcers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;",
            ">;"
        }
    .end annotation
.end field

.field private backPicUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "back_pic_url"
    .end annotation
.end field

.field private programId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private programName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "program_name"
    .end annotation
.end field

.field private rate24AacUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate24_aac_url"
    .end annotation
.end field

.field private rate24TsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate24_ts_url"
    .end annotation
.end field

.field private rate64AacUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate64_aac_url"
    .end annotation
.end field

.field private rate64TsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate64_ts_url"
    .end annotation
.end field

.field private supportBitrates:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "support_bitrates"
    .end annotation
.end field

.field private updateAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnnouncerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->announcerList:Ljava/util/List;

    return-object v0
.end method

.method public getBackPicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->backPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramId()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->programId:J

    return-wide v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public getRate24AacUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate24AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate24TsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate24TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate64AacUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate64AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate64TsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate64TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportBitrates()[I
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->supportBitrates:[I

    return-object v0
.end method

.method public getUpdateAt()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->updateAt:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setProgramId(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setProgramName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setBackPicUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setSupportBitrates([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setRate24AacUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setRate24TsUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setRate64AacUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setRate64TsUrl(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setAnnouncerList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setUpdateAt(J)V

    return-void
.end method

.method public setAnnouncerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->announcerList:Ljava/util/List;

    return-void
.end method

.method public setBackPicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->backPicUrl:Ljava/lang/String;

    return-void
.end method

.method public setProgramId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->programId:J

    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->programName:Ljava/lang/String;

    return-void
.end method

.method public setRate24AacUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate24AacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate24TsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate24TsUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate64AacUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate64AacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate64TsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate64TsUrl:Ljava/lang/String;

    return-void
.end method

.method public setSupportBitrates([I)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->supportBitrates:[I

    return-void
.end method

.method public setUpdateAt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->updateAt:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->programId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->programName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->backPicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->supportBitrates:[I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->supportBitrates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate24AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate24TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate64AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->rate64TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->announcerList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->updateAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->supportBitrates:[I

    array-length v0, v0

    goto :goto_0
.end method
