.class Lcom/car/edog/EDog$1;
.super Landroid/content/BroadcastReceiver;
.source "EDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/edog/EDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/edog/EDog;


# direct methods
.method constructor <init>(Lcom/car/edog/EDog;)V
    .locals 0

    iput-object p1, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.car.edog.update"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$000(Lcom/car/edog/EDog;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/car/common/ProviderUtils;->getEDogMode(Landroid/content/Context;)I

    move-result v3

    const-string v5, "CarSvc_eDog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.car.edog.update, edog_mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mModeBak="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v7}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v5

    if-eq v5, v3, :cond_0

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5, v3}, Lcom/car/edog/EDog;->access$102(Lcom/car/edog/EDog;I)I

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    iget-object v6, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v6}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/car/edog/EDog;->access$200(Lcom/car/edog/EDog;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "com.car.fakebtn.dclick"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ro.oem.customer"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ECAR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.car.fakebtn.report"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$000(Lcom/car/edog/EDog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$000(Lcom/car/edog/EDog;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/car/common/ProviderUtils;->getEDogMode(Landroid/content/Context;)I

    move-result v1

    const-string v5, "CarSvc_eDog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.car.fakebtn.dclick, mModeBak="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v7}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v1, :cond_4

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v5

    if-gtz v5, :cond_3

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/car/edog/EDog;->access$102(Lcom/car/edog/EDog;I)I

    :cond_3
    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v5

    const-string v6, "\u7535\u5b50\u72d7\u5df2\u6253\u5f00"

    invoke-virtual {v5, v6, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    iget-object v6, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v6}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/car/edog/EDog;->access$200(Lcom/car/edog/EDog;I)V

    const-string v5, "CarSvc_eDog"

    const-string v6, "turn on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5, v1}, Lcom/car/edog/EDog;->access$102(Lcom/car/edog/EDog;I)I

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v5

    const-string v6, "\u7535\u5b50\u72d7\u5df2\u5173\u95ed"

    invoke-virtual {v5, v6, v9}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5, v8}, Lcom/car/edog/EDog;->access$200(Lcom/car/edog/EDog;I)V

    const-string v5, "CarSvc_eDog"

    const-string v6, "turn off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v5, "com.car.gotosleep"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "CarSvc_eDog"

    const-string v6, "stopAimlessMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$300(Lcom/car/edog/EDog;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/navi/AMapNavi;->stopAimlessMode()V

    goto/16 :goto_0

    :cond_6
    const-string v5, "com.car.syswakeup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarSvc_eDog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.car.syswakeup, reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", eDogMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v7}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    const-string v5, "user,acc_on,gsensor"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, "CarSvc_eDog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAimlessMode\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v7}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$400(Lcom/car/edog/EDog;)[J

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$500(Lcom/car/edog/EDog;)[I

    move-result-object v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([II)V

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$300(Lcom/car/edog/EDog;)Lcom/amap/api/navi/AMapNavi;

    move-result-object v5

    iget-object v6, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v6}, Lcom/car/edog/EDog;->access$100(Lcom/car/edog/EDog;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/navi/AMapNavi;->startAimlessMode(I)V

    goto/16 :goto_0

    :cond_7
    const-string v5, "com.dx.intent.colse_edog"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$000(Lcom/car/edog/EDog;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/car/common/ProviderUtils;->getEDogMode(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/car/edog/EDog$1;->this$0:Lcom/car/edog/EDog;

    invoke-static {v5}, Lcom/car/edog/EDog;->access$000(Lcom/car/edog/EDog;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/car/common/ProviderUtils;->setEDogMode(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
