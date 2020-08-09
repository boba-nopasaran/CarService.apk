.class Lcom/aispeech/aios/BusClient$4;
.super Ljava/lang/Object;
.source "BusClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aispeech/aios/BusClient;->spin(Lcom/aispeech/aios/BusClient$Handler;)V
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

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$4;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/aispeech/aios/BusClient;->access$400()J

    move-result-wide v0

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$4;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v2}, Lcom/aispeech/aios/BusClient;->access$500(Lcom/aispeech/aios/BusClient;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$4;->this$0:Lcom/aispeech/aios/BusClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aispeech/aios/BusClient;->access$602(Lcom/aispeech/aios/BusClient;Z)Z

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$4;->this$0:Lcom/aispeech/aios/BusClient;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "connection lost"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aispeech/aios/BusClient;->access$702(Lcom/aispeech/aios/BusClient;Ljava/lang/Exception;)Ljava/lang/Exception;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/BusClient$4;->this$0:Lcom/aispeech/aios/BusClient;

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$4;->this$0:Lcom/aispeech/aios/BusClient;

    invoke-static {v1}, Lcom/aispeech/aios/BusClient;->access$800(Lcom/aispeech/aios/BusClient;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/aispeech/aios/BusClient;->setTimer(Ljava/lang/Runnable;J)J

    goto :goto_0
.end method
