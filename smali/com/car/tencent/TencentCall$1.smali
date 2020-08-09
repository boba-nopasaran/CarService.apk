.class Lcom/car/tencent/TencentCall$1;
.super Landroid/content/BroadcastReceiver;
.source "TencentCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/tencent/TencentCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/tencent/TencentCall;


# direct methods
.method constructor <init>(Lcom/car/tencent/TencentCall;)V
    .locals 0

    iput-object p1, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/16 v11, 0x10

    const/4 v10, 0x3

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    iget-object v6, v6, Lcom/car/tencent/TencentCall;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "com.car.bthpone.contacts.notify"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "status"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x3ec

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    iget-boolean v6, v6, Lcom/car/tencent/TencentCall;->mBTConnected:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/car/tencent/TencentCall$1$1;

    invoke-direct {v7, p0}, Lcom/car/tencent/TencentCall$1$1;-><init>(Lcom/car/tencent/TencentCall$1;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.car.btphone.action"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "status"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "numbername"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;

    invoke-direct {v3, v4, v4}, Lcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xc

    if-ne v1, v6, :cond_2

    iget-object v6, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    const/4 v7, 0x2

    iput v7, v6, Lcom/car/tencent/TencentCall;->mStatus:I

    :goto_1
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->getInstance()Lcom/tencent/wecarspeech/sdk/TASTelManager;

    move-result-object v6

    iget-object v7, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    iget v7, v7, Lcom/car/tencent/TencentCall;->mStatus:I

    invoke-virtual {v6, v7, v3}, Lcom/tencent/wecarspeech/sdk/TASTelManager;->notifyTelCallStatus(ILcom/tencent/wecarspeech/sdk/TASTelManager$PhoneContact;)V

    goto :goto_0

    :cond_2
    const/16 v6, 0xa

    if-ne v1, v6, :cond_3

    iget-object v6, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    iput v9, v6, Lcom/car/tencent/TencentCall;->mStatus:I

    goto :goto_1

    :cond_3
    if-ne v1, v11, :cond_4

    iget-object v6, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    iput v10, v6, Lcom/car/tencent/TencentCall;->mStatus:I

    goto :goto_1

    :cond_4
    const/16 v6, 0xe

    if-ne v1, v6, :cond_5

    iget-object v6, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    const/4 v7, 0x1

    iput v7, v6, Lcom/car/tencent/TencentCall;->mStatus:I

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    iput v10, v6, Lcom/car/tencent/TencentCall;->mStatus:I

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.car.bthpone.connected.notify"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "connected"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v6, p0, Lcom/car/tencent/TencentCall$1;->this$0:Lcom/car/tencent/TencentCall;

    invoke-virtual {v6, v2}, Lcom/car/tencent/TencentCall;->doReportBTState(Z)V

    goto :goto_0
.end method
