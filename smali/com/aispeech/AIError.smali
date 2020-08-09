.class public Lcom/aispeech/AIError;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aispeech/AIError;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERR_AEC_PREPARE_FAILED:I = 0x11507

.field public static final ERR_AI_ENGINE:I = 0x114f6

.field public static final ERR_CORE_CLOSE:I = 0x1f4

.field public static final ERR_DESCRIPTION_AEC_PREPARE_FAILED:Ljava/lang/String; = "AEC\u8d44\u6e90\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

.field public static final ERR_DESCRIPTION_AI_ENGINE:Ljava/lang/String; = "\u65e0\u6cd5\u542f\u52a8\u5f15\u64ce!"

.field public static final ERR_DESCRIPTION_CORE_CLOSE:Ljava/lang/String; = "\u5185\u6838\u5d29\u6e83"

.field public static final ERR_DESCRIPTION_DEVICE:Ljava/lang/String; = "\u65e0\u6cd5\u83b7\u53d6\u5f55\u97f3\u8bbe\u5907!"

.field public static final ERR_DESCRIPTION_EMPTY_RESULT:Ljava/lang/String; = "\u8bc6\u522b\u7ed3\u679c\u4e3a\u7a7a"

.field public static final ERR_DESCRIPTION_ERR_OTHER:Ljava/lang/String; = "\u672a\u77e5\u9519\u8bef"

.field public static final ERR_DESCRIPTION_MAX_SPEECH:Ljava/lang/String; = "\u97f3\u9891\u65f6\u957f\u8d85\u51fa\u9608\u503c"

.field public static final ERR_DESCRIPTION_NO_SPEECH:Ljava/lang/String; = "\u6ca1\u6709\u68c0\u6d4b\u5230\u8bed\u97f3"

.field public static final ERR_DESCRIPTION_PROVISION_PREPARE_FAILED:Ljava/lang/String; = "\u8bc1\u4e66\u6587\u4ef6\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5provision.file\u6587\u4ef6\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

.field public static final ERR_DESCRIPTION_RECORDING:Ljava/lang/String; = "\u5f55\u97f3\u5931\u8d25!"

.field public static final ERR_DESCRIPTION_REC_FAILED:Ljava/lang/String; = "\u8bc6\u522b\u5931\u8d25"

.field public static final ERR_DESCRIPTION_TTS_INVALID_REFTEXT:Ljava/lang/String; = "\u65e0\u6548\u7684\u5408\u6210\u6587\u672c"

.field public static final ERR_DESCRIPTION_TTS_MEDIAPLAYER:Ljava/lang/String; = "\u5408\u6210MediaPlayer\u64ad\u653e\u5668\u9519\u8bef:"

.field public static final ERR_DESCRIPTION_VAD_PREPARE_FAILED:Ljava/lang/String; = "VAD\u8d44\u6e90\u51c6\u5907\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b58\u653e\u5728assets\u76ee\u5f55\u4e0b"

.field public static final ERR_DESCRIPTION_WAIT_CLOUD_TIME_OUT:Ljava/lang/String; = "\u7b49\u5f85\u4e91\u7aef\u7ed3\u679c\u8d85\u65f6"

.field public static final ERR_DEVICE:I = 0x114f5

.field public static final ERR_MAX_SPEECH:I = 0x114f9

.field public static final ERR_NO_SPEECH:I = 0x114f8

.field public static final ERR_OTHER:I = 0x114f4

.field public static final ERR_PROVISION_PREPARE_FAILED:I = 0x11501

.field public static final ERR_RECORDING:I = 0x114f7

.field public static final ERR_REC_FAILED:I = 0x190

.field public static final ERR_TTS_INVALID_REFTEXT:I = 0x11a0b

.field public static final ERR_TTS_MEDIAPLAYER:I = 0x11a0c

.field public static final ERR_VAD_PREPARE_FAILED:I = 0x11500

.field public static final ERR_WAIT_CLOUD_TIME_OUT:I = 0x114fe

.field public static final KEY_CODE:Ljava/lang/String; = "errId"

.field public static final KEY_EXT:Ljava/lang/String; = "ext"

.field public static final KEY_RECORD_ID:Ljava/lang/String; = "recordId"

.field public static final KEY_TEXT:Ljava/lang/String; = "error"

.field public static final KEY_TIME:Ljava/lang/String; = "timestamp"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aispeech/AIError$1;

    invoke-direct {v0}, Lcom/aispeech/AIError$1;-><init>()V

    sput-object v0, Lcom/aispeech/AIError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const v0, 0x114f4

    iput v0, p0, Lcom/aispeech/AIError;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aispeech/AIError;->d:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/aispeech/AIError;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const v0, 0x114f4

    iput v0, p0, Lcom/aispeech/AIError;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aispeech/AIError;->d:J

    iput p1, p0, Lcom/aispeech/AIError;->a:I

    iput-object p2, p0, Lcom/aispeech/AIError;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/aispeech/AIError;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/aispeech/AIError;->d:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const v0, 0x114f4

    iput v0, p0, Lcom/aispeech/AIError;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aispeech/AIError;->d:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aispeech/AIError;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/AIError;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/AIError;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/AIError;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/AIError;->d:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/AIError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aispeech/AIError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const v0, 0x114f4

    iput v0, p0, Lcom/aispeech/AIError;->a:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aispeech/AIError;->d:J

    invoke-virtual {p0, p1}, Lcom/aispeech/AIError;->stringToJSON(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/aispeech/AIError;->setRecordId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aispeech/AIError;->setTimestamp(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrId()I
    .locals 1

    iget v0, p0, Lcom/aispeech/AIError;->a:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/AIError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/AIError;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/AIError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/AIError;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isNetWorkError()Z
    .locals 2

    iget v0, p0, Lcom/aispeech/AIError;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "706"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setErrId(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/AIError;->a:I

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/AIError;->b:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/AIError;->e:Ljava/lang/String;

    return-void
.end method

.method public setRecordId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/AIError;->c:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/AIError;->d:J

    return-void
.end method

.method public stringToJSON(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "errId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/aispeech/AIError;->a:I

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/AIError;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "errId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "errId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/aispeech/AIError;->a:I

    :cond_2
    if-eqz v0, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/AIError;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "errId"

    iget v2, p0, Lcom/aispeech/AIError;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "error"

    iget-object v2, p0, Lcom/aispeech/AIError;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/aispeech/AIError;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "recordId"

    iget-object v2, p0, Lcom/aispeech/AIError;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-wide v2, p0, Lcom/aispeech/AIError;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/aispeech/AIError;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/aispeech/AIError;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "ext"

    iget-object v2, p0, Lcom/aispeech/AIError;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/aispeech/AIError;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/aispeech/AIError;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aispeech/AIError;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/AIError;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/AIError;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/aispeech/AIError;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
