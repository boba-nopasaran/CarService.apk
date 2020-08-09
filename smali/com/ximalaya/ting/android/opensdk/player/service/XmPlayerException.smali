.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;
.super Ljava/lang/Exception;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x70712be5335feeacL


# instance fields
.field private mCause:Ljava/lang/String;

.field private mExtra:I

.field private mWhat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player Status Exception, what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mWhat:I

    iput p2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mExtra:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mWhat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mExtra:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mCause:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mCause:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mCause:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mCause:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mWhat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mExtra:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mWhat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->mExtra:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
