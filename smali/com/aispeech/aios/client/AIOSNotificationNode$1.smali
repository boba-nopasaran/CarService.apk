.class Lcom/aispeech/aios/client/AIOSNotificationNode$1;
.super Lcom/aispeech/aios/BaseNode;
.source "AIOSNotificationNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/client/AIOSNotificationNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/client/AIOSNotificationNode;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    invoke-direct {p0}, Lcom/aispeech/aios/BaseNode;-><init>()V

    return-void
.end method

.method private handlePendingMessages()V
    .locals 3

    iget-object v1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    iget-object v1, v1, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    const-string v2, "asleep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    iget-object v1, v1, Lcom/aispeech/aios/client/AIOSNotificationNode;->pendingMessageQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/aios/client/AIOSNotificationNode$Message;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    invoke-virtual {v1, v0}, Lcom/aispeech/aios/client/AIOSNotificationNode;->publishMessage(Lcom/aispeech/aios/client/AIOSNotificationNode$Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "notification"

    return-object v0
.end method

.method public varargs onCall(Ljava/lang/String;[[B)Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onExit()V
    .locals 4

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->bc:Lcom/aispeech/aios/BusClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "keys.aios.state"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->unsubscribe([Ljava/lang/String;)V

    invoke-super {p0}, Lcom/aispeech/aios/BaseNode;->onExit()V

    return-void
.end method

.method public onJoin()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/aispeech/aios/BaseNode;->onJoin()V

    iget-object v1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->bc:Lcom/aispeech/aios/BusClient;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "keys.aios.state"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/BusClient;->subscribe([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->bc:Lcom/aispeech/aios/BusClient;

    const-string v2, "/keys/aios/state"

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "get"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    iget-object v1, v0, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    const-string v1, "AIOSNotificationNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get aios state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    iget-object v3, v3, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->handlePendingMessages()V

    :cond_0
    return-void
.end method

.method public varargs onMessage(Ljava/lang/String;[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "keys.aios.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    iget-object v0, v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    const-string v1, "asleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    iget-object v0, v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->listener:Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->this$0:Lcom/aispeech/aios/client/AIOSNotificationNode;

    iget-object v0, v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->listener:Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;

    invoke-interface {v0}, Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;->onNotificationDone()V

    :cond_0
    invoke-direct {p0}, Lcom/aispeech/aios/client/AIOSNotificationNode$1;->handlePendingMessages()V

    :cond_1
    return-void
.end method
