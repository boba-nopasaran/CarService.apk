.class public Lcom/aispeech/aios/sdk/bean/Music;
.super Lcom/aispeech/aios/sdk/bean/BaseBean;
.source "Music.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aispeech/aios/sdk/bean/Music;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SDK - Music"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private duration:I

.field private id:Ljava/lang/String;

.field private localName:Ljava/lang/String;

.field private size:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aispeech/aios/sdk/bean/Music$1;

    invoke-direct {v0}, Lcom/aispeech/aios/sdk/bean/Music$1;-><init>()V

    sput-object v0, Lcom/aispeech/aios/sdk/bean/Music;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/bean/BaseBean;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/aispeech/aios/sdk/bean/BaseBean;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->album:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->duration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->size:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/bean/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/bean/BaseBean;-><init>()V

    iput-object p4, p0, Lcom/aispeech/aios/sdk/bean/Music;->album:Ljava/lang/String;

    iput-object p3, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    iput p5, p0, Lcom/aispeech/aios/sdk/bean/Music;->duration:I

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    iput p6, p0, Lcom/aispeech/aios/sdk/bean/Music;->size:I

    iput-object p2, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/aispeech/aios/sdk/bean/BaseBean;-><init>()V

    iput-object p4, p0, Lcom/aispeech/aios/sdk/bean/Music;->album:Ljava/lang/String;

    iput-object p3, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    iput p5, p0, Lcom/aispeech/aios/sdk/bean/Music;->duration:I

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    iput p6, p0, Lcom/aispeech/aios/sdk/bean/Music;->size:I

    iput-object p2, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    iput-object p8, p0, Lcom/aispeech/aios/sdk/bean/Music;->localName:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/aispeech/aios/sdk/bean/Music;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v1, Lcom/aispeech/aios/sdk/bean/Music;

    invoke-direct {v1}, Lcom/aispeech/aios/sdk/bean/Music;-><init>()V

    :try_start_0
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/sdk/bean/Music;->setId(Ljava/lang/String;)V

    const-string v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/sdk/bean/Music;->setTitle(Ljava/lang/String;)V

    const-string v2, "artist"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/sdk/bean/Music;->setArtist(Ljava/lang/String;)V

    const-string v2, "album"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/sdk/bean/Music;->setAlbum(Ljava/lang/String;)V

    const-string v2, "duration"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/sdk/bean/Music;->setDuration(I)V

    const-string v2, "size"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/sdk/bean/Music;->setSize(I)V

    const-string v2, "url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/sdk/bean/Music;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "SDK - Music"

    const-string v3, "Id, title and artist can not be empty string or null!"

    invoke-static {v2, v3}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->duration:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->size:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->duration:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->localName:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->size:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    iget-object v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    iget-object v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "artist"

    iget-object v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "album"

    iget-object v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->album:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->duration:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "size"

    iget v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->size:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "url"

    iget-object v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->localName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/aispeech/aios/sdk/utils/StringUtil;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->localName:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v1, "local"

    iget-object v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->localName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/aispeech/aios/sdk/utils/StringUtil;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->localName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Music{album=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/aispeech/aios/sdk/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aispeech/aios/sdk/bean/Music;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
