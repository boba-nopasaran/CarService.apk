.class Lcom/aispeech/aios/BusClient$9;
.super Ljava/lang/Object;
.source "BusClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/aios/BusClient;->acall(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/aispeech/aios/BusClient$RPCResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aispeech/aios/BusClient;

.field final synthetic val$acallReturnTopic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/BusClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$9;->this$0:Lcom/aispeech/aios/BusClient;

    iput-object p2, p0, Lcom/aispeech/aios/BusClient$9;->val$acallReturnTopic:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$9;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v0}, Lcom/aispeech/aios/BusClient;->access$1600(Lcom/aispeech/aios/BusClient;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$9;->val$acallReturnTopic:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$9;->this$0:Lcom/aispeech/aios/BusClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$9;->val$acallReturnTopic:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aispeech/aios/BusClient;->unsubscribe([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$9;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v0}, Lcom/aispeech/aios/BusClient;->access$1700(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/aispeech/aios/BusClient$9;->call()Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    return-object v0
.end method
