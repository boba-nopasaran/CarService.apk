.class public abstract Lcom/hongfans/rearview/services/api/IPlayManager$Stub;
.super Landroid/os/Binder;
.source "IPlayManager.java"

# interfaces
.implements Lcom/hongfans/rearview/services/api/IPlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hongfans/rearview/services/api/IPlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hongfans/rearview/services/api/IPlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hongfans.rearview.services.api.IPlayManager"

.field static final TRANSACTION_IAddPlayList:I = 0xe

.field static final TRANSACTION_ICancelReqMusic:I = 0x17

.field static final TRANSACTION_IChangeMode:I = 0x8

.field static final TRANSACTION_IClearVoiceSearch:I = 0x2b

.field static final TRANSACTION_ICloseCacheDb:I = 0x1a

.field static final TRANSACTION_ICurrentMode:I = 0x9

.field static final TRANSACTION_IGetAout:I = 0x11

.field static final TRANSACTION_IGetCaseList:I = 0x1b

.field static final TRANSACTION_IGetCurrentMusic:I = 0x12

.field static final TRANSACTION_IGetHPM:I = 0x2d

.field static final TRANSACTION_IGetKWImage:I = 0x18

.field static final TRANSACTION_IGetPlayState:I = 0x14

.field static final TRANSACTION_IGetSearchChannel:I = 0x1f

.field static final TRANSACTION_IGetSearchKeyWord:I = 0x1d

.field static final TRANSACTION_IGetSongList:I = 0x13

.field static final TRANSACTION_IGetVoiceSearch:I = 0x2a

.field static final TRANSACTION_INext:I = 0x5

.field static final TRANSACTION_IPause:I = 0x2

.field static final TRANSACTION_IPlay:I = 0x1

.field static final TRANSACTION_IPlayPosition:I = 0xa

.field static final TRANSACTION_IPre:I = 0x4

.field static final TRANSACTION_IRegisterSecondProgramChangeListener:I = 0x27

.field static final TRANSACTION_IRemovSearchKeyWord:I = 0x1e

.field static final TRANSACTION_IRemovePlayListener:I = 0x7

.field static final TRANSACTION_IRequestAudioFocus:I = 0x25

.field static final TRANSACTION_IRequestThirdList:I = 0x2c

.field static final TRANSACTION_IResume:I = 0x3

.field static final TRANSACTION_ISearchMusic:I = 0x15

.field static final TRANSACTION_ISeekTo:I = 0xc

.field static final TRANSACTION_ISetImageListener:I = 0x19

.field static final TRANSACTION_ISetListChange:I = 0x16

.field static final TRANSACTION_ISetPlayList:I = 0xd

.field static final TRANSACTION_ISetPlayListener:I = 0x6

.field static final TRANSACTION_ISetPlayPosition:I = 0xb

.field static final TRANSACTION_ISetPlayStateListener:I = 0x21

.field static final TRANSACTION_ISetProgramListener:I = 0x24

.field static final TRANSACTION_ISetSecondProgramList:I = 0x29

.field static final TRANSACTION_ISetSendProgress:I = 0x10

.field static final TRANSACTION_ISetSwitch:I = 0x1c

.field static final TRANSACTION_ISwitchProgram:I = 0x26

.field static final TRANSACTION_IUnRegisterSecondProgramChangeListener:I = 0x28

.field static final TRANSACTION_IUpdateProgramDigtal:I = 0xf

.field static final TRANSACTION_IisPlayAD:I = 0x20

.field static final TRANSACTION_IsGetLoadingState:I = 0x23

.field static final TRANSACTION_IsetPlayProgress:I = 0x30

.field static final TRANSACTION_clearCacheData:I = 0x22

.field static final TRANSACTION_registerPlayChangedListener:I = 0x2e

.field static final TRANSACTION_unRegisterPlayChangedListener:I = 0x2f


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p0, p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hongfans/rearview/services/api/IPlayManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/hongfans/rearview/services/api/IPlayManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/hongfans/rearview/services/api/IPlayManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IPlay(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IPause(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IResume()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IPre()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->INext()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IPlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetPlayListener(Lcom/hongfans/rearview/services/api/IPlayListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_7
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IPlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRemovePlayListener(Lcom/hongfans/rearview/services/api/IPlayListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_8
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IChangeMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ICurrentMode()I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IPlayPosition()I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetPlayPosition(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISeekTo(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetPlayList(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IAddPlayList(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IUpdateProgramDigtal(Lcom/hongfans/rearview/services/api/ProgramDigtalModel;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_10
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetSendProgress(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_11
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetAout()Lcom/hongfans/rearview/services/api/Aout;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Lcom/hongfans/rearview/services/api/Aout;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetCurrentMusic()Lcom/hongfans/rearview/services/api/ProgramDigtalModel;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetSongList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetPlayState()I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISearchMusic(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_16
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IPlayListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IPlayListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetListChange(Lcom/hongfans/rearview/services/api/IPlayListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_17
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ICancelReqMusic()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_18
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetKWImage(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_19
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IKWImageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IKWImageListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetImageListener(Lcom/hongfans/rearview/services/api/IKWImageListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1a
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ICloseCacheDb()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1b
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetCaseList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_1c
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetSwitch(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1d
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetSearchKeyWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1e
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRemovSearchKeyWord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1f
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetSearchChannel()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_20
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IisPlayAD()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4

    move v0, v8

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_21
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/PlayStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/PlayStatusListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetPlayStateListener(Lcom/hongfans/rearview/services/api/PlayStatusListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_22
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->clearCacheData()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_23
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IsGetLoadingState()I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_24
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/ProgramListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/ProgramListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetProgramListener(Lcom/hongfans/rearview/services/api/ProgramListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_25
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRequestAudioFocus()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_26
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISwitchProgram()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_27
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/SecondProgramListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/SecondProgramListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRegisterSecondProgramChangeListener(Lcom/hongfans/rearview/services/api/SecondProgramListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_28
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/SecondProgramListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/SecondProgramListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IUnRegisterSecondProgramChangeListener(Lcom/hongfans/rearview/services/api/SecondProgramListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_29
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->ISetSecondProgramList(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2a
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetVoiceSearch()Lcom/hongfans/rearview/services/api/VoiceSearchModel;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_5

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Lcom/hongfans/rearview/services/api/VoiceSearchModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2b
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IClearVoiceSearch()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2c
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/hongfans/rearview/services/api/ProgramModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ProgramModel;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IRequestThirdList(Lcom/hongfans/rearview/services/api/ProgramModel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_2d
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IGetHPM()Lcom/hongfans/rearview/services/api/ProgramModel;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_7

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Lcom/hongfans/rearview/services/api/ProgramModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_2e
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->registerPlayChangedListener(Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_2f
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/rearview/services/api/IOnPlayChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->unRegisterPlayChangedListener(Lcom/hongfans/rearview/services/api/IOnPlayChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_30
    const-string v9, "com.hongfans.rearview.services.api.IPlayManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hongfans/rearview/services/api/IPlayManager$Stub;->IsetPlayProgress(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
