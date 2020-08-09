.class public Lcom/car/httpserver/NanoHTTPD$ServerRunnable;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRunnable"
.end annotation


# instance fields
.field private bindException:Ljava/io/IOException;

.field private hasBinded:Z

.field final synthetic this$0:Lcom/car/httpserver/NanoHTTPD;

.field private final timeout:I


# direct methods
.method private constructor <init>(Lcom/car/httpserver/NanoHTTPD;I)V
    .locals 1

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->hasBinded:Z

    iput p2, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->timeout:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/httpserver/NanoHTTPD;ILcom/car/httpserver/NanoHTTPD$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;-><init>(Lcom/car/httpserver/NanoHTTPD;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/car/httpserver/NanoHTTPD$ServerRunnable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->hasBinded:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/car/httpserver/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-static {v3}, Lcom/car/httpserver/NanoHTTPD;->access$700(Lcom/car/httpserver/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v4

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-static {v3}, Lcom/car/httpserver/NanoHTTPD;->access$500(Lcom/car/httpserver/NanoHTTPD;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-static {v5}, Lcom/car/httpserver/NanoHTTPD;->access$500(Lcom/car/httpserver/NanoHTTPD;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-static {v6}, Lcom/car/httpserver/NanoHTTPD;->access$600(Lcom/car/httpserver/NanoHTTPD;)I

    move-result v6

    invoke-direct {v3, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v4, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-static {v3}, Lcom/car/httpserver/NanoHTTPD;->access$700(Lcom/car/httpserver/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iget v3, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->timeout:I

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_1
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    iget-object v3, v3, Lcom/car/httpserver/NanoHTTPD;->asyncRunner:Lcom/car/httpserver/NanoHTTPD$AsyncRunner;

    iget-object v4, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-virtual {v4, v1, v2}, Lcom/car/httpserver/NanoHTTPD;->createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lcom/car/httpserver/NanoHTTPD$ClientHandler;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/car/httpserver/NanoHTTPD$AsyncRunner;->exec(Lcom/car/httpserver/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-static {v3}, Lcom/car/httpserver/NanoHTTPD;->access$700(Lcom/car/httpserver/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_2
    return-void

    :cond_2
    :try_start_2
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-static {v5}, Lcom/car/httpserver/NanoHTTPD;->access$600(Lcom/car/httpserver/NanoHTTPD;)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "CarSvc_NanoHTTPD"

    const-string v4, "Communication with the client broken"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
