.class Lcom/aispeech/aios/BusClient$3;
.super Ljava/lang/Object;
.source "BusClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/aios/BusClient;->call(Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;
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

.field final synthetic val$multipart1:Lcom/aispeech/aios/BusClient$Multipart;


# direct methods
.method constructor <init>(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$Multipart;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$3;->this$0:Lcom/aispeech/aios/BusClient;

    iput-object p2, p0, Lcom/aispeech/aios/BusClient$3;->val$multipart1:Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/aispeech/aios/BusClient$RPCResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$3;->this$0:Lcom/aispeech/aios/BusClient;

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$3;->val$multipart1:Lcom/aispeech/aios/BusClient$Multipart;

    invoke-static {v0, v1}, Lcom/aispeech/aios/BusClient;->access$200(Lcom/aispeech/aios/BusClient;Lcom/aispeech/aios/BusClient$Multipart;)Lcom/aispeech/aios/BusClient$RPCResult;

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

    invoke-virtual {p0}, Lcom/aispeech/aios/BusClient$3;->call()Lcom/aispeech/aios/BusClient$RPCResult;

    move-result-object v0

    return-object v0
.end method
