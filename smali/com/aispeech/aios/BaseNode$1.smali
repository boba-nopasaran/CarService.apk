.class Lcom/aispeech/aios/BaseNode$1;
.super Ljava/lang/Object;
.source "BaseNode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/aios/BaseNode;->handleSticky()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pending:Z

.field final synthetic this$0:Lcom/aispeech/aios/BaseNode;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/BaseNode;)V
    .locals 1

    iput-object p1, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aispeech/aios/BaseNode$1;->pending:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/aispeech/aios/BaseNode$1;->pending:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    iget-object v5, v5, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    const-string v6, "/keys/aios/state"

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "get"

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/aispeech/aios/BusClient;->call(Ljava/lang/String;[Ljava/lang/String;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    iget-object v5, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v5, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v5, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "asleep"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "awake"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/aispeech/aios/BaseNode$1;->pending:Z

    :cond_0
    iget-boolean v3, p0, Lcom/aispeech/aios/BaseNode$1;->pending:Z

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    iget-object v5, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    iget-object v5, v5, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    iget-object v6, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    invoke-static {v6}, Lcom/aispeech/aios/BaseNode;->access$100(Lcom/aispeech/aios/BaseNode;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/aispeech/aios/BaseNode;->access$002(Lcom/aispeech/aios/BaseNode;J)J

    monitor-exit v4

    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    iget-object v4, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    monitor-enter v4

    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    invoke-static {v3}, Lcom/aispeech/aios/BaseNode;->access$200(Lcom/aispeech/aios/BaseNode;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aispeech/aios/BusClient$Multipart;

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcom/aispeech/aios/BaseNode;->access$002(Lcom/aispeech/aios/BaseNode;J)J

    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/aispeech/aios/BaseNode$1;->this$0:Lcom/aispeech/aios/BaseNode;

    iget-object v3, v3, Lcom/aispeech/aios/BaseNode;->bc:Lcom/aispeech/aios/BusClient;

    invoke-virtual {v3, v0}, Lcom/aispeech/aios/BusClient;->publish(Lcom/aispeech/aios/BusClient$Multipart;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2
.end method
