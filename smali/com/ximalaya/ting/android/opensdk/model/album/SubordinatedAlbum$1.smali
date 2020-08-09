.class final Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .locals 1

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .locals 1

    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    move-result-object v0

    return-object v0
.end method
