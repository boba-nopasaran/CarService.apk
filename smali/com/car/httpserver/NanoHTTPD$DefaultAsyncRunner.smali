.class public Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lcom/car/httpserver/NanoHTTPD$AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAsyncRunner"
.end annotation


# instance fields
.field private requestCount:J

.field private final running:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/httpserver/NanoHTTPD$ClientHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/httpserver/NanoHTTPD$ClientHandler;

    invoke-virtual {v0}, Lcom/car/httpserver/NanoHTTPD$ClientHandler;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public closed(Lcom/car/httpserver/NanoHTTPD$ClientHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public exec(Lcom/car/httpserver/NanoHTTPD$ClientHandler;)V
    .locals 6

    iget-wide v2, p0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoHttpd Request Processor (#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;->requestCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getRunning()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/httpserver/NanoHTTPD$ClientHandler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$DefaultAsyncRunner;->running:Ljava/util/List;

    return-object v0
.end method
