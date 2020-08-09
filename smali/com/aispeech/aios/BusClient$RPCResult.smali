.class public Lcom/aispeech/aios/BusClient$RPCResult;
.super Ljava/lang/Object;
.source "BusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/BusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RPCResult"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public retval:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    iput-object p1, p0, Lcom/aispeech/aios/BusClient$RPCResult;->retval:[B

    iput-object p2, p0, Lcom/aispeech/aios/BusClient$RPCResult;->error:Ljava/lang/String;

    return-void
.end method
