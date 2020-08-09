.class public Lcom/car/httpserver/HttpRequestManager;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_HttpRequestManager"

.field private static sIns:Lcom/car/httpserver/HttpRequestManager;


# instance fields
.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "http work"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/httpserver/HttpRequestManager;->mWorkThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/car/httpserver/HttpRequestManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/httpserver/HttpRequestManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/car/httpserver/HttpRequestManager;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method public static create()V
    .locals 1

    new-instance v0, Lcom/car/httpserver/HttpRequestManager;

    invoke-direct {v0}, Lcom/car/httpserver/HttpRequestManager;-><init>()V

    sput-object v0, Lcom/car/httpserver/HttpRequestManager;->sIns:Lcom/car/httpserver/HttpRequestManager;

    return-void
.end method

.method public static destory()V
    .locals 1

    sget-object v0, Lcom/car/httpserver/HttpRequestManager;->sIns:Lcom/car/httpserver/HttpRequestManager;

    iget-object v0, v0, Lcom/car/httpserver/HttpRequestManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public static instance()Lcom/car/httpserver/HttpRequestManager;
    .locals 1

    sget-object v0, Lcom/car/httpserver/HttpRequestManager;->sIns:Lcom/car/httpserver/HttpRequestManager;

    return-object v0
.end method


# virtual methods
.method public requestWebSocket(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/car/httpserver/HttpRequestManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/httpserver/HttpRequestManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/car/httpserver/HttpRequestManager$1;-><init>(Lcom/car/httpserver/HttpRequestManager;Lorg/java_websocket/WebSocket;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
