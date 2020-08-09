.class Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$2;
.super Ljava/lang/Object;
.source "TASConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;


# direct methods
.method constructor <init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    iget-object v2, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;-><init>(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;Lcom/tencent/wecarspeech/sdk/TASConfigManager$1;)V

    invoke-static {v0, v1}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1902(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    iget-object v0, p0, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$2;->this$1:Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;

    invoke-static {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;->access$1900(Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager;)Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarspeech/sdk/TASConfigManager$BaseServiceManager$ServiceKeepAliveThread;->start()V

    return-void
.end method
