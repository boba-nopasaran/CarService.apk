.class Lcom/aispeech/aios/BusClient$5;
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

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$1200(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$ErrorHandler;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$1300(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, " oncall timeout . Can not do time consuming operation in function of oncall!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v5}, Lcom/aispeech/aios/BusClient;->access$1300(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oncall timeout . Can not do time consuming operation in function of oncall!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$XSocket;

    move-result-object v3

    new-instance v4, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v4}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "response"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/aispeech/aios/BusClient$Multipart;->a([Ljava/lang/String;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aispeech/aios/BusClient$XSocket;->sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$1300(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v3

    invoke-static {v3}, Lcom/aispeech/aios/BusClient$Multipart;->access$1400(Lcom/aispeech/aios/BusClient$Multipart;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$1300(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$1300(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$Multipart;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$1200(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$ErrorHandler;

    move-result-object v3

    const-string v4, "oncall timer out!"

    invoke-interface {v3, v4}, Lcom/aispeech/aios/BusClient$ErrorHandler;->onErrorInfo(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$5;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v3}, Lcom/aispeech/aios/BusClient;->access$1200(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$ErrorHandler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oncall timeout . Can not do time consuming operation in function of oncall!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/aispeech/aios/BusClient$ErrorHandler;->onErrorInfo(Ljava/lang/String;)V

    goto :goto_2
.end method
