.class interface abstract Lcom/car/cloud/WebSocketCallback;
.super Ljava/lang/Object;
.source "WebSocketCallback.java"


# virtual methods
.method public abstract onAllMsgList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAppointment(DDLjava/lang/String;)V
.end method

.method public abstract onBondRequest(Lcom/car/cloud/Type$UserInfo;)V
.end method

.method public abstract onCurrentGPSPos(Ljava/lang/String;Lcom/car/cloud/Type$GPSData;)V
.end method

.method public abstract onDeviceBondlist(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$DeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeviceStatus(Ljava/lang/String;I)V
.end method

.method public abstract onGPSHistoryFileReceived(Ljava/lang/String;I)V
.end method

.method public abstract onGpsIntervalSet(I)V
.end method

.method public abstract onLiveHeartbeat()V
.end method

.method public abstract onLogout()V
.end method

.method public abstract onLonginStatus(Lcom/car/cloud/Type$LoginInfo;)V
.end method

.method public abstract onNotice(Ljava/lang/String;Z)V
.end method

.method public abstract onOnlinePreviewRequest(Ljava/lang/String;JLjava/lang/String;II)V
.end method

.method public abstract onPickupInfo(DDLjava/lang/String;)V
.end method

.method public abstract onReceiveMsg(Lcom/car/cloud/Type$MsgInfo;)V
.end method

.method public abstract onRecordingVideo(Ljava/lang/String;JIILjava/lang/String;)V
.end method

.method public abstract onRequestTodayGPS(Ljava/lang/String;)V
.end method

.method public abstract onTakingPhoto(Ljava/lang/String;JILjava/lang/String;)V
.end method

.method public abstract onUserBondlist(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUserStatus(Ljava/lang/String;Z)V
.end method

.method public abstract onVoiceReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWebSocketStatus(I)V
.end method
