.class final Lcom/hongfans/rearview/services/api/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
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
.method public a(Landroid/os/Parcel;)Lcom/hongfans/rearview/services/api/ProgramModel;
    .locals 1

    new-instance v0, Lcom/hongfans/rearview/services/api/ProgramModel;

    invoke-direct {v0, p1}, Lcom/hongfans/rearview/services/api/ProgramModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/hongfans/rearview/services/api/ProgramModel;
    .locals 1

    new-array v0, p1, [Lcom/hongfans/rearview/services/api/ProgramModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hongfans/rearview/services/api/k;->a(Landroid/os/Parcel;)Lcom/hongfans/rearview/services/api/ProgramModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hongfans/rearview/services/api/k;->a(I)[Lcom/hongfans/rearview/services/api/ProgramModel;

    move-result-object v0

    return-object v0
.end method
