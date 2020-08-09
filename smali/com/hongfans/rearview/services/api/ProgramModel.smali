.class public Lcom/hongfans/rearview/services/api/ProgramModel;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/rearview/services/api/ProgramModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:I

.field private description:Ljava/lang/String;

.field private id:I

.field private isnews:I

.field private issub:Z

.field private latestprogram:Ljava/lang/String;

.field private manipulate:I

.field public modelPm:I

.field private num:I

.field private qtid:I

.field private qtpid:I

.field private smallpic:Ljava/lang/String;

.field private star:I

.field private thumbs:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hongfans/rearview/services/api/ProgramModel$1;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/ProgramModel$1;-><init>()V

    sput-object v0, Lcom/hongfans/rearview/services/api/ProgramModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->modelPm:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/hongfans/rearview/services/api/ProgramModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/hongfans/rearview/services/api/ProgramModel;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/ProgramModel;-><init>()V

    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    :cond_0
    const-string v3, "qtid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "qtid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    :cond_1
    const-string v3, "qtpid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "qtpid"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    :cond_2
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    :cond_3
    const-string v3, "thumbs"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "thumbs"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    iget-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    :cond_4
    const-string v3, "star"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "star"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    :cond_5
    const-string v3, "latestprogram"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "latestprogram"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    :cond_6
    const-string v3, "description"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "description"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    :cond_7
    const-string v3, "manipulate"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "manipulate"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    :cond_8
    const-string v3, "isnews"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "isnews"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    :cond_9
    const-string v3, "num"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "num"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    :cond_a
    const-string v3, "issub"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "issub"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    :goto_0
    iput-boolean v2, v0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    :cond_b
    return-object v0

    :cond_c
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    return v0
.end method

.method public getIsnews()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    return v0
.end method

.method public getIssub()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    return v0
.end method

.method public getLatestprogram()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    return-object v0
.end method

.method public getManipulate()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    return v0
.end method

.method public getModelPm()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->modelPm:I

    return v0
.end method

.method public getNum()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    return v0
.end method

.method public getQtid()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    return v0
.end method

.method public getQtpid()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    return v0
.end method

.method public getSmallpic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    return-object v0
.end method

.method public getStar()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    return v0
.end method

.method public getThumbs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->type:I

    return v0
.end method

.method public get_id()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->_id:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    return-void
.end method

.method public setIsnews(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    return-void
.end method

.method public setIssub(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    return-void
.end method

.method public setLatestprogram(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    return-void
.end method

.method public setManipulate(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    return-void
.end method

.method public setModelPm(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->modelPm:I

    return-void
.end method

.method public setNum(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    return-void
.end method

.method public setQtid(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    return-void
.end method

.method public setQtpid(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    return-void
.end method

.method public setSmallpic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    return-void
.end method

.method public setStar(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    return-void
.end method

.method public setThumbs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->type:I

    return-void
.end method

.method public set_id(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->_id:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->qtpid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->thumbs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->star:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->latestprogram:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->manipulate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->isnews:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->issub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->smallpic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramModel;->modelPm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
