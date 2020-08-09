.class public abstract Lcom/kaolafm/sdk/client/IClientAPI$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kaolafm/sdk/client/IClientAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaolafm/sdk/client/IClientAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaolafm/sdk/client/IClientAPI$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.kaolafm.sdk.client.IClientAPI"

.field static final TRANSACTION_back:I = 0x11

.field static final TRANSACTION_backward:I = 0xe

.field static final TRANSACTION_download:I = 0x12

.field static final TRANSACTION_execute:I = 0x21

.field static final TRANSACTION_executeWithCallback:I = 0x20

.field static final TRANSACTION_exitApp:I = 0x2

.field static final TRANSACTION_forward:I = 0xd

.field static final TRANSACTION_getCurrentFocusChangeState:I = 0x1e

.field static final TRANSACTION_getCurrentMusicInfo:I = 0xc

.field static final TRANSACTION_getPlayState:I = 0xa

.field static final TRANSACTION_getProgress:I = 0xb

.field static final TRANSACTION_getRadioList:I = 0x13

.field static final TRANSACTION_hasNext:I = 0x18

.field static final TRANSACTION_hasPre:I = 0x17

.field static final TRANSACTION_launchApp:I = 0x1

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x3

.field static final TRANSACTION_playByKeywords:I = 0x19

.field static final TRANSACTION_playMusic:I = 0x4

.field static final TRANSACTION_playMusicList:I = 0x5

.field static final TRANSACTION_playNext:I = 0x7

.field static final TRANSACTION_playPre:I = 0x8

.field static final TRANSACTION_playSearchData:I = 0x15

.field static final TRANSACTION_removePlayListener:I = 0x1a

.field static final TRANSACTION_search:I = 0xf

.field static final TRANSACTION_search2:I = 0x1b

.field static final TRANSACTION_searchByType:I = 0x16

.field static final TRANSACTION_setAudioFocusChangeListener:I = 0x1f

.field static final TRANSACTION_setPlayListener:I = 0x9

.field static final TRANSACTION_showSearchResult:I = 0x10

.field static final TRANSACTION_subscribe:I = 0x1c

.field static final TRANSACTION_switchChannel:I = 0x14

.field static final TRANSACTION_unsubscribe:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p0, p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IClientAPI;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/kaolafm/sdk/client/IClientAPI;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/kaolafm/sdk/client/IClientAPI;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/kaolafm/sdk/client/IClientAPI$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->launchApp(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->exitApp()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->play()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaolafm/sdk/client/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Music;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playMusic(Lcom/kaolafm/sdk/client/Music;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_5
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/kaolafm/sdk/client/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playMusicList(Ljava/util/List;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->pause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playNext()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playPre()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/PlayListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->setPlayListener(Lcom/kaolafm/sdk/client/PlayListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getPlayState()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getProgress()J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getCurrentMusicInfo()Lcom/kaolafm/sdk/client/Music;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/kaolafm/sdk/client/Music;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_d
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->forward()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->backward()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/kaolafm/sdk/client/ISearchResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/ISearchResult;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->search(Ljava/lang/String;Lcom/kaolafm/sdk/client/ISearchResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/kaolafm/sdk/client/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->showSearchResult(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->back()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->download()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/IRadioResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IRadioResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getRadioList(Lcom/kaolafm/sdk/client/IRadioResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kaolafm/sdk/client/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/Radio;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->switchChannel(Lcom/kaolafm/sdk/client/Radio;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_15
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/kaolafm/sdk/client/SearchData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaolafm/sdk/client/SearchData;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playSearchData(Lcom/kaolafm/sdk/client/SearchData;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :sswitch_16
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/ISearchResultV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/ISearchResultV2;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->searchByType(ILjava/lang/String;IILcom/kaolafm/sdk/client/ISearchResultV2;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->hasPre()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :sswitch_18
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->hasNext()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    :sswitch_19
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/kaolafm/sdk/client/IPlayResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IPlayResult;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->playByKeywords(Ljava/lang/String;Lcom/kaolafm/sdk/client/IPlayResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/PlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/PlayListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->removePlayListener(Lcom/kaolafm/sdk/client/PlayListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/ISearchResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/ISearchResult;

    move-result-object v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->search2(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaolafm/sdk/client/ISearchResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/kaolafm/sdk/client/ISubscribeResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/ISubscribeResult;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->subscribe(JLcom/kaolafm/sdk/client/ISubscribeResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/kaolafm/sdk/client/ISubscribeResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/ISubscribeResult;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->unsubscribe(JLcom/kaolafm/sdk/client/ISubscribeResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->getCurrentFocusChangeState()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/kaolafm/sdk/client/IAudioFocusChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->setAudioFocusChangeListener(Lcom/kaolafm/sdk/client/IAudioFocusChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/kaolafm/sdk/client/IExecuteResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IExecuteResult;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->executeWithCallback(Ljava/lang/String;Lcom/kaolafm/sdk/client/IExecuteResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "com.kaolafm.sdk.client.IClientAPI"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
