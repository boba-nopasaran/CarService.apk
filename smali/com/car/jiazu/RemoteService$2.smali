.class Lcom/car/jiazu/RemoteService$2;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Lcom/car/jiazu/Remote$RemoteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/jiazu/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/jiazu/RemoteService;


# direct methods
.method constructor <init>(Lcom/car/jiazu/RemoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnUpdata(Lcom/car/jiazu/Remote$ConnPara;I)V
    .locals 4

    if-nez p2, :cond_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :cond_2
    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    const-string v1, "CarSvc_jiazuRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/jiazu/Remote$ConnPara;->interval:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " latency:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/jiazu/Remote$ConnPara;->latency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/car/jiazu/Remote$ConnPara;->timeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/car/jiazu/RemoteService;->access$200(Lcom/car/jiazu/RemoteService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectFail()V
    .locals 3

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    const-string v1, "CarSvc_jiazuRemoteService"

    const-string v2, "onConnectFail"

    invoke-static {v0, v1, v2}, Lcom/car/jiazu/RemoteService;->access$200(Lcom/car/jiazu/RemoteService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/jiazu/RemoteService$RemoteUiListener;->onConnectFail()V

    :cond_0
    return-void
.end method

.method public onConnected()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    const-string v1, "CarSvc_jiazuRemoteService"

    const-string v2, "onConnected"

    invoke-static {v0, v1, v2}, Lcom/car/jiazu/RemoteService;->access$200(Lcom/car/jiazu/RemoteService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/jiazu/RemoteService$RemoteUiListener;->onConnected()V

    :cond_0
    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    iput-boolean v3, v0, Lcom/car/jiazu/RemoteService;->mIsConnected:Z

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v0}, Lcom/car/jiazu/RemoteService;->reportBtKbStatus()V

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    iget-boolean v0, v0, Lcom/car/jiazu/RemoteService;->mIsConnected:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    iget-object v2, v2, Lcom/car/jiazu/RemoteService;->mBtName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5df2\u7ecf\u6210\u529f\u8fde\u63a5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    iget-object v2, v2, Lcom/car/jiazu/RemoteService;->mBtName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5df2\u7ecf\u65ad\u5f00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onConnecting()V
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/jiazu/RemoteService$RemoteUiListener;->onConnecting()V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    const-string v2, "CarSvc_jiazuRemoteService"

    const-string v3, "onDisconnected"

    invoke-static {v1, v2, v3}, Lcom/car/jiazu/RemoteService;->access$200(Lcom/car/jiazu/RemoteService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v1}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v1}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/car/jiazu/RemoteService$RemoteUiListener;->onDisconnected()V

    :cond_0
    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v1}, Lcom/car/jiazu/RemoteService;->reportBtKbStatus()V

    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    iget-boolean v1, v1, Lcom/car/jiazu/RemoteService;->mIsConnected:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/car/utils/TipPlayer;->instance()Lcom/car/utils/TipPlayer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    iget-object v3, v3, Lcom/car/jiazu/RemoteService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5df2\u7ecf\u65ad\u5f00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/car/utils/TipPlayer;->playSpeech(Ljava/lang/String;I)I

    :cond_1
    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/car/jiazu/RemoteService;->mIsConnected:Z

    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v1}, Lcom/car/jiazu/RemoteService;->access$000(Lcom/car/jiazu/RemoteService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v1}, Lcom/car/jiazu/RemoteService;->RemoteEnable()V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-virtual {v1}, Lcom/car/jiazu/RemoteService;->RemoteDisable()V

    goto :goto_0
.end method

.method public onError(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0, p1}, Lcom/car/jiazu/RemoteService;->access$500(Lcom/car/jiazu/RemoteService;I)V

    return-void
.end method

.method public onKeyReceiver(Lcom/car/jiazu/KeysClass$Keys;)V
    .locals 1

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0, p1}, Lcom/car/jiazu/RemoteService;->access$100(Lcom/car/jiazu/RemoteService;Lcom/car/jiazu/KeysClass$Keys;)V

    return-void
.end method

.method public onReady()V
    .locals 3

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    const-string v1, "CarSvc_jiazuRemoteService"

    const-string v2, "onReady"

    invoke-static {v0, v1, v2}, Lcom/car/jiazu/RemoteService;->access$200(Lcom/car/jiazu/RemoteService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanFinish()V
    .locals 3

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    const-string v1, "CarSvc_jiazuRemoteService"

    const-string v2, "onScanFinish"

    invoke-static {v0, v1, v2}, Lcom/car/jiazu/RemoteService;->access$200(Lcom/car/jiazu/RemoteService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$400(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/Remote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/jiazu/Remote;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/jiazu/RemoteService$RemoteUiListener;->onScanFinish()V

    :cond_0
    return-void
.end method

.method public onStartConnect()V
    .locals 3

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    const-string v1, "CarSvc_jiazuRemoteService"

    const-string v2, "onStartConnect"

    invoke-static {v0, v1, v2}, Lcom/car/jiazu/RemoteService;->access$200(Lcom/car/jiazu/RemoteService;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/jiazu/RemoteService$2;->this$0:Lcom/car/jiazu/RemoteService;

    invoke-static {v0}, Lcom/car/jiazu/RemoteService;->access$300(Lcom/car/jiazu/RemoteService;)Lcom/car/jiazu/RemoteService$RemoteUiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/car/jiazu/RemoteService$RemoteUiListener;->onStartConnect()V

    :cond_0
    return-void
.end method
