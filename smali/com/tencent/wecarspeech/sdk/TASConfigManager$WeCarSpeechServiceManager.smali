.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;
.super Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;
.source "TASConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeCarSpeechServiceManager"
.end annotation


# static fields
.field public static final SDK_ACCESS_SERVICE:Ljava/lang/String; = "com.tencent.wecarspeech.WeCarSpeechSdkService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;


# direct methods
.method public constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    const-string v0, "com.tencent.wecarspeech.WeCarSpeechSdkService"

    invoke-direct {p0, p1, v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_TAS_SPEECH_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->getSpeechSdkService()Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getSpeechSdkService()Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;
    .locals 1

    invoke-super {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    return-object v0
.end method

.method private setWeCarSpeechSdkListener()V
    .locals 6

    new-instance v0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$1;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)V

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;

    invoke-direct {v2, p0, v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$2;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onServiceConnect(Landroid/os/IInterface;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->setWeCarSpeechSdkListener()V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    check-cast p1, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;

    invoke-virtual {v0, p1}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->handlerSdkServiceStateChange(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->handlerServiceConnect(Z)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    iget-object v1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-static {v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->access$700(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->access$800(Lcom/tencent/wecarspeech/sdk/TASConfigManager;Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitParam;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "modify init notify order"

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->access$900(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->access$900(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "speech sdk init success"

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;->onInit(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onServiceDisConnect()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->access$900(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->this$0:Lcom/tencent/wecarspeech/sdk/TASConfigManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager;->access$900(Lcom/tencent/wecarspeech/sdk/TASConfigManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "speech sdk init failed"

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$TASInitListener;->onInit(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/ActionExecutor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/ActionExecutor;->handlerSdkServiceStateChange(Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkService;)V

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->handlerServiceConnect(Z)V

    return-void
.end method
