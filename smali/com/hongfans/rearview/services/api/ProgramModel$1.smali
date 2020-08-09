.class final Lcom/hongfans/rearview/services/api/ProgramModel$1;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hongfans/rearview/services/api/ProgramModel;
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
        "Lcom/hongfans/rearview/services/api/ProgramModel;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hongfans/rearview/services/api/ProgramModel;
    .locals 1

    new-instance v0, Lcom/hongfans/rearview/services/api/ProgramModel;

    invoke-direct {v0, p1}, Lcom/hongfans/rearview/services/api/ProgramModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hongfans/rearview/services/api/ProgramModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hongfans/rearview/services/api/ProgramModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/hongfans/rearview/services/api/ProgramModel;
    .locals 1

    new-array v0, p1, [Lcom/hongfans/rearview/services/api/ProgramModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hongfans/rearview/services/api/ProgramModel$1;->newArray(I)[Lcom/hongfans/rearview/services/api/ProgramModel;

    move-result-object v0

    return-object v0
.end method
