.class public Lcom/car/tencent/TencentWords;
.super Ljava/lang/Object;
.source "TencentWords.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrCommandListener;
.implements Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;


# static fields
.field static sInstance:Lcom/car/tencent/TencentWords;


# instance fields
.field CAPTURE2:Ljava/lang/String;

.field CAPTURE3:Ljava/lang/String;

.field CAPTURE4:Ljava/lang/String;

.field CAPTURE_PIC:Ljava/lang/String;

.field CAPTURE_PIC2:Ljava/lang/String;

.field CAPTURE_PIC3:Ljava/lang/String;

.field CAPTURE_PIC4:Ljava/lang/String;

.field CAPTURE_QUZHENG:Ljava/lang/String;

.field CAPTURING:Ljava/lang/String;

.field DLBCLOSE:Ljava/lang/String;

.field DLBOPEN:Ljava/lang/String;

.field DVR:Ljava/lang/String;

.field DVRCLOSE:Ljava/lang/String;

.field ECARDIAL:Ljava/lang/String;

.field ECAROPEN:Ljava/lang/String;

.field ECARRENEW:Ljava/lang/String;

.field ECARRESCUE:Ljava/lang/String;

.field ECARVOIP:Ljava/lang/String;

.field FMOFF:Ljava/lang/String;

.field FMON:Ljava/lang/String;

.field HOMEBACK:Ljava/lang/String;

.field HOMEBACK2:Ljava/lang/String;

.field KKBCLOSE:Ljava/lang/String;

.field KKBOPEN:Ljava/lang/String;

.field NAVIQUIT:Ljava/lang/String;

.field PANDORACLOSE:Ljava/lang/String;

.field PANDORAOPEN:Ljava/lang/String;

.field SCREENSHOT:Ljava/lang/String;

.field SCREENSHOT2:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field VIDEO_QUZHENG:Ljava/lang/String;

.field VOLDOWM:Ljava/lang/String;

.field VOLUP:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarSvc_TencentWords"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->TAG:Ljava/lang/String;

    const-string v0, "PandoraClose"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->PANDORACLOSE:Ljava/lang/String;

    const-string v0, "PandoraOpen"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->PANDORAOPEN:Ljava/lang/String;

    const-string v0, "EcarOpen"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->ECAROPEN:Ljava/lang/String;

    const-string v0, "EcarRescue"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->ECARRESCUE:Ljava/lang/String;

    const-string v0, "EcarDial"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->ECARDIAL:Ljava/lang/String;

    const-string v0, "EcarRenew"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->ECARRENEW:Ljava/lang/String;

    const-string v0, "EcarVoip"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->ECARVOIP:Ljava/lang/String;

    const-string v0, "HomeBack"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->HOMEBACK:Ljava/lang/String;

    const-string v0, "NaviQuit"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->NAVIQUIT:Ljava/lang/String;

    const-string v0, "FmOn"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->FMON:Ljava/lang/String;

    const-string v0, "FmOff"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->FMOFF:Ljava/lang/String;

    const-string v0, "Capture"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURING:Ljava/lang/String;

    const-string v0, "DVR"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->DVR:Ljava/lang/String;

    const-string v0, "DVRClose"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->DVRCLOSE:Ljava/lang/String;

    const-string v0, "VolDown"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->VOLDOWM:Ljava/lang/String;

    const-string v0, "VolUp"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->VOLUP:Ljava/lang/String;

    const-string v0, "KkbOpen"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->KKBOPEN:Ljava/lang/String;

    const-string v0, "KkbClose"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->KKBCLOSE:Ljava/lang/String;

    const-string v0, "DlbOpen"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->DLBOPEN:Ljava/lang/String;

    const-string v0, "DlbClose"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->DLBCLOSE:Ljava/lang/String;

    const-string v0, "\u6293\u62cd\u56fe\u7247"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURE_PIC:Ljava/lang/String;

    const-string v0, "\u56fe\u7247\u6293\u62cd"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURE_PIC2:Ljava/lang/String;

    const-string v0, "\u6293\u62cd\u4e00\u5f20"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURE_PIC3:Ljava/lang/String;

    const-string v0, "\u62cd\u7167\u62cd\u7167"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURE_PIC4:Ljava/lang/String;

    const-string v0, "\u89c6\u9891\u6293\u62cd"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURE2:Ljava/lang/String;

    const-string v0, "\u6293\u62cd\u89c6\u9891"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURE3:Ljava/lang/String;

    const-string v0, "\u8fdd\u7ae0\u6293\u62cd"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURE4:Ljava/lang/String;

    const-string v0, "\u53d6\u8bc1\u6293\u62cd"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->CAPTURE_QUZHENG:Ljava/lang/String;

    const-string v0, "\u5f55\u50cf\u53d6\u8bc1"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->VIDEO_QUZHENG:Ljava/lang/String;

    const-string v0, "\u6211\u8981\u622a\u5c4f"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->SCREENSHOT:Ljava/lang/String;

    const-string v0, "\u6211\u8981\u622a\u56fe"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->SCREENSHOT2:Ljava/lang/String;

    const-string v0, "\u56de\u5230\u4e3b\u9875"

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->HOMEBACK2:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/car/tencent/TencentWords;
    .locals 1

    sget-object v0, Lcom/car/tencent/TencentWords;->sInstance:Lcom/car/tencent/TencentWords;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/tencent/TencentWords;

    invoke-direct {v0}, Lcom/car/tencent/TencentWords;-><init>()V

    sput-object v0, Lcom/car/tencent/TencentWords;->sInstance:Lcom/car/tencent/TencentWords;

    :cond_0
    sget-object v0, Lcom/car/tencent/TencentWords;->sInstance:Lcom/car/tencent/TencentWords;

    return-object v0
.end method


# virtual methods
.method addCmdWords()V
    .locals 3

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->addIAsrCommandListener(Lcom/tencent/wecarspeech/sdk/TASAsrManager$IAsrCommandListener;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$16;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$16;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECAROPEN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$17;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$17;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECARDIAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$18;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$18;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECARRENEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$19;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$19;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v2, "ECARSOS"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$20;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$20;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECARVOIP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$21;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$21;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECARRESCUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$22;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$22;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v2, "ECARTIRE"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$23;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$23;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->DVRCLOSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$24;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$24;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->HOMEBACK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$25;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$25;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->FMON:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$26;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$26;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->FMOFF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v0

    new-instance v1, Lcom/car/tencent/TencentWords$27;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$27;-><init>(Lcom/car/tencent/TencentWords;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->NAVIQUIT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->registerCommand(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method addWakeupWords()V
    .locals 4

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    const-string v1, "WAKEUP_SYS"

    invoke-direct {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/car/tencent/TencentWords$15;

    invoke-direct {v1, p0}, Lcom/car/tencent/TencentWords$15;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v2, "PIC_CAP"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$14;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$14;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "VIDEO_CAP"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$13;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$13;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "SCREEN_CAP"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$12;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$12;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "CAM_OEPN"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$11;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$11;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "CAM_F"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$10;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$10;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "CAM_B"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$9;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$9;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "CAM_R"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$8;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$8;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "CAM_L"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$7;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$7;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "EDOG_OPEN"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$6;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$6;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "BT_OPEN"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$5;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$5;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "FULL_EXIT"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$4;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$4;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "MAP_FULL"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$3;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$3;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "HOME_BACK"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$2;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$2;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "SCREEN_ON"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    move-result-object v1

    new-instance v2, Lcom/car/tencent/TencentWords$1;

    invoke-direct {v2, p0}, Lcom/car/tencent/TencentWords$1;-><init>(Lcom/car/tencent/TencentWords;)V

    const-string v3, "SCREEN_OFF"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->addWakeupKeywords(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;

    invoke-virtual {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;->setISceneWakeupListener(Lcom/tencent/wecarspeech/sdk/TASAsrManager$ISceneWakeupAsrListener;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->enableWakeup(Z)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASAsrManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wecarspeech/sdk/TASAsrManager;->startWakeupAsrScene(Lcom/tencent/wecarspeech/sdk/TASAsrManager$SceneWakeupAsrTool;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/car/tencent/TencentWords;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/car/tencent/TencentWords;->addWakeupWords()V

    invoke-virtual {p0}, Lcom/car/tencent/TencentWords;->addCmdWords()V

    return-void
.end method

.method public onAsrCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "CarSvc_TencentWords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAsrCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECAROPEN:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/SystemCtrl;->ecarOpen(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->DVRCLOSE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->HOMEBACK:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->FMON:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/car/common/SystemCtrl;->fmEnable(Landroid/content/Context;Z)Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->FMOFF:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/car/common/SystemCtrl;->fmEnable(Landroid/content/Context;Z)Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->NAVIQUIT:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-string v2, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "KEY_TYPE"

    const/16 v3, 0x2725

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "WECARNAVIAUTO_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "KEY_TPYE"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "EXTRA_OPERA"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECARDIAL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/SystemCtrl;->ecarCall(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECARRENEW:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.ecar.recv"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ecarSendKey"

    const-string v3, "Renew"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/SystemCtrl;->ecarRenew(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "ECARSOS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.ecar.recv"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ecarSendKey"

    const-string v3, "StartECar"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "ECARTIRE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.ecar.recv"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ecarSendKey"

    const-string v3, "Chat"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECARVOIP:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/common/SystemCtrl;->ecarVoip(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/car/tencent/TencentWords;->ECARRESCUE:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.ecar.recv"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ecarSendKey"

    const-string v3, "Rescue"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onWakeupAsr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/high16 v8, 0x30200000

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "CarSvc_TencentWords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWakeupAsr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PIC_CAP"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ro.voicecap.redirect"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.voicecmd"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.takepicture"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.monitor"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "operation"

    const-string v4, "image"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "id"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "cam"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "nosound"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "ro.voice.remind"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u6293\u62cd\u56fe\u7247"

    invoke-virtual {v3, v4, v6}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto :goto_0

    :cond_2
    const-string v3, "VIDEO_CAP"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ro.voicecap.redirect"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.voicecmd"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.video.capturenow"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "ro.voice.remind"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u6293\u62cd\u89c6\u9891"

    invoke-virtual {v3, v4, v6}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_4
    const-string v3, "SCREEN_CAP"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/car/common/SystemCtrl;->snapShot()V

    goto/16 :goto_0

    :cond_5
    const-string v3, "CAM_OEPN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "CAM_F"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "front"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "CAM_B"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "rear"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "CAM_L"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "left"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    const-string v3, "CAM_R"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.car.dvr"

    const-string v4, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "camera_name"

    const-string v4, "right"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "SCREEN_ON"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "SCREEN_OFF"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "EDOG_OPEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/car/common/SystemCtrl;->edogCtrl(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v3, "BT_OPEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/car/common/SystemCtrl;->btEnable(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v3, "FULL_EXIT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    const-string v5, "immersive.full=xx"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    const-string v5, "immersive.off=xx"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_f
    const-string v3, "MAP_FULL"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "policy_control"

    const-string v5, "immersive.full=com.autonavi.amapautolite"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_10
    const-string v3, "HOME_BACK"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/tencent/TencentWords;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0
.end method
