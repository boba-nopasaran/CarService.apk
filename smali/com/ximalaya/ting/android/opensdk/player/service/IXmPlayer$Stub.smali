.class public abstract Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

.field static final TRANSACTION_addPlayList:I = 0x1c

.field static final TRANSACTION_browseAlbums:I = 0x35

.field static final TRANSACTION_clearPlayCache:I = 0x21

.field static final TRANSACTION_getAlbumByCategoryId:I = 0x44

.field static final TRANSACTION_getAlbumById:I = 0x26

.field static final TRANSACTION_getAlbumInfo:I = 0x40

.field static final TRANSACTION_getCategoryModelList:I = 0x39

.field static final TRANSACTION_getCurPlayUrl:I = 0x2f

.field static final TRANSACTION_getCurrIndex:I = 0xe

.field static final TRANSACTION_getDefultPageSize:I = 0x43

.field static final TRANSACTION_getDuration:I = 0xf

.field static final TRANSACTION_getHotContent:I = 0x3a

.field static final TRANSACTION_getMainHotContent:I = 0x42

.field static final TRANSACTION_getMyCollect:I = 0x3f

.field static final TRANSACTION_getNextPlayList:I = 0x2a

.field static final TRANSACTION_getParam:I = 0x1f

.field static final TRANSACTION_getParseDeviceInfo:I = 0x45

.field static final TRANSACTION_getPlayCurrPosition:I = 0x10

.field static final TRANSACTION_getPlayList:I = 0x1e

.field static final TRANSACTION_getPlayListSize:I = 0x20

.field static final TRANSACTION_getPlayMode:I = 0x19

.field static final TRANSACTION_getPlaySourceType:I = 0x17

.field static final TRANSACTION_getPlayerStatus:I = 0xd

.field static final TRANSACTION_getPositiveSeq:I = 0x2e

.field static final TRANSACTION_getPrePlayList:I = 0x2b

.field static final TRANSACTION_getRadio:I = 0x16

.field static final TRANSACTION_getRank:I = 0x41

.field static final TRANSACTION_getSourseLists:I = 0x34

.field static final TRANSACTION_getTrack:I = 0x15

.field static final TRANSACTION_getTrackListByLastTrack:I = 0x3b

.field static final TRANSACTION_getUserInfo:I = 0x3e

.field static final TRANSACTION_hasNextSound:I = 0xc

.field static final TRANSACTION_hasPreSound:I = 0xb

.field static final TRANSACTION_init:I = 0x30

.field static final TRANSACTION_isAdsActive:I = 0x12

.field static final TRANSACTION_isDLNAState:I = 0x47

.field static final TRANSACTION_isOnlineSource:I = 0xa

.field static final TRANSACTION_isPlaying:I = 0x11

.field static final TRANSACTION_needContinuePlay:I = 0x48

.field static final TRANSACTION_pausePlay:I = 0x7

.field static final TRANSACTION_permutePlayList:I = 0x2d

.field static final TRANSACTION_play:I = 0x4

.field static final TRANSACTION_playNext:I = 0x3

.field static final TRANSACTION_playPre:I = 0x2

.field static final TRANSACTION_playRadio:I = 0x1d

.field static final TRANSACTION_registeAdsListener:I = 0x27

.field static final TRANSACTION_registeCustomDataCallBack:I = 0x31

.field static final TRANSACTION_registeMainDataSupportCallBack:I = 0x3c

.field static final TRANSACTION_registePlayerListener:I = 0x24

.field static final TRANSACTION_removeListByIndex:I = 0x4f

.field static final TRANSACTION_resetPlayList:I = 0x4e

.field static final TRANSACTION_seekTo:I = 0x9

.field static final TRANSACTION_setAdsDataHandlerClassName:I = 0x4c

.field static final TRANSACTION_setAppSecret:I = 0x23

.field static final TRANSACTION_setCategoryId:I = 0x38

.field static final TRANSACTION_setDLNAState:I = 0x46

.field static final TRANSACTION_setDownloadPlayPathCallback:I = 0x29

.field static final TRANSACTION_setNotification:I = 0x22

.field static final TRANSACTION_setPageSize:I = 0x1a

.field static final TRANSACTION_setPlayByAlbumTracks:I = 0x37

.field static final TRANSACTION_setPlayByTrack:I = 0x36

.field static final TRANSACTION_setPlayCdnConfigureModel:I = 0x4d

.field static final TRANSACTION_setPlayIndex:I = 0x5

.field static final TRANSACTION_setPlayList:I = 0x1b

.field static final TRANSACTION_setPlayListChangeListener:I = 0x2c

.field static final TRANSACTION_setPlayMode:I = 0x18

.field static final TRANSACTION_setPlayModel:I = 0x33

.field static final TRANSACTION_setPlayStatisticClassName:I = 0x4b

.field static final TRANSACTION_setProxy:I = 0x1

.field static final TRANSACTION_setRecordModel:I = 0x49

.field static final TRANSACTION_setVolume:I = 0x4a

.field static final TRANSACTION_startPlay:I = 0x6

.field static final TRANSACTION_stopPlay:I = 0x8

.field static final TRANSACTION_unregisteAdsListener:I = 0x28

.field static final TRANSACTION_unregisteCustomDataCallBack:I = 0x32

.field static final TRANSACTION_unregisteMainDataSupportCallBack:I = 0x3d

.field static final TRANSACTION_unregistePlayerListener:I = 0x25

.field static final TRANSACTION_updateTrackDownloadUrlInPlayList:I = 0x13

.field static final TRANSACTION_updateTrackInPlayList:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    :sswitch_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playPre()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playNext()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    move v1, v9

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->play(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    move v1, v9

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayIndex(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    move v1, v9

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->startPlay()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    move v1, v9

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->pausePlay()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    move v1, v9

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->stopPlay()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    move v1, v9

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->seekTo(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    move v1, v9

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isOnlineSource()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    move v1, v9

    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->hasPreSound()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    move v1, v9

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->hasNextSound()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    move v1, v9

    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayerStatus()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getCurrIndex()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getDuration()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayCurrPosition()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isPlaying()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    move v1, v9

    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isAdsActive()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    move v1, v9

    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    :cond_d
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->updateTrackDownloadUrlInPlayList(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    :cond_f
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->updateTrackInPlayList(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_10

    move v2, v9

    :goto_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_11

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_10
    move v2, v1

    goto :goto_2

    :cond_11
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_13

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlaySourceType()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayMode(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPageSize(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->addPlayList(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    :cond_14
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_15

    move v1, v9

    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayList(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getParam()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayListSize()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->clearPlayCache()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    :cond_16
    invoke-virtual {p0, v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setNotification(ILandroid/app/Notification;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setAppSecret(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregistePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getAlbumById(JIJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregisteAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getNextPlayList()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPrePlayList()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmDataCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayListChangeListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmDataCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->permutePlayList()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_17

    move v1, v9

    :cond_17
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPositiveSeq()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_18

    move v1, v9

    :cond_18
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getCurPlayUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registeCustomDataCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregisteCustomDataCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayModel(Ljava/lang/String;IJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getSourseLists(Ljava/lang/String;IIIIJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->browseAlbums(JIIJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayByTrack(Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayByAlbumTracks(Ljava/lang/String;IJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setCategoryId(IJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getCategoryModelList(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    move v1, v9

    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getHotContent(ZIIJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getTrackListByLastTrack(JJIJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registeMainDataSupportCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregisteMainDataSupportCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getUserInfo(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getMyCollect(IJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getAlbumInfo(JIJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getRank(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getMainHotContent(IIJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getDefultPageSize()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getAlbumByCategoryId(JIIJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getParseDeviceInfo(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    move v1, v9

    :cond_1a
    invoke-virtual {p0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setDLNAState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isDLNAState()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1b

    move v1, v9

    :cond_1b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v9

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->needContinuePlay(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_49
    const-string v2, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;

    :cond_1d
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setRecordModel(Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1e

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setVolume(FF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayStatisticClassName(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setAdsDataHandlerClassName(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_4d
    const-string v1, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;

    :cond_1f
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayCdnConfigureModel(Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->resetPlayList()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->removeListByIndex(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
