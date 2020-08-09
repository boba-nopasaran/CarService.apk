.class Lcom/car/voice/remote/NetServImpl$Client$1;
.super Ljava/lang/Thread;
.source "NetServImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/voice/remote/NetServImpl$Client;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/voice/remote/NetServImpl$Client;


# direct methods
.method constructor <init>(Lcom/car/voice/remote/NetServImpl$Client;)V
    .locals 0

    iput-object p1, p0, Lcom/car/voice/remote/NetServImpl$Client$1;->this$1:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client$1;->this$1:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v1}, Lcom/car/voice/remote/NetServImpl$Client;->outputRun()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/car/voice/remote/NetServImpl$Client$1;->this$1:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v1}, Lcom/car/voice/remote/NetServImpl$Client;->end()V

    const-string v1, "CarSvc_NetServImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutThread exited:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/voice/remote/NetServImpl$Client$1;->this$1:Lcom/car/voice/remote/NetServImpl$Client;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CarSvc_NetServImpl"

    const-string v2, "Out run error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CarSvc_NetServImpl"

    const-string v2, "Out run error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
