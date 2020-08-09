.class public Lcom/iflytek/cata/SegValue;
.super Ljava/lang/Object;
.source "SegValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/cata/SegValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final ONLY_RAW:I = 0x0

.field public static final RAW_AND_PINYIN:I = 0x1

.field public static final RAW_AND_PINYIN_AND_TJIU:I = 0x4

.field public static final RAW_AND_TJIU:I = 0x3

.field public static final TAG:I = 0x2


# instance fields
.field public mField:Ljava/lang/String;

.field public mMode:I

.field public mServPattern:I

.field public mTexts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iflytek/cata/SegValue$1;

    invoke-direct {v0}, Lcom/iflytek/cata/SegValue$1;-><init>()V

    sput-object v0, Lcom/iflytek/cata/SegValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cata/SegValue;->mField:Ljava/lang/String;

    iput v0, p0, Lcom/iflytek/cata/SegValue;->mMode:I

    iput v0, p0, Lcom/iflytek/cata/SegValue;->mServPattern:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cata/SegValue;->mField:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cata/SegValue;->mTexts:Ljava/util/Vector;

    iget-object v0, p0, Lcom/iflytek/cata/SegValue;->mTexts:Ljava/util/Vector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/cata/SegValue;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/cata/SegValue;->mServPattern:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Vector;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cata/SegValue;->mField:Ljava/lang/String;

    iput v1, p0, Lcom/iflytek/cata/SegValue;->mMode:I

    iput v1, p0, Lcom/iflytek/cata/SegValue;->mServPattern:I

    iput-object p1, p0, Lcom/iflytek/cata/SegValue;->mField:Ljava/lang/String;

    iput p2, p0, Lcom/iflytek/cata/SegValue;->mMode:I

    iput-object p3, p0, Lcom/iflytek/cata/SegValue;->mTexts:Ljava/util/Vector;

    iput p4, p0, Lcom/iflytek/cata/SegValue;->mServPattern:I

    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/cata/SegValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iflytek/cata/SegValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getServPattern()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cata/SegValue;->mServPattern:I

    return v0
.end method

.method public getmField()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cata/SegValue;->mField:Ljava/lang/String;

    return-object v0
.end method

.method public getmMode()I
    .locals 1

    iget v0, p0, Lcom/iflytek/cata/SegValue;->mMode:I

    return v0
.end method

.method public getmTexts()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/cata/SegValue;->mTexts:Ljava/util/Vector;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cata/SegValue;->mField:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cata/SegValue;->mTexts:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/iflytek/cata/SegValue;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/iflytek/cata/SegValue;->mServPattern:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
