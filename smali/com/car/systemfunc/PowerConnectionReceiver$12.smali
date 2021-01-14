.class Lcom/car/systemfunc/PowerConnectionReceiver$12;
.super Ljava/lang/Object;
.source "PowerConnectionReceiver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/systemfunc/PowerConnectionReceiver;->initSleepDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iput-object p2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1664
    const-string v2, "CarSvc_PowerConnectionReceiver"

    const-string v3, "kill all apps and go to sleep!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1669
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1670
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1672
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iput-boolean v6, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mWifiRecover:Z

    .line 1673
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$900(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1674
    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-static {v3, v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$902(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 1676
    :cond_0
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$900(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1677
    const-string v2, "CarSvc_PowerConnectionReceiver"

    const-string v3, "close wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_1
    const-string v2, "ro.acc.fm"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1681
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/car/common/ProviderUtils;->getFMEnable(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1682
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iput-boolean v6, v2, Lcom/car/systemfunc/PowerConnectionReceiver;->mFmRecover:Z

    .line 1683
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$200(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/car/common/ProviderUtils;->setFMEnable(Landroid/content/Context;I)V

    .line 1687
    :cond_2
    invoke-static {v5}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$402(Z)Z

    .line 1688
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    iget-object v3, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$1000(Lcom/car/systemfunc/PowerConnectionReceiver;Landroid/content/Context;)V

    .line 1689
    iget-object v2, p0, Lcom/car/systemfunc/PowerConnectionReceiver$12;->this$0:Lcom/car/systemfunc/PowerConnectionReceiver;

    invoke-static {v2}, Lcom/car/systemfunc/PowerConnectionReceiver;->access$100(Lcom/car/systemfunc/PowerConnectionReceiver;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1690
    return-void
.end method
