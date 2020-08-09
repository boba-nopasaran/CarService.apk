.class public abstract Lcom/car/common/CameraServicer;
.super Ljava/lang/Object;
.source "CameraServicer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getCameraID(Ljava/lang/String;)I
.end method

.method abstract getCameraList()Ljava/lang/String;
.end method

.method abstract getLivingStatus(I)Z
.end method

.method abstract isRecording()Z
.end method

.method abstract onlinePreviewRequest(Ljava/lang/String;II)V
.end method

.method abstract startRecording()V
.end method

.method abstract stopRecording()V
.end method

.method abstract takeBackPicture(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method abstract takeFrontPicture(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method abstract takeInsidePicture(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;
.end method
