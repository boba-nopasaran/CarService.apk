.class public Lcom/car/common/SystemCtrl;
.super Ljava/lang/Object;
.source "SystemCtrl.java"


# static fields
.field public static final FM:Ljava/lang/String; = "fm_enable"

.field public static final FM_FREQ:Ljava/lang/String; = "fm_freq"

.field public static final QND_CH_FREQ_MAX:I = 0x2a30

.field public static final QND_CH_FREQ_MIN:I = 0x1db0

.field private static final TAG:Ljava/lang/String; = "CarSvc_SystemCtrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backlightDown(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    const/4 v7, -0x2

    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-gt v0, v3, :cond_0

    const-string v5, "\u5c4f\u5e55\u5df2\u7ecf\u6700\u6697"

    :goto_0
    return-object v5

    :cond_0
    sub-int v5, v2, v3

    int-to-float v5, v5

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v6

    float-to-int v1, v5

    sub-int/2addr v0, v1

    if-gt v0, v3, :cond_1

    move v0, v3

    :cond_1
    invoke-static {p0, v0}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    const-string v5, "\u5c4f\u5e55\u5df2\u8c03\u6697"

    goto :goto_0
.end method

.method public static backlightMax(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    invoke-static {p0, v0}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    const-string v2, "\u5c4f\u5e55\u5df2\u8c03\u5230\u6700\u4eae"

    return-object v2
.end method

.method public static backlightMin(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    invoke-static {p0, v0}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    const-string v2, "\u5c4f\u5e55\u5df2\u8c03\u5230\u6700\u6697"

    return-object v2
.end method

.method public static backlightUp(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    const/4 v7, -0x2

    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-lt v0, v2, :cond_0

    const-string v5, "\u5c4f\u5e55\u5df2\u7ecf\u6700\u4eae"

    :goto_0
    return-object v5

    :cond_0
    sub-int v5, v2, v3

    int-to-float v5, v5

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v6

    float-to-int v1, v5

    add-int/2addr v0, v1

    if-lt v0, v2, :cond_1

    move v0, v2

    :cond_1
    invoke-static {p0, v0}, Lcom/car/common/SystemCtrl;->setBrightness(Landroid/content/Context;I)V

    const-string v5, "\u5c4f\u5e55\u5df2\u8c03\u4eae"

    goto :goto_0
.end method

.method public static btEnable(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.intent.action.start.btphone"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const-string v3, "CarSvc_SystemCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btEnable <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "sys.bt.external"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "ActiveBT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.car.btspeaker"

    const-string v4, "com.car.btspeaker.GocsdkService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "enable"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    const-string v3, "\u6b63\u5728\u6253\u5f00\u84dd\u7259"

    :goto_0
    return-object v3

    :cond_1
    const-string v3, "\u6b63\u5728\u5173\u95ed\u84dd\u7259"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-ne v3, p1, :cond_4

    if-eqz p1, :cond_3

    const-string v3, "\u84dd\u7259\u5df2\u7ecf\u6253\u5f00"

    goto :goto_0

    :cond_3
    const-string v3, "\u84dd\u7259\u5df2\u7ecf\u5173\u95ed"

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const-string v3, "\u6b63\u5728\u6253\u5f00\u84dd\u7259"

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    const-string v3, "\u6b63\u5728\u5173\u95ed\u84dd\u7259"

    goto :goto_0

    :cond_6
    const-string v3, "\u64cd\u4f5c\u84dd\u7259\u5931\u8d25"

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static closeApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CarSvc_SystemCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceStopPackage failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dvrOpen(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.car.dvr"

    const-string v3, "com.car.dvr.CameraActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    const/4 v1, 0x0

    return-object v1
.end method

.method public static ecarCall(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ecar.recv"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ecarSendKey"

    const-string v2, "MakeCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cmdType"

    const-string v2, "standCMD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "keySet"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static ecarOpen(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.coagent.ecar"

    const-string v3, "com.coagent.ecarnet.car.activity.WelcomeActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    return-void
.end method

.method public static ecarRenew(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.coagent.ecar"

    const-string v3, "com.coagent.ecarnet.car.activity.EcarRenewActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    return-void
.end method

.method public static ecarVoip(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.coagent.voip"

    const-string v3, "com.coagent.voip.VOIPFragmentActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    return-void
.end method

.method public static edogCtrl(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    if-eqz p1, :cond_3

    const/16 v6, 0x8

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "com.sxprd.radarspeed"

    aput-object v6, v0, v9

    const/4 v6, 0x1

    const-string v7, "com.sxprd.radarspeed.SplashActivity"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "com.hdsc.edog"

    aput-object v7, v0, v6

    const-string v6, "com.hdsc.edog.LogoActivity"

    aput-object v6, v0, v10

    const/4 v6, 0x4

    const-string v7, "entry.dsa2014"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "entry.dsa2014.MainActivity"

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string v7, "com.xianzhigps.camera"

    aput-object v7, v0, v6

    const/4 v6, 0x7

    const-string v7, "com.xianzhigps.camera.XianzhiActivity"

    aput-object v7, v0, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    aget-object v7, v0, v2

    add-int/lit8 v8, v2, 0x1

    aget-object v8, v0, v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v3, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.car.edog.start"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "edoggaode"

    invoke-virtual {p0, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "mode"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz p1, :cond_1

    invoke-static {p0, v5}, Lcom/car/common/ProviderUtils;->setEDogMode(Landroid/content/Context;I)V

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.car.tts"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "content"

    const-string v7, "\u6b63\u5728\u6253\u5f00\u7535\u5b50\u72d7"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v6, ""

    :goto_1
    return-object v6

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.dx.intent.colse_edog"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.car.tts"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "content"

    const-string v7, "\u7535\u5b50\u72d7\u5df2\u5173\u95ed"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v6, ""

    goto :goto_1
.end method

.method public static fmEnable(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "CarSvc_SystemCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fmEnable <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/car/common/SystemCtrl;->setFMEnable(Landroid/content/Context;I)V

    const-string v0, "\u5373\u5c06\u6253\u5f00\u6536\u97f3\u673a\u53d1\u5c04\u53f0\uff0c\u8bf7\u6536\u542c\u5bf9\u5e94\u9891\u6bb5"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/car/common/SystemCtrl;->setFMEnable(Landroid/content/Context;I)V

    const-string v0, "\u5df2\u7ecf\u5173\u95ed\u6536\u97f3\u673a\u53d1\u5c04\u53f0"

    goto :goto_0
.end method

.method public static fmFreq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lcom/car/common/SystemCtrl;->getFMEnable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/car/common/SystemCtrl;->setFMEnable(Landroid/content/Context;I)V

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v1

    float-to-int v3, v4

    const-string v4, "CarSvc_SystemCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[fmFreq] freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1db0

    if-lt v3, v4, :cond_1

    const/16 v4, 0x2a30

    if-gt v3, v4, :cond_1

    invoke-static {p0, v3}, Lcom/car/common/SystemCtrl;->setFMFreq(Landroid/content/Context;I)V

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const-string v4, "\u9891\u6bb5\u89e3\u6790\u5931\u8d25"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "\u9891\u6bb5\u89e3\u6790\u5931\u8d25"

    goto :goto_0
.end method

.method static getFMEnable(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getFMEnable(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static getFMFreq(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getFMFreq(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static homeBack(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    const-string v1, "\u56de\u5230\u4e3b\u9875"

    return-object v1
.end method

.method public static kkbClose(Landroid/content/Context;)V
    .locals 5

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    const-string v2, "com.kaikaibao.android"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CarSvc_SystemCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceStopPackage failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static kkbOpen(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.kaikaibao.android"

    const-string v3, "com.kaikaibao.android.LaunchActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    return-void
.end method

.method public static openApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    return-void
.end method

.method public static pandoraClose(Landroid/content/Context;)V
    .locals 10

    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "com.ximalaya.ting.android.car"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "com.edog.car"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "com.itings.myradio"

    aput-object v8, v3, v7

    move-object v1, v3

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    invoke-static {p0, v6}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "CarSvc_SystemCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceStopPackage failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static pandoraOpen(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.ximalaya.ting.android.car"

    invoke-static {p0, v2}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.ximalaya.ting.android.car"

    const-string v3, "com.ximalaya.ting.android.car.activity.WelcomeActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1, p0}, Lcom/car/common/SystemCtrl;->startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z

    return-void

    :cond_1
    const-string v2, "com.edog.car"

    invoke-static {p0, v2}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.edog.car"

    const-string v3, "com.kaolafm.auto.home.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "com.itings.myradio"

    invoke-static {p0, v2}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.itings.myradio"

    const-string v3, "com.kaolafm.auto.home.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static sendEvent(III)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/car/common/SystemCtrl;->sendEvent(IIIJ)V

    return-void
.end method

.method static sendEvent(IIIJ)V
    .locals 15

    const/4 v0, 0x0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    or-int/lit8 v4, p2, 0x8

    or-int/lit8 v12, v4, 0x40

    const/16 v13, 0x201

    move-wide/from16 v4, p3

    move/from16 v6, p1

    move v7, p0

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method public static setBrightness(Landroid/content/Context;I)V
    .locals 4

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, -0x2

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static setFMEnable(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/car/common/ProviderUtils;->setFMEnable(Landroid/content/Context;I)V

    return-void
.end method

.method static setFMFreq(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/car/common/ProviderUtils;->setFMFreq(Landroid/content/Context;I)V

    return-void
.end method

.method public static snapShot()V
    .locals 3

    const/16 v2, 0x78

    const/4 v1, 0x0

    invoke-static {v2, v1, v1}, Lcom/car/common/SystemCtrl;->sendEvent(III)V

    const/4 v0, 0x1

    invoke-static {v2, v0, v1}, Lcom/car/common/SystemCtrl;->sendEvent(III)V

    return-void
.end method

.method public static softApEnable(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "CarSvc_SystemCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "softApEnable <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-eqz p1, :cond_1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    :cond_0
    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    move v0, v3

    :goto_0
    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {v2, v8, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v3, "\u6b63\u5728\u6253\u5f00\u70ed\u70b9"

    :goto_1
    return-object v3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    const-string v3, "\u70ed\u70b9\u5df2\u7ecf\u6253\u5f00"

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v2, v8, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-string v3, "\u6b63\u5728\u5173\u95ed\u70ed\u70b9"

    goto :goto_1

    :cond_5
    const-string v3, "\u70ed\u70b9\u5df2\u7ecf\u5173\u95ed"

    goto :goto_1
.end method

.method private static startActivitySafely(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string v2, "CarSvc_SystemCtrl"

    const-string v3, " startActivitySafety intent null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const/high16 v2, 0x30000000

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "CarSvc_SystemCtrl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static volumeDown(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "\u97f3\u91cf\u5df2\u7ecf\u6700\u5c0f"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, -0x5

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v2, "\u97f3\u91cf\u5df2\u8c03\u5c0f"

    const/4 v4, 0x1

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    if-nez v1, :cond_2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method public static volumeMax(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v1, "\u97f3\u91cf\u5df2\u7ecf\u6700\u5927"

    return-object v1
.end method

.method public static volumeOff(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v1, "\u5373\u5c06\u9759\u97f3"

    return-object v1
.end method

.method public static volumeOn(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v1, "\u97f3\u91cf\u6062\u590d"

    return-object v1
.end method

.method public static volumeUp(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x3

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v3, "\u97f3\u91cf\u5df2\u7ecf\u6700\u5927"

    :goto_0
    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x5

    if-lt v1, v2, :cond_1

    move v1, v2

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v3, "\u97f3\u91cf\u5df2\u589e\u52a0"

    goto :goto_0
.end method

.method public static wifiEnable(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "CarSvc_SystemCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifiEnable <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-eqz p1, :cond_1

    const/16 v5, 0xc

    if-eq v1, v5, :cond_0

    const/16 v5, 0xd

    if-ne v1, v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v0, v3

    :goto_0
    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v3, "\u6b63\u5728\u6253\u5f00wifi"

    :goto_1
    return-object v3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    const-string v3, "wifi\u5df2\u7ecf\u6253\u5f00"

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v3, "\u6b63\u5728\u5173\u95edwifi"

    goto :goto_1

    :cond_5
    const-string v3, "wifi\u5df2\u7ecf\u5173\u95ed"

    goto :goto_1
.end method
