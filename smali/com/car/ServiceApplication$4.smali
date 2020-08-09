.class Lcom/car/ServiceApplication$4;
.super Ljava/lang/Object;
.source "ServiceApplication.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/ServiceApplication;->TASInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/ServiceApplication;


# direct methods
.method constructor <init>(Lcom/car/ServiceApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/ServiceApplication$4;->this$0:Lcom/car/ServiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(ILjava/lang/String;)V
    .locals 3

    const-string v0, "CarSvc_ServiceApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultDesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "CarSvc_ServiceApplication"

    const-string v1, "\u8bed\u97f3SDK\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/ServiceApplication$4;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v0}, Lcom/car/ServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/car/tencent/TencentCall;->getInstance(Landroid/content/Context;)Lcom/car/tencent/TencentCall;

    invoke-static {}, Lcom/car/tencent/TencentWords;->getInstance()Lcom/car/tencent/TencentWords;

    move-result-object v0

    iget-object v1, p0, Lcom/car/ServiceApplication$4;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v1}, Lcom/car/ServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/tencent/TencentWords;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/car/tencent/TencentTts;->getInstance()Lcom/car/tencent/TencentTts;

    move-result-object v0

    iget-object v1, p0, Lcom/car/ServiceApplication$4;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v1}, Lcom/car/ServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/tencent/TencentTts;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/car/tencent/TencentSysCtrl;->getInstance()Lcom/car/tencent/TencentSysCtrl;

    move-result-object v0

    iget-object v1, p0, Lcom/car/ServiceApplication$4;->this$0:Lcom/car/ServiceApplication;

    invoke-virtual {v1}, Lcom/car/ServiceApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/tencent/TencentSysCtrl;->init(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CarSvc_ServiceApplication"

    const-string v1, "\u8bed\u97f3SDK\u521d\u59cb\u5316\u5f02\u5e38"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
