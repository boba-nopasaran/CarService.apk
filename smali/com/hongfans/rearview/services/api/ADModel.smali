.class public Lcom/hongfans/rearview/services/api/ADModel;
.super Ljava/lang/Object;
.source "ADModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ad_type:Ljava/lang/String;

.field private video_text:Ljava/lang/String;

.field private video_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hongfans/rearview/services/api/ADModel$1;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/ADModel$1;-><init>()V

    sput-object v0, Lcom/hongfans/rearview/services/api/ADModel;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->ad_type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_url:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/hongfans/rearview/services/api/ADModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/ADModel;-><init>()V

    const-string v1, "ad_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ad_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/rearview/services/api/ADModel;->ad_type:Ljava/lang/String;

    :cond_2
    const-string v1, "video_text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "video_text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/rearview/services/api/ADModel;->video_text:Ljava/lang/String;

    :cond_3
    const-string v1, "video_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "video_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hongfans/rearview/services/api/ADModel;->video_url:Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseData(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/hongfans/rearview/services/api/ADModel;->parse(Lorg/json/JSONObject;)Lcom/hongfans/rearview/services/api/ADModel;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAd_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->ad_type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_text()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_text:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_url:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ADModel;->ad_type:Ljava/lang/String;

    return-void
.end method

.method public setVideo_text(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_text:Ljava/lang/String;

    return-void
.end method

.method public setVideo_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_url:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "ad_type"

    iget-object v3, p0, Lcom/hongfans/rearview/services/api/ADModel;->ad_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "video_text"

    iget-object v3, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_text:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "video_url"

    iget-object v3, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v2, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADModel [ad_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ADModel;->ad_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->ad_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ADModel;->video_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
