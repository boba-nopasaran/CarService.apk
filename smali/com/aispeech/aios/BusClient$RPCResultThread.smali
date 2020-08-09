.class Lcom/aispeech/aios/BusClient$RPCResultThread;
.super Ljava/lang/Thread;
.source "BusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/BusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RPCResultThread"
.end annotation


# instance fields
.field handler:Lcom/aispeech/aios/BusClient$Handler;

.field multipart:Lcom/aispeech/aios/BusClient$Multipart;

.field final synthetic this$0:Lcom/aispeech/aios/BusClient;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$Multipart;Lcom/aispeech/aios/BusClient$Handler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->handler:Lcom/aispeech/aios/BusClient$Handler;

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->multipart:Lcom/aispeech/aios/BusClient$Multipart;

    iput-object p3, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->handler:Lcom/aispeech/aios/BusClient$Handler;

    iput-object p2, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->multipart:Lcom/aispeech/aios/BusClient$Multipart;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->this$0:Lcom/aispeech/aios/BusClient;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->handler:Lcom/aispeech/aios/BusClient$Handler;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->multipart:Lcom/aispeech/aios/BusClient$Multipart;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->multipart:Lcom/aispeech/aios/BusClient$Multipart;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->multipart:Lcom/aispeech/aios/BusClient$Multipart;

    invoke-virtual {v6}, Lcom/aispeech/aios/BusClient$Multipart;->size()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/aispeech/aios/BusClient$Multipart;->toArray(II)[[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/aispeech/aios/BusClient$Handler;->onCall(Ljava/lang/String;[[B)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/aios/BusClient;->access$1102(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$RPCResult;)Lcom/aispeech/aios/BusClient$RPCResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    sget-object v1, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/aios/BusClient$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->this$0:Lcom/aispeech/aios/BusClient;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->this$0:Lcom/aispeech/aios/BusClient;

    iget-object v2, v2, Lcom/aispeech/aios/BusClient;->onCallResult:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->multipart:Lcom/aispeech/aios/BusClient$Multipart;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/aios/BusClient$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/aispeech/aios/BusClient$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->this$0:Lcom/aispeech/aios/BusClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/aispeech/aios/BusClient;->access$1102(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$RPCResult;)Lcom/aispeech/aios/BusClient$RPCResult;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public setMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$RPCResultThread;->multipart:Lcom/aispeech/aios/BusClient$Multipart;

    return-void
.end method
