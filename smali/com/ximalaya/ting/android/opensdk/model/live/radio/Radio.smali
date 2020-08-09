.class public Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
.super Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field private coverUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_small"
    .end annotation
.end field

.field private endTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
    .end annotation
.end field

.field private programName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "program_name"
    .end annotation
.end field

.field private radioDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radio_desc"
    .end annotation
.end field

.field private radioName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radio_name"
    .end annotation
.end field

.field private radioPlayCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radio_play_count"
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

.field private scheduleID:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "schedule_id"
    .end annotation
.end field

.field private startTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
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

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->endTime:J

    return-wide v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioPlayCount()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioPlayCount:I

    return v0
.end method

.method public getRate24AacUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate24TsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate64AacUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate64TsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleID()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->scheduleID:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->startTime:J

    return-wide v0
.end method

.method public getSupportBitrates()[I
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    return-object v0
.end method

.method public getUpdateAt()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->updateAt:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRadioName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRadioDesc(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setProgramName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setScheduleID(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setStartTime(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setEndTime(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setSupportBitrates([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRate24AacUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRate24TsUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRate64AacUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRate64TsUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRadioPlayCount(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setCoverUrlSmall(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setCoverUrlLarge(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setUpdateAt(J)V

    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlLarge:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlSmall:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->endTime:J

    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->programName:Ljava/lang/String;

    return-void
.end method

.method public setRadioDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioDesc:Ljava/lang/String;

    return-void
.end method

.method public setRadioName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioName:Ljava/lang/String;

    return-void
.end method

.method public setRadioPlayCount(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioPlayCount:I

    return-void
.end method

.method public setRate24AacUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24AacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate24TsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24TsUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate64AacUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64AacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate64TsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64TsUrl:Ljava/lang/String;

    return-void
.end method

.method public setScheduleID(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->scheduleID:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->startTime:J

    return-void
.end method

.method public setSupportBitrates([I)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    return-void
.end method

.method public setUpdateAt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->updateAt:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->programName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->scheduleID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioPlayCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->updateAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    array-length v0, v0

    goto :goto_0
.end method
