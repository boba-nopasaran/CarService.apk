.class Lcom/car/systemfunc/DataCardManager$1;
.super Landroid/os/Handler;
.source "DataCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/systemfunc/DataCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/DataCardManager;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/DataCardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const-wide/16 v12, 0x2710

    const/16 v10, 0x1e

    const/4 v3, 0x1

    const/16 v9, 0xc8

    const/4 v5, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v9, :cond_0

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v6}, Lcom/car/systemfunc/DataCardManager;->access$000(Lcom/car/systemfunc/DataCardManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    const-string v6, "sys.register.done"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    iget v6, v6, Lcom/car/systemfunc/DataCardManager;->mWaitingCount:I

    if-gt v6, v10, :cond_1

    iget-object v5, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v5}, Lcom/car/systemfunc/DataCardManager;->access$000(Lcom/car/systemfunc/DataCardManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v5, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    iget v6, v5, Lcom/car/systemfunc/DataCardManager;->mWaitingCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/car/systemfunc/DataCardManager;->mWaitingCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    iget-boolean v6, v6, Lcom/car/systemfunc/DataCardManager;->mAlreadyPrompt:Z

    if-nez v6, :cond_2

    const-string v6, "persist.device.flag"

    const-string v7, "-1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "E:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    iput-boolean v3, v6, Lcom/car/systemfunc/DataCardManager;->mAlreadyPrompt:Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v7}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v7}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09003c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v6}, Lcom/car/systemfunc/DataCardManager;->access$200(Lcom/car/systemfunc/DataCardManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    :goto_1
    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v6}, Lcom/car/systemfunc/DataCardManager;->access$100(Lcom/car/systemfunc/DataCardManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v2

    const-string v6, "CarSvc_DataCardManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_CHECK_DATA_CARD: simCardReady="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isNetworkConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v6}, Lcom/car/systemfunc/DataCardManager;->access$308(Lcom/car/systemfunc/DataCardManager;)I

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v6}, Lcom/car/systemfunc/DataCardManager;->access$300(Lcom/car/systemfunc/DataCardManager;)I

    move-result v6

    if-lt v6, v10, :cond_3

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v6}, Lcom/car/systemfunc/DataCardManager;->access$200(Lcom/car/systemfunc/DataCardManager;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v6, v5}, Lcom/car/systemfunc/DataCardManager;->access$302(Lcom/car/systemfunc/DataCardManager;I)I

    iget-object v5, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v5}, Lcom/car/systemfunc/DataCardManager;->access$400(Lcom/car/systemfunc/DataCardManager;)V

    :cond_3
    iget-object v5, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v5}, Lcom/car/systemfunc/DataCardManager;->access$000(Lcom/car/systemfunc/DataCardManager;)Landroid/os/Handler;

    move-result-object v5

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v6, v5}, Lcom/car/systemfunc/DataCardManager;->access$302(Lcom/car/systemfunc/DataCardManager;I)I

    invoke-static {}, Lcom/car/systemfunc/DataCardManager;->instance()Lcom/car/systemfunc/DataCardManager;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/car/systemfunc/DataCardManager;->access$500(Lcom/car/systemfunc/DataCardManager;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/car/systemfunc/DataCardManager$1;->this$0:Lcom/car/systemfunc/DataCardManager;

    invoke-static {v5}, Lcom/car/systemfunc/DataCardManager;->access$000(Lcom/car/systemfunc/DataCardManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
