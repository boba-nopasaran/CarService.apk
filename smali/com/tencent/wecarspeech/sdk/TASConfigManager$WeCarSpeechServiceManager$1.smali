.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$1;
.super Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener$Stub;
.source "TASConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;->setWeCarSpeechSdkListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager$1;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$WeCarSpeechServiceManager;

    invoke-direct {p0}, Lcom/tencent/wecarspeech/sdk/IWeCarSpeechSdkListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public actionCallback(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->getInstance()Lcom/tencent/wecarspeech/sdk/CallbackExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/wecarspeech/sdk/CallbackExecutor;->handlerCallback(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
