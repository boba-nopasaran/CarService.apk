.class public Lcom/car/cloud/CloudCallback;
.super Ljava/lang/Object;
.source "CloudCallback.java"

# interfaces
.implements Lcom/car/cloud/WebSocketCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllMsgList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAppointment(DDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBondRequest(Lcom/car/cloud/Type$UserInfo;)V
    .locals 0

    return-void
.end method

.method public onCurrentGPSPos(Ljava/lang/String;Lcom/car/cloud/Type$GPSData;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondlist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDeviceStatus(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onGPSHistoryFileReceived(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onGpsIntervalSet(I)V
    .locals 0

    return-void
.end method

.method public onLiveHeartbeat()V
    .locals 0

    return-void
.end method

.method public onLogout()V
    .locals 0

    return-void
.end method

.method public onLonginStatus(Lcom/car/cloud/Type$LoginInfo;)V
    .locals 0

    return-void
.end method

.method public onNotice(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onOnlinePreviewRequest(Ljava/lang/String;JLjava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onPickupInfo(DDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceiveMsg(Lcom/car/cloud/Type$MsgInfo;)V
    .locals 0

    return-void
.end method

.method public onRecordingVideo(Ljava/lang/String;JIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRequestTodayGPS(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTakingPhoto(Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserBondlist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserStatus(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onVoiceReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebSocketStatus(I)V
    .locals 0

    return-void
.end method
