.class public Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private announcerId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private announcerPosition:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcer_position"
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field private followerCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "follower_count"
    .end annotation
.end field

.field private followingCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "following_count"
    .end annotation
.end field

.field private kind:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private releasedAlbumCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "released_album_count"
    .end annotation
.end field

.field private releasedTrackCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "released_track_count"
    .end annotation
.end field

.field private vCategoryId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vcategory_id"
    .end annotation
.end field

.field private vdesc:Ljava/lang/String;

.field private verified:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_verified"
    .end annotation
.end field

.field private vsignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public getAnnouncerId()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    return-wide v0
.end method

.method public getAnnouncerPosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowerCount()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followerCount:J

    return-wide v0
.end method

.method public getFollowingCount()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followingCount:J

    return-wide v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getReleasedAlbumCount()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedAlbumCount:J

    return-wide v0
.end method

.method public getReleasedTrackCount()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedTrackCount:J

    return-wide v0
.end method

.method public getVdesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getVsignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vsignature:Ljava/lang/String;

    return-object v0
.end method

.method public getvCategoryId()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vCategoryId:J

    return-wide v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->kind:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vCategoryId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vdesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vsignature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerPosition:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followerCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followingCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedAlbumCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedTrackCount:J

    return-void
.end method

.method public setAnnouncerId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    return-void
.end method

.method public setAnnouncerPosition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerPosition:Ljava/lang/String;

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setFollowerCount(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followerCount:J

    return-void
.end method

.method public setFollowingCount(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followingCount:J

    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->kind:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setReleasedAlbumCount(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedAlbumCount:J

    return-void
.end method

.method public setReleasedTrackCount(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedTrackCount:J

    return-void
.end method

.method public setVdesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vdesc:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    return-void
.end method

.method public setVsignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vsignature:Ljava/lang/String;

    return-void
.end method

.method public setvCategoryId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vCategoryId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Announcer [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vCategoryId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vdesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vsignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerPosition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followerCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followingCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedAlbumCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedTrackCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
