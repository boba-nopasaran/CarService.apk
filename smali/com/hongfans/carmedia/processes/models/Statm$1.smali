.class final Lcom/hongfans/carmedia/processes/models/Statm$1;
.super Ljava/lang/Object;
.source "Statm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hongfans/carmedia/processes/models/Statm;
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
        "Lcom/hongfans/carmedia/processes/models/Statm;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hongfans/carmedia/processes/models/Statm;
    .locals 2

    new-instance v0, Lcom/hongfans/carmedia/processes/models/Statm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/hongfans/carmedia/processes/models/Statm;-><init>(Landroid/os/Parcel;Lcom/hongfans/carmedia/processes/models/Statm$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hongfans/carmedia/processes/models/Statm$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hongfans/carmedia/processes/models/Statm;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/hongfans/carmedia/processes/models/Statm;
    .locals 1

    new-array v0, p1, [Lcom/hongfans/carmedia/processes/models/Statm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hongfans/carmedia/processes/models/Statm$1;->newArray(I)[Lcom/hongfans/carmedia/processes/models/Statm;

    move-result-object v0

    return-object v0
.end method
