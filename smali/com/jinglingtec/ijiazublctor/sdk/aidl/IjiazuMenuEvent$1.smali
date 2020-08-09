.class final Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent$1;
.super Ljava/lang/Object;
.source "IjiazuMenuEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;
    .locals 1

    invoke-static {p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;->access$000(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;
    .locals 1

    new-array v0, p1, [Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent$1;->newArray(I)[Lcom/jinglingtec/ijiazublctor/sdk/aidl/IjiazuMenuEvent;

    move-result-object v0

    return-object v0
.end method
