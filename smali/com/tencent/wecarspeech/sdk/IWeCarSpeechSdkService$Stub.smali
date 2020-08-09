.class public abstract Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub;
.super Landroid/os/Binder;
.source "IWeCarSpeechSdkService.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService"

.field static final TRANSACTION_actionCall:I = 0x2

.field static final TRANSACTION_setWeCarSpeechSdkListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub;->setWeCarSpeechSdkListener(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v5, "com.tencent.wecarspeech.sdk.IWeCarSpeechSdkService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService$Stub;->actionCall(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
