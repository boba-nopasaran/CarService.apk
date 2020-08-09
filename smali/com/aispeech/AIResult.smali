.class public Lcom/aispeech/AIResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aispeech/AIResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field public dataType:I

.field public last:Z

.field public recordId:Ljava/lang/String;

.field public resultObject:Ljava/lang/Object;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aispeech/AIResult$1;

    invoke-direct {v0}, Lcom/aispeech/AIResult$1;-><init>()V

    sput-object v0, Lcom/aispeech/AIResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/AIResult;->last:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/aispeech/AIResult;->last:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/aispeech/AIResult;->dataType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/aispeech/AIResult;->last:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/AIResult;->recordId:Ljava/lang/String;

    iget v0, p0, Lcom/aispeech/AIResult;->dataType:I

    sget v1, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aispeech/AIResult;->timestamp:J

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aispeech/AIResult;->a:I

    iget v0, p0, Lcom/aispeech/AIResult;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aispeech/AIResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static bundleResults(ILjava/lang/String;[B)Lcom/aispeech/AIResult;
    .locals 4

    new-instance v0, Lcom/aispeech/AIResult;

    invoke-direct {v0}, Lcom/aispeech/AIResult;-><init>()V

    sget v1, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne p0, v1, :cond_0

    invoke-static {p2}, Lcom/aispeech/common/Util;->newUTF8String([B)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p2}, Lcom/aispeech/AIResult;->setResultObject(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/aispeech/AIResult;->setRecordId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aispeech/AIResult;->setTimestamp(J)V

    invoke-virtual {v0, p0}, Lcom/aispeech/AIResult;->setResultType(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRecordId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/AIResult;->recordId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    iget v0, p0, Lcom/aispeech/AIResult;->dataType:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/aispeech/AIResult;->timestamp:J

    return-wide v0
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/AIResult;->last:Z

    return v0
.end method

.method public setLast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/AIResult;->last:Z

    return-void
.end method

.method public setRecordId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/AIResult;->recordId:Ljava/lang/String;

    return-void
.end method

.method public setResultObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    return-void
.end method

.method public setResultType(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/AIResult;->dataType:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/aispeech/AIResult;->timestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/aispeech/AIResult;->dataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/aispeech/AIResult;->last:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/aispeech/AIResult;->recordId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/aispeech/AIResult;->dataType:I

    sget v1, Lcom/aispeech/common/AIConstant;->AIENGINE_MESSAGE_TYPE_JSON:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-wide v0, p0, Lcom/aispeech/AIResult;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lcom/aispeech/AIResult;->a:I

    iget v0, p0, Lcom/aispeech/AIResult;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/aispeech/AIResult;->resultObject:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method
