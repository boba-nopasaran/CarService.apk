.class Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BleSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleSdkManagerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;


# direct methods
.method private constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;-><init>(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, -0x1

    const-string v2, "ble.sdk.thread.id"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->access$100(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "ble.sdk.mgr.command"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    iget-object v2, v2, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BleSdkManagerReceiver:onReceive, something wrong, ThreadID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-static {v4}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->access$100(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CommandID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-static {v2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->access$200(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-static {v2, p2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->access$300(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-static {v2, p2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->access$400(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager$BleSdkManagerReceiver;->this$0:Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;

    invoke-static {v2, p2}, Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;->access$500(Lcom/jinglingtec/ijiazublctor/bluetooth/BleSDKManager;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x910
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
