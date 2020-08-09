.class public abstract Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;
.super Landroid/os/Binder;
.source "IjiazuAPI.java"

# interfaces
.implements Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

.field static final TRANSACTION_clearListener:I = 0x6

.field static final TRANSACTION_getPermission:I = 0x2

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_itemActive:I = 0x3

.field static final TRANSACTION_registerIjiazuListener:I = 0x4

.field static final TRANSACTION_sendMenuItem:I = 0x8

.field static final TRANSACTION_setRestart:I = 0x7

.field static final TRANSACTION_unRegisterIjiazuListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p0, p0, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->init(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->getPermission(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->itemActive(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->registerIjiazuListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->unRegisterIjiazuListener(Ljava/lang/String;Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->clearListener(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_7
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->setRestart(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "com.jinglingtec.ijiazublctor.sdk.aidl.IjiazuAPI"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuAPI$Stub;->sendMenuItem(Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
