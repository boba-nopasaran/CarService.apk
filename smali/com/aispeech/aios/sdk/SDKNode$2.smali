.class Lcom/aispeech/aios/sdk/SDKNode$2;
.super Ljava/lang/Object;
.source "SDKNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/aios/sdk/SDKNode;->onJoin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/sdk/SDKNode;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/sdk/SDKNode;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4}, Lcom/aispeech/aios/sdk/SDKNode;->access$600(Lcom/aispeech/aios/sdk/SDKNode;)Lcom/aispeech/aios/BusClient;

    move-result-object v4

    const-string v5, "/bus/nodes"

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v4, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v4, v2, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SDKNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SDKNode#onJoin()]nodes:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    const-string v7, ",\n"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "keys"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4}, Lcom/aispeech/aios/sdk/SDKNode;->access$100(Lcom/aispeech/aios/sdk/SDKNode;)V

    :cond_0
    const-string v4, "daemon"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SDKNode"

    const-string v5, "AIOS isn\'t running, send BOOT broadcast!"

    invoke-static {v4, v5}, Lcom/aispeech/ailog/AILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/aispeech/aios/sdk/AIOSForCarSDK;->bootAIOS(I)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4}, Lcom/aispeech/aios/sdk/SDKNode;->access$800(Lcom/aispeech/aios/sdk/SDKNode;)Lcom/aispeech/aios/BusClient;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "adapter.nodes.ready"

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4}, Lcom/aispeech/aios/sdk/SDKNode;->access$900(Lcom/aispeech/aios/sdk/SDKNode;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4}, Lcom/aispeech/aios/sdk/SDKNode;->access$000(Lcom/aispeech/aios/sdk/SDKNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4, v3}, Lcom/aispeech/aios/sdk/SDKNode;->access$002(Lcom/aispeech/aios/sdk/SDKNode;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->getInstance()Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;

    move-result-object v4

    const-string v5, "keys.aios.state"

    new-array v6, v9, [Ljava/lang/String;

    iget-object v7, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v7}, Lcom/aispeech/aios/sdk/SDKNode;->access$000(Lcom/aispeech/aios/sdk/SDKNode;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/aispeech/aios/sdk/manager/AIOSStatusManager;->handleMessage(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4}, Lcom/aispeech/aios/sdk/SDKNode;->access$700(Lcom/aispeech/aios/sdk/SDKNode;)Z

    move-result v0

    const-string v4, "SDKNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AIOS isAiosPrepared : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v4, "SDKNode"

    const-string v5, "onJoin"

    invoke-static {v4, v5}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4}, Lcom/aispeech/aios/sdk/SDKNode;->access$200(Lcom/aispeech/aios/sdk/SDKNode;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "SDKNode"

    const-string v5, "AIOS rebooted when onJoin check, call reinitializeSDK"

    invoke-static {v4, v5}, Lcom/aispeech/ailog/AILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v4}, Lcom/aispeech/aios/sdk/SDKNode;->access$300(Lcom/aispeech/aios/sdk/SDKNode;)Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    iget-object v5, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v5}, Lcom/aispeech/aios/sdk/SDKNode;->access$400(Lcom/aispeech/aios/sdk/SDKNode;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/aispeech/aios/sdk/SDKNode;->access$202(Lcom/aispeech/aios/sdk/SDKNode;Z)Z

    const-string v4, "SDKNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AIOS is ready : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/aispeech/aios/sdk/SDKNode$2;->this$0:Lcom/aispeech/aios/sdk/SDKNode;

    invoke-static {v6}, Lcom/aispeech/aios/sdk/SDKNode;->access$200(Lcom/aispeech/aios/sdk/SDKNode;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/aispeech/ailog/AILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
