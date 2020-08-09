.class Lcom/car/jiazu/RemoteService$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/RemoteService;


# direct methods
.method constructor <init>(Lcom/car/jiazu/RemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/RemoteService$MyReceiver;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.car.btkb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/jiazu/RemoteService$MyReceiver;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v2}, Lcom/car/jiazu/RemoteService;->reportBtKbStatus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "CarSvc_jiazuRemoteService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_STATE_CHANGED, exState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/car/jiazu/RemoteService$MyReceiver;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v2}, Lcom/car/jiazu/RemoteService;->access$000(Lcom/car/jiazu/RemoteService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/car/jiazu/RemoteService$MyReceiver;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v2}, Lcom/car/jiazu/RemoteService;->RemoteEnable()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/car/jiazu/RemoteService$MyReceiver;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v2}, Lcom/car/jiazu/RemoteService;->RemoteDisable()V

    goto :goto_0
.end method
