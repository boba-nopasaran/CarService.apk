.class public Lcom/aispeech/aios/client/AIOSNotificationNode;
.super Ljava/lang/Object;
.source "AIOSNotificationNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;,
        Lcom/aispeech/aios/client/AIOSNotificationNode$Message;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AIOSNotificationNode"

.field private static mInstance:Lcom/aispeech/aios/client/AIOSNotificationNode;


# instance fields
.field aiosState:Ljava/lang/String;

.field listener:Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;

.field private mNode:Lcom/aispeech/aios/BaseNode;

.field pendingMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/aispeech/aios/client/AIOSNotificationNode$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->pendingMessageQueue:Ljava/util/Queue;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    new-instance v0, Lcom/aispeech/aios/client/AIOSNotificationNode$1;

    invoke-direct {v0, p0}, Lcom/aispeech/aios/client/AIOSNotificationNode$1;-><init>(Lcom/aispeech/aios/client/AIOSNotificationNode;)V

    iput-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->mNode:Lcom/aispeech/aios/BaseNode;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aispeech/aios/client/AIOSNotificationNode;
    .locals 2

    const-class v1, Lcom/aispeech/aios/client/AIOSNotificationNode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->mInstance:Lcom/aispeech/aios/client/AIOSNotificationNode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aispeech/aios/client/AIOSNotificationNode;

    invoke-direct {v0}, Lcom/aispeech/aios/client/AIOSNotificationNode;-><init>()V

    sput-object v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->mInstance:Lcom/aispeech/aios/client/AIOSNotificationNode;

    sget-object v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->mInstance:Lcom/aispeech/aios/client/AIOSNotificationNode;

    iget-object v0, v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->mNode:Lcom/aispeech/aios/BaseNode;

    invoke-virtual {v0}, Lcom/aispeech/aios/BaseNode;->start()Z

    :cond_0
    sget-object v0, Lcom/aispeech/aios/client/AIOSNotificationNode;->mInstance:Lcom/aispeech/aios/client/AIOSNotificationNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBusClient()Lcom/aispeech/aios/BusClient;
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->mNode:Lcom/aispeech/aios/BaseNode;

    invoke-virtual {v0}, Lcom/aispeech/aios/BaseNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    return-object v0
.end method

.method public publishMessage(Lcom/aispeech/aios/client/AIOSNotificationNode$Message;)V
    .locals 3

    const-string v0, "AIOSNotificationNode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aios state in publish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    const-string v1, "asleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->pendingMessageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v0, "AIOSNotificationNode"

    const-string v1, "put in pending queue"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->listener:Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->listener:Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;

    invoke-interface {v0}, Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;->onNotificationStart()V

    :cond_1
    iget-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->mNode:Lcom/aispeech/aios/BaseNode;

    invoke-virtual {v0}, Lcom/aispeech/aios/BaseNode;->getBusClient()Lcom/aispeech/aios/BusClient;

    move-result-object v0

    iget-object v1, p1, Lcom/aispeech/aios/client/AIOSNotificationNode$Message;->topic:Ljava/lang/String;

    iget-object v2, p1, Lcom/aispeech/aios/client/AIOSNotificationNode$Message;->args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/aispeech/aios/BusClient;->publish(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "AIOSNotificationNode"

    const-string v1, "publish"

    invoke-static {v0, v1}, Lcom/aispeech/ailog/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "awake"

    iput-object v0, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->aiosState:Ljava/lang/String;

    goto :goto_0
.end method

.method public setListener(Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/client/AIOSNotificationNode;->listener:Lcom/aispeech/aios/client/AIOSNotificationNode$OnNotificationListener;

    return-void
.end method

.method public start()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
