.class Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SettingsNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/SettingsNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field public lastDbm:I

.field public lastState:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/systemfunc/SettingsNotifier;


# direct methods
.method private constructor <init>(Lcom/car/systemfunc/SettingsNotifier;)V
    .locals 1

    iput-object p1, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->lastState:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/systemfunc/SettingsNotifier;Lcom/car/systemfunc/SettingsNotifier$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;-><init>(Lcom/car/systemfunc/SettingsNotifier;)V

    return-void
.end method

.method private getAsuLevel(Landroid/telephony/SignalStrength;)I
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.telephony.SignalStrength"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getAsuLevel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDbm(Landroid/telephony/SignalStrength;)I
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.telephony.SignalStrength"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getDbm"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8

    const-wide/32 v6, 0x2bf20

    const/4 v0, 0x1

    const/4 v5, 0x5

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iput-object p1, v2, Lcom/car/systemfunc/SettingsNotifier;->mServiceState:Landroid/telephony/ServiceState;

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "CarSvc_SettingsNotifier"

    const-string v3, "service state === STATE_EMERGENCY_ONLY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v2, "CarSvc_SettingsNotifier"

    const-string v3, "service state === STATE_IN_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v2, v2, Lcom/car/systemfunc/SettingsNotifier;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v2, v2, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CarSvc_SettingsNotifier"

    const-string v3, "SIM_NETWORK_CHECK timer is set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v2, v2, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string v2, "CarSvc_SettingsNotifier"

    const-string v3, "Timer is already going, please wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v2, v2, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-static {v2}, Lcom/car/systemfunc/SettingsNotifier;->access$700(Lcom/car/systemfunc/SettingsNotifier;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v5, v2, :cond_3

    :goto_1
    const-string v2, "CarSvc_SettingsNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state === STATE_OUT_OF_SERVICE\uff0c isSimReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v2, v2, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "CarSvc_SettingsNotifier"

    const-string v3, "SIM_NETWORK_CHECK timer is set"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    iget-object v2, v2, Lcom/car/systemfunc/SettingsNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v2, "CarSvc_SettingsNotifier"

    const-string v3, "Timer is already going, please wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "CarSvc_SettingsNotifier"

    const-string v3, "service state === STATE_POWER_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->this$0:Lcom/car/systemfunc/SettingsNotifier;

    invoke-static {v2}, Lcom/car/systemfunc/SettingsNotifier;->access$1200(Lcom/car/systemfunc/SettingsNotifier;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->getDbm(Landroid/telephony/SignalStrength;)I

    move-result v2

    iput v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->lastDbm:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gsm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->getDbm(Landroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dBm, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->getAsuLevel(Landroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "asu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", GsmBitErrorRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/car/systemfunc/SettingsNotifier$MyPhoneStateListener;->lastState:Ljava/lang/String;

    return-void
.end method
