.class public Lcom/ximalaya/ting/android/opensdk/model/track/Track;
.super Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subordinated_album"
    .end annotation
.end field

.field private announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcer"
    .end annotation
.end field

.field private authorized:Z

.field private blockIndex:I

.field private blockNum:I

.field private commentCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment_count"
    .end annotation
.end field

.field private coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field private coverUrlMiddle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_middle"
    .end annotation
.end field

.field private coverUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_small"
    .end annotation
.end field

.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private discountedPrice:D

.field private downloadCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_count"
    .end annotation
.end field

.field private downloadSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_size"
    .end annotation
.end field

.field private downloadStatus:I

.field private downloadTime:J

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_url"
    .end annotation
.end field

.field private downloadedSaveFilePath:Ljava/lang/String;

.field private downloadedSize:J

.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private endTime:Ljava/lang/String;

.field public extra:Ljava/lang/Object;

.field private favoriteCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field private free:Z

.field private insertSequence:I

.field private isAutoPaused:Z

.field private isLike:Z

.field private isPaid:Z

.field private orderNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_num"
    .end annotation
.end field

.field private orderPositon:I

.field private playCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_count"
    .end annotation
.end field

.field private playPathHq:Ljava/lang/String;

.field private playSize24M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_24_m4a"
    .end annotation
.end field

.field private playSize32:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_32"
    .end annotation
.end field

.field private playSize64:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_64"
    .end annotation
.end field

.field private playSize64m4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_64_m4a"
    .end annotation
.end field

.field private playSource:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_source"
    .end annotation
.end field

.field private playUrl24M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_24_m4a"
    .end annotation
.end field

.field private playUrl32:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_32"
    .end annotation
.end field

.field private playUrl64:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_64"
    .end annotation
.end field

.field private playUrl64M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_64_m4a"
    .end annotation
.end field

.field private price:D

.field private priceTypeId:I

.field private programId:J

.field private protocolVersion:I

.field private radioId:J

.field private radioName:Ljava/lang/String;

.field private radioRate24AacUrl:Ljava/lang/String;

.field private radioRate24TsUrl:Ljava/lang/String;

.field private radioRate64AacUrl:Ljava/lang/String;

.field private radioRate64TsUrl:Ljava/lang/String;

.field private scheduleId:J

.field private sequenceId:Ljava/lang/String;

.field private source:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field private startTime:Ljava/lang/String;

.field private timeline:J

.field private trackIntro:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_intro"
    .end annotation
.end field

.field private trackStatus:I

.field private trackTags:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_tags"
    .end annotation
.end field

.field private trackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_title"
    .end annotation
.end field

.field private uid:J

.field private updatedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;-><init>()V

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderPositon:I

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    return-object v0
.end method

.method public getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    goto :goto_0
.end method

.method public getBlockIndex()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->blockIndex:I

    return v0
.end method

.method public getBlockNum()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->blockNum:I

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    return v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlMiddle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    return-wide v0
.end method

.method public getDiscountedPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->discountedPrice:D

    return-wide v0
.end method

.method public getDownloadCount()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    return v0
.end method

.method public getDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    return-wide v0
.end method

.method public getDownloadStatus()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    return v0
.end method

.method public getDownloadTime()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadTime:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSaveFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavoriteCount()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    return v0
.end method

.method public getInsertSequence()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    return v0
.end method

.method public getOrderNum()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    return v0
.end method

.method public getOrderPositon()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderPositon:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    return v0
.end method

.method public getPlayPathHq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playPathHq:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySize24M4a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySize32()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    return v0
.end method

.method public getPlaySize64()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    return v0
.end method

.method public getPlaySize64m4a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySource()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    return v0
.end method

.method public getPlayUrl24M4a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl32()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl64M4a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->price:D

    return-wide v0
.end method

.method public getPriceTypeId()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->priceTypeId:I

    return v0
.end method

.method public getProgramId()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    return-wide v0
.end method

.method public getProtocolVersion()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->protocolVersion:I

    return v0
.end method

.method public getRadioId()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    return-wide v0
.end method

.method public getRadioName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioRate24AacUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioRate24TsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioRate64AacUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioRate64TsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleId()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    return-wide v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeline()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    return-wide v0
.end method

.method public getTrackIntro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackStatus()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    return v0
.end method

.method public getTrackTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->uid:J

    return-wide v0
.end method

.method public getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    return-wide v0
.end method

.method public isAuthorized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->authorized:Z

    return v0
.end method

.method public isAutoPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    return v0
.end method

.method public isFree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    return v0
.end method

.method public isLike()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    return v0
.end method

.method public isPaid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isPaid:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    const-class v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    const-class v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playPathHq:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->authorized:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isPaid:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->price:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->discountedPrice:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->priceTypeId:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public setAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    return-void
.end method

.method public setAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    return-void
.end method

.method public setAuthorized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->authorized:Z

    return-void
.end method

.method public setAutoPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    return-void
.end method

.method public setBlockIndex(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->blockIndex:I

    return-void
.end method

.method public setBlockNum(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->blockNum:I

    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrlMiddle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    return-void
.end method

.method public setDiscountedPrice(D)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->discountedPrice:D

    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    return-void
.end method

.method public setDownloadSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    return-void
.end method

.method public setDownloadTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadTime:J

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setDownloadedSaveFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    return-void
.end method

.method public setFavoriteCount(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    return-void
.end method

.method public setFree(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    return-void
.end method

.method public setInsertSequence(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    return-void
.end method

.method public setLike(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    return-void
.end method

.method public setOrderNum(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    return-void
.end method

.method public setOrderPositon(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderPositon:I

    return-void
.end method

.method public setPaid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isPaid:Z

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    return-void
.end method

.method public setPlayPathHq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playPathHq:Ljava/lang/String;

    return-void
.end method

.method public setPlaySize24M4a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    return-void
.end method

.method public setPlaySize32(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    return-void
.end method

.method public setPlaySize64(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    return-void
.end method

.method public setPlaySize64m4a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    return-void
.end method

.method public setPlaySource(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    return-void
.end method

.method public setPlayUrl24M4a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    return-void
.end method

.method public setPlayUrl32(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    return-void
.end method

.method public setPlayUrl64(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    return-void
.end method

.method public setPlayUrl64M4a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    return-void
.end method

.method public setPrice(D)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->price:D

    return-void
.end method

.method public setPriceTypeId(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->priceTypeId:I

    return-void
.end method

.method public setProgramId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->protocolVersion:I

    return-void
.end method

.method public setRadioId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    return-void
.end method

.method public setRadioName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    return-void
.end method

.method public setRadioRate24AacUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRadioRate24TsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    return-void
.end method

.method public setRadioRate64AacUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRadioRate64TsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    return-void
.end method

.method public setScheduleId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    return-void
.end method

.method public setSequenceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTimeline(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    return-void
.end method

.method public setTrackIntro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    return-void
.end method

.method public setTrackStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    return-void
.end method

.method public setTrackTags(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->uid:J

    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track [trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackIntro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", announcer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl24M4a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize24M4a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl64M4a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize64m4a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadedSaveFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", insertSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scheduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", programId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioRate24AacUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioRate24TsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioRate64AacUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioRate64TsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLike="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playPathHq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->authorized:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isPaid:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->price:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->discountedPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->priceTypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method
