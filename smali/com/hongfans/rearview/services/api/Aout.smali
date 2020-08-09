.class public Lcom/hongfans/rearview/services/api/Aout;
.super Ljava/lang/Object;
.source "Aout.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hongfans/rearview/services/api/Aout;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AudioPlayer/aout"


# instance fields
.field private height:[I

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private maxVolume:F

.field private minVolume:F

.field private numBands:I

.field public playing_progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hongfans/rearview/services/api/Aout$1;

    invoke-direct {v0}, Lcom/hongfans/rearview/services/api/Aout$1;-><init>()V

    sput-object v0, Lcom/hongfans/rearview/services/api/Aout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x50

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hongfans/rearview/services/api/Aout;->playing_progress:I

    iput v1, p0, Lcom/hongfans/rearview/services/api/Aout;->minVolume:F

    iput v1, p0, Lcom/hongfans/rearview/services/api/Aout;->maxVolume:F

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->height:[I

    iput v2, p0, Lcom/hongfans/rearview/services/api/Aout;->numBands:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/16 v2, 0x50

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hongfans/rearview/services/api/Aout;->playing_progress:I

    iput v1, p0, Lcom/hongfans/rearview/services/api/Aout;->minVolume:F

    iput v1, p0, Lcom/hongfans/rearview/services/api/Aout;->maxVolume:F

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->height:[I

    iput v2, p0, Lcom/hongfans/rearview/services/api/Aout;->numBands:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/Aout;->numBands:I

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->height:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method


# virtual methods
.method public changeVolume(I)V
    .locals 5

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/hongfans/rearview/services/api/Aout;->minVolume:F

    int-to-float v2, p1

    iget v3, p0, Lcom/hongfans/rearview/services/api/Aout;->maxVolume:F

    iget v4, p0, Lcom/hongfans/rearview/services/api/Aout;->minVolume:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_0
    return-void
.end method

.method public closeAout()V
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()[I
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->height:[I

    return-object v0
.end method

.method public getNumBands()I
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/Aout;->numBands:I

    return v0
.end method

.method public initAout(III)V
    .locals 8

    const/16 v3, 0xc

    const/4 v2, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    move v0, v2

    :goto_0
    invoke-static {p1, v0, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    if-ne p2, v6, :cond_0

    move v3, v2

    :cond_0
    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/Aout;->maxVolume:F

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    iput v0, p0, Lcom/hongfans/rearview/services/api/Aout;->minVolume:F

    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public pauseAout()V
    .locals 1

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public playAudio([BI)V
    .locals 2

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0
.end method

.method public setHeight([I)V
    .locals 0

    iput-object p1, p0, Lcom/hongfans/rearview/services/api/Aout;->height:[I

    return-void
.end method

.method public setNumBands(I)V
    .locals 0

    iput p1, p0, Lcom/hongfans/rearview/services/api/Aout;->numBands:I

    return-void
.end method

.method public showSpectrumHeight([III)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hongfans/rearview/services/api/Aout;->height:[I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput p2, p0, Lcom/hongfans/rearview/services/api/Aout;->numBands:I

    iput p3, p0, Lcom/hongfans/rearview/services/api/Aout;->playing_progress:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/hongfans/rearview/services/api/Aout;->numBands:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/hongfans/rearview/services/api/Aout;->height:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
