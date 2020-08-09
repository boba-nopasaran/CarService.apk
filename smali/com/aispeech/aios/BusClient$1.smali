.class Lcom/aispeech/aios/BusClient$1;
.super Ljava/util/TimerTask;
.source "BusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/aios/BusClient;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
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

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$1;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$1;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v2}, Lcom/aispeech/aios/BusClient;->access$000(Lcom/aispeech/aios/BusClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t create timeout, force close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aispeech/aios/BusClient$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$1;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v0}, Lcom/aispeech/aios/BusClient;->access$100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$XSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$1;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v0}, Lcom/aispeech/aios/BusClient;->access$100(Lcom/aispeech/aios/BusClient;)Lcom/aispeech/aios/BusClient$XSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aispeech/aios/BusClient$XSocket;->close()V

    :cond_0
    return-void
.end method
