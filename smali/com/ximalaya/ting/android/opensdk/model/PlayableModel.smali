.class public Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final KIND_RADIO:Ljava/lang/String; = "radio"

.field public static final KIND_SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final KIND_TRACK:Ljava/lang/String; = "track"


# instance fields
.field private dataId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private kind:Ljava/lang/String;

.field private lastPlayedMills:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v0, :cond_5

    instance-of v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    instance-of v3, p1, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    if-eqz v3, :cond_6

    instance-of v3, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    if-eqz v3, :cond_6

    move v3, v1

    :goto_2
    instance-of v4, p1, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    if-eqz v4, :cond_7

    instance-of v4, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    if-eqz v4, :cond_7

    move v4, v1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_8

    move v5, v1

    :goto_4
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    iget-wide v6, p1, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v4, v2

    goto :goto_3

    :cond_8
    move v5, v2

    goto :goto_4
.end method

.method public getDataId()J
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    return-wide v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPlayedMills()I
    .locals 1

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->lastPlayedMills:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->setDataId(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->setKind(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->setLastPlayedMills(I)V

    return-void
.end method

.method public setDataId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    return-void
.end method

.method public setLastPlayedMills(I)V
    .locals 0

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->lastPlayedMills:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->lastPlayedMills:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
