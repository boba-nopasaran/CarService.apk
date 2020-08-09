.class Lcom/aispeech/aios/BusClient$6;
.super Ljava/lang/Object;
.source "BusClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/BusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/BusClient;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/BusClient;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    iget-wide v2, v2, Lcom/aispeech/aios/BusClient;->onCallWatchTimerHandler:J

    invoke-virtual {v1, v2, v3}, Lcom/aispeech/aios/BusClient;->killTimer(J)V

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/aispeech/aios/BusClient;->onCallWatchTimerHandler:J

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$XSocket;

    move-result-object v1

    new-instance v2, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v2}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "response"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$XSocket;

    move-result-object v1

    new-instance v2, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v2}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "response"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v5}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/aispeech/aios/BusClient$Multipart;->a([[B)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$XSocket;

    move-result-object v2

    new-instance v1, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v1}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "response"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [[B

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    if-nez v1, :cond_3

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_1
    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/BusClient$Multipart;->a([[B)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v5}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v5

    iget-object v5, v5, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/aispeech/aios/BusClient$6;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$1100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v1

    iget-object v1, v1, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
