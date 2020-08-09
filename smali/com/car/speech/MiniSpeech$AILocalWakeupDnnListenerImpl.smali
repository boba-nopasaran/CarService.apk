.class Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;
.super Ljava/lang/Object;
.source "MiniSpeech.java"

# interfaces
.implements Lcom/aispeech/export/listeners/AILocalWakeupDnnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/speech/MiniSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AILocalWakeupDnnListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/speech/MiniSpeech;


# direct methods
.method private constructor <init>(Lcom/car/speech/MiniSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/speech/MiniSpeech;Lcom/car/speech/MiniSpeech$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;-><init>(Lcom/car/speech/MiniSpeech;)V

    return-void
.end method


# virtual methods
.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/aispeech/AIError;)V
    .locals 0

    return-void
.end method

.method public onInit(I)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "CarSvc_MiniSpeech"

    const-string v1, "WAKEUP \u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-static {v0}, Lcom/car/speech/MiniSpeech;->access$500(Lcom/car/speech/MiniSpeech;)Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CarSvc_MiniSpeech"

    const-string v1, "WAKEUP \u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReadyForSpeech()V
    .locals 2

    const-string v0, "CarSvc_MiniSpeech"

    const-string v1, "\u53ef\u4ee5\u8bf4\u8bdd\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecorderReleased()V
    .locals 0

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method

.method public onWakeup(Ljava/lang/String;DLjava/lang/String;)V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "CarSvc_MiniSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5524\u9192\u6210\u529f  wakeupWord = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  confidence = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "da kai dian zi gou"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/car/common/SystemCtrl;->edogCtrl(Landroid/content/Context;Z)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "guan bi dian zi gou"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/car/common/SystemCtrl;->edogCtrl(Landroid/content/Context;Z)Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v4, "da kai ping mu"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    :cond_3
    const-string v4, "guan bi ping mu"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    :cond_4
    const-string v4, "da kai qian she xiang tou"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.car.camera.preview"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "camera_name"

    const-string v5, "front"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v4, "da kai hou she xiang tou"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.car.camera.preview"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "camera_name"

    const-string v5, "rear"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "da kai she xiang tou"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.car.camera.preview"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "fan hui zhu ye"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "fan hui zhuo mian"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->homeBack(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v4, "shi pin zhua pai"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "zhua pai shi pin"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.car.video.capturenow"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "ro.voice.remind"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const-string v5, "\u6b63\u5728\u6293\u62cd\u89c6\u9891"

    invoke-virtual {v4, v5, v8}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_b
    const-string v4, "wo yao jie tu"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/car/common/SystemCtrl;->snapShot()V

    goto/16 :goto_0

    :cond_c
    const-string v4, "da kai xing che ai si ou ai si"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.ecar.recv"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ecarSendKey"

    const-string v5, "StartECar"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_d
    const-string v4, "wo yao jiu yuan"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.ecar.recv"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ecarSendKey"

    const-string v5, "Rescue"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    const-string v4, "wo yao pei liao"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.ecar.recv"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ecarSendKey"

    const-string v5, "Chat"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "hui yuan xu fei"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.ecar.recv"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ecarSendKey"

    const-string v5, "Renew"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/SystemCtrl;->ecarRenew(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_10
    const-string v4, "ren gong ke fu"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "yi ka ke fu"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "yi ka fu wu"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.car.takepicture"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v4, "lu kuang cha xun"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "cha xun lu kuang"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "qian fang lu kuang"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "lu kuang zen mo yang"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.car.edog.traffic.request"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    const-string v4, "zhua pai tu pian"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "tu pian zhua pai"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.car.monitor"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "operation"

    const-string v5, "image"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "id"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "cam"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "nosound"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "path"

    const-string v5, "ro.monitor.picture.path"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    iget-object v4, v4, Lcom/car/speech/MiniSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "ro.voice.remind"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v4

    const-string v5, "\u6b63\u5728\u6293\u62cd\u56fe\u7247"

    invoke-virtual {v4, v5, v8}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    goto/16 :goto_0
.end method

.method public onWakeupEngineStopped()V
    .locals 1

    iget-object v0, p0, Lcom/car/speech/MiniSpeech$AILocalWakeupDnnListenerImpl;->this$0:Lcom/car/speech/MiniSpeech;

    invoke-static {v0}, Lcom/car/speech/MiniSpeech;->access$500(Lcom/car/speech/MiniSpeech;)Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/export/engines/AILocalWakeupDnnEngine;->start()V

    return-void
.end method
