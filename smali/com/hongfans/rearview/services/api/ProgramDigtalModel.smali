.class public Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
.super Ljava/lang/Object;
.source "ProgramDigtalModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/rearview/services/api/ProgramDigtalModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:I

.field private ad_after:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation
.end field

.field private ad_before:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation
.end field

.field private album:Ljava/lang/String;

.field private comeType:I

.field private comefrom:Ljava/lang/String;

.field private curpage:I

.field private duration:I

.field private filepath:Ljava/lang/String;

.field private filepath1:Ljava/lang/String;

.field private id:J

.field private iscollect:I

.field private isnews:I

.field private parentname:Ljava/lang/String;

.field private pdid:I

.field private pic:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private programtype:I

.field private remark:Ljava/lang/String;

.field private secondtitle:Ljava/lang/String;

.field private singer:Ljava/lang/String;

.field private songid:Ljava/lang/String;

.field private sourcedataid:I

.field private sourceid:I

.field private title:Ljava/lang/String;

.field private total:I

.field private type:I

.field private updatetime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel$1;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel$1;-><init>()V

    sput-object v0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    iput v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    const-class v0, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    const-class v0, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/hongfans/rearview/services/api/ProgramDigtalModel;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;

    invoke-direct {v7}, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;-><init>()V

    const-string v9, "id"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "id"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    :cond_0
    const-string v9, "sourceid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "sourceid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    :cond_1
    const-string v9, "sourcedataid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "sourcedataid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    :cond_2
    const-string v9, "title"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "title"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    :cond_3
    const-string v9, "duration"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "duration"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    :cond_4
    const-string v9, "filepath1"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "filepath1"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    :cond_5
    const-string v9, "priority"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "priority"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    :cond_6
    const-string v9, "pdid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "pdid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    :cond_7
    const-string v9, "parentname"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "parentname"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    :cond_8
    const-string v9, "programtype"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "programtype"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    :cond_9
    const-string v9, "iscollect"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "iscollect"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    :cond_a
    const-string v9, "pic"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "pic"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\\|"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v8, v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    :cond_b
    const-string v9, "singer"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "singer"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    :cond_c
    const-string v9, "fromsource"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "fromsource"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    :cond_d
    const-string v9, "songid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "songid"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    :cond_e
    const-string v9, "comeType"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "comeType"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hongfans/carmedia/StringUtils;->toInt(Ljava/lang/Object;)I

    move-result v9

    iput v9, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    :cond_f
    const-string v9, "ad_before"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "ad_before"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_13

    new-instance v3, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-direct {v3}, Lcom/hongfans/rearview/services/api/ADModel;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v9, "ad_type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "ad_type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setAd_type(Ljava/lang/String;)V

    :cond_10
    const-string v9, "video_text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "video_text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setVideo_text(Ljava/lang/String;)V

    :cond_11
    const-string v9, "video_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v9, "video_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setVideo_url(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_13
    iput-object v0, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    :cond_14
    const-string v9, "ad_after"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "ad_after"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_18

    new-instance v3, Lcom/hongfans/rearview/services/api/ADModel;

    invoke-direct {v3}, Lcom/hongfans/rearview/services/api/ADModel;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v9, "ad_type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "ad_type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setAd_type(Ljava/lang/String;)V

    :cond_15
    const-string v9, "video_text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "video_text"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setVideo_text(Ljava/lang/String;)V

    :cond_16
    const-string v9, "video_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    const-string v9, "video_url"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hongfans/rearview/services/api/ADModel;->setVideo_url(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_18
    iput-object v0, v7, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    :cond_19
    return-object v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAfterAD()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getBeforeAD()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComeType()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    return v0
.end method

.method public getComefrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    return-object v0
.end method

.method public getCurpage()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    return v0
.end method

.method public getFilepath1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    return-wide v0
.end method

.method public getIscollect()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    return v0
.end method

.method public getIsnews()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    return v0
.end method

.method public getParentname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    return-object v0
.end method

.method public getPdid()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramtype()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSongid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcedataid()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    return v0
.end method

.method public getSourceid()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    return v0
.end method

.method public getUpdatetime()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    return v0
.end method

.method public get_id()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    return v0
.end method

.method public setAfterAD(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    return-void
.end method

.method public setBeforeAD(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hongfans/rearview/services/api/ADModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    return-void
.end method

.method public setComeType(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    return-void
.end method

.method public setComefrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    return-void
.end method

.method public setCurpage(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    return-void
.end method

.method public setFilepath1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    return-void
.end method

.method public setIscollect(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    return-void
.end method

.method public setIsnews(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    return-void
.end method

.method public setParentname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    return-void
.end method

.method public setPdid(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    return-void
.end method

.method public setProgramtype(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    return-void
.end method

.method public setSecondTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSongid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    return-void
.end method

.method public setSourcedataid(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    return-void
.end method

.method public setSourceid(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    return-void
.end method

.method public setUpdatetime(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    return-void
.end method

.method public set_id(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 8

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "id"

    iget-wide v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "pdid"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "curpage"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "updatetime"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "duration"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "sourceid"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "sourcedataid"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "total"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "programtype"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "pic"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "parentname"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "filepath"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "filepath1"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "priority"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "title"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "comefrom"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "album"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "singer"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "isnews"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "type"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "remark"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "_id"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "secondtitle"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "songid"

    iget-object v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "iscollect"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "comeType"

    iget v6, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ADModel;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "ad_type"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getAd_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "video_text"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getVideo_text()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "video_url"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getVideo_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string v5, ""

    :goto_1
    return-object v5

    :cond_0
    :try_start_1
    const-string v5, "ad_before"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v5, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hongfans/rearview/services/api/ADModel;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "ad_type"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getAd_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "video_text"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getVideo_text()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "video_url"

    invoke-virtual {v0}, Lcom/hongfans/rearview/services/api/ADModel;->getVideo_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const-string v5, "ad_after"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramDigtalModel{_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curpage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourcedataid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", programtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ad_before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ad_after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pic=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parentname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filepath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filepath1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comefrom=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", singer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isnews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", songid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iscollect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pdid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->curpage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->updatetime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourceid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->sourcedataid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->programtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->pic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->parentname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->filepath1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->priority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comefrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->singer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->isnews:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->remark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->secondtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->songid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->iscollect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->comeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_before:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/ProgramDigtalModel;->ad_after:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
