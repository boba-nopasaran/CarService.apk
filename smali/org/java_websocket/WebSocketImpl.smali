.class public Lorg/java_websocket/WebSocketImpl;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lorg/java_websocket/WebSocket;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DEBUG:Z

.field public static RCVBUF:I

.field public static final defaultdraftlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channel:Ljava/nio/channels/ByteChannel;

.field private closecode:Ljava/lang/Integer;

.field private closedremotely:Ljava/lang/Boolean;

.field private closemessage:Ljava/lang/String;

.field private current_continuous_frame_opcode:Lorg/java_websocket/framing/Framedata$Opcode;

.field private draft:Lorg/java_websocket/drafts/Draft;

.field private volatile flushandclosestate:Z

.field private handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

.field public final inQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/nio/channels/SelectionKey;

.field private knownDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public final outQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private readystate:Lorg/java_websocket/WebSocket$READYSTATE;

.field private resourceDescriptor:Ljava/lang/String;

.field private role:Lorg/java_websocket/WebSocket$Role;

.field private tmpHandshakeBytes:Ljava/nio/ByteBuffer;

.field public volatile workerThread:Lorg/java_websocket/server/WebSocketServer$WebSocketWorker;

.field private final wsl:Lorg/java_websocket/WebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lorg/java_websocket/WebSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    const/16 v0, 0x4000

    sput v0, Lorg/java_websocket/WebSocketImpl;->RCVBUF:I

    sput-boolean v1, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    sget-object v0, Lorg/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lorg/java_websocket/drafts/Draft_17;

    invoke-direct {v1}, Lorg/java_websocket/drafts/Draft_17;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lorg/java_websocket/drafts/Draft_10;

    invoke-direct {v1}, Lorg/java_websocket/drafts/Draft_10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lorg/java_websocket/drafts/Draft_76;

    invoke-direct {v1}, Lorg/java_websocket/drafts/Draft_76;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    new-instance v1, Lorg/java_websocket/drafts/Draft_75;

    invoke-direct {v1}, Lorg/java_websocket/drafts/Draft_75;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/java_websocket/WebSocketListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/WebSocketListener;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lorg/java_websocket/drafts/Draft;

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    sget-object v0, Lorg/java_websocket/WebSocket$Role;->SERVER:Lorg/java_websocket/WebSocket$Role;

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/java_websocket/WebSocketImpl;->defaultdraftlist:Ljava/util/List;

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lorg/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/java_websocket/WebSocketListener;Ljava/util/List;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/WebSocketListener;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    sget-object v0, Lorg/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lorg/java_websocket/WebSocket$READYSTATE;

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v1, Lorg/java_websocket/WebSocket$Role;->SERVER:Lorg/java_websocket/WebSocket$Role;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    sget-object v0, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/java_websocket/drafts/Draft;->copyInstance()Lorg/java_websocket/drafts/Draft;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;Ljava/net/Socket;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/java_websocket/WebSocketImpl;-><init>(Lorg/java_websocket/WebSocketListener;Lorg/java_websocket/drafts/Draft;)V

    return-void
.end method

.method private close(ILjava/lang/String;Z)V
    .locals 6

    const/16 v5, 0x3ee

    const/4 v4, -0x3

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v2, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSING:Lorg/java_websocket/WebSocket$READYSTATE;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v2, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSED:Lorg/java_websocket/WebSocket$READYSTATE;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v2, Lorg/java_websocket/WebSocket$READYSTATE;->OPEN:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v1, v2, :cond_6

    if-ne p1, v5, :cond_2

    sget-boolean v1, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSING:Lorg/java_websocket/WebSocket$READYSTATE;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    invoke-virtual {p0, p1, p2, v3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v1}, Lorg/java_websocket/drafts/Draft;->getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v1

    sget-object v2, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    if-eq v1, v2, :cond_4

    if-nez p3, :cond_3

    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketCloseInitiated(Lorg/java_websocket/WebSocket;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    :try_start_1
    new-instance v1, Lorg/java_websocket/framing/CloseFrameBuilder;

    invoke-direct {v1, p1, p2}, Lorg/java_websocket/framing/CloseFrameBuilder;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Lorg/java_websocket/framing/Framedata;)V
    :try_end_1
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    :goto_3
    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    :cond_5
    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSING:Lorg/java_websocket/WebSocket$READYSTATE;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_2
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    const-string v1, "generated frame is invalid"

    invoke-virtual {p0, v5, v1, v3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_2

    :cond_6
    if-ne p1, v4, :cond_8

    sget-boolean v1, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    if-nez p3, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, v4, p2, v1}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_3

    :cond_8
    const/4 v1, -0x1

    invoke-virtual {p0, v1, p2, v3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_3
.end method

.method private decodeFrames(Ljava/nio/ByteBuffer;)V
    .locals 14

    :try_start_0
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v11, p1}, Lorg/java_websocket/drafts/Draft;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/java_websocket/framing/Framedata;

    sget-boolean v11, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v11, :cond_0

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "matched frame: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v6}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v3

    invoke-interface {v6}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v7

    sget-object v11, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v3, v11, :cond_5

    const/16 v2, 0x3ed

    const-string v10, ""

    instance-of v11, v6, Lorg/java_websocket/framing/CloseFrame;

    if-eqz v11, :cond_1

    move-object v0, v6

    check-cast v0, Lorg/java_websocket/framing/CloseFrame;

    move-object v1, v0

    invoke-interface {v1}, Lorg/java_websocket/framing/CloseFrame;->getCloseCode()I

    move-result v2

    invoke-interface {v1}, Lorg/java_websocket/framing/CloseFrame;->getMessage()Ljava/lang/String;

    move-result-object v10

    :cond_1
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v12, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSING:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    invoke-virtual {p0, v2, v10, v11}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v5}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    invoke-virtual {p0, v5}, Lorg/java_websocket/WebSocketImpl;->close(Lorg/java_websocket/exceptions/InvalidDataException;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v11}, Lorg/java_websocket/drafts/Draft;->getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v11

    sget-object v12, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    if-ne v11, v12, :cond_4

    const/4 v11, 0x1

    invoke-direct {p0, v2, v10, v11}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    invoke-virtual {p0, v2, v10, v11}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_5
    sget-object v11, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v3, v11, :cond_6

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v6}, Lorg/java_websocket/WebSocketListener;->onWebsocketPing(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    :cond_6
    sget-object v11, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v3, v11, :cond_7

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v6}, Lorg/java_websocket/WebSocketListener;->onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v7, :cond_8

    sget-object v11, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne v3, v11, :cond_e

    :cond_8
    sget-object v11, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq v3, v11, :cond_b

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eqz v11, :cond_9

    new-instance v11, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v12, 0x3ea

    const-string v13, "Previous continuous frame sequence not completed."

    invoke-direct {v11, v12, v13}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v11

    :cond_9
    iput-object v3, p0, Lorg/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lorg/java_websocket/framing/Framedata$Opcode;
    :try_end_1
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    :goto_1
    :try_start_2
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v6}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessageFragment(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :try_start_3
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v4}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v7, :cond_d

    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lorg/java_websocket/framing/Framedata$Opcode;

    if-nez v11, :cond_c

    new-instance v11, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v12, 0x3ea

    const-string v13, "Continuous frame sequence was not started."

    invoke-direct {v11, v12, v13}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v11

    :cond_c
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_1

    :cond_d
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lorg/java_websocket/framing/Framedata$Opcode;

    if-nez v11, :cond_a

    new-instance v11, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v12, 0x3ea

    const-string v13, "Continuous frame sequence was not started."

    invoke-direct {v11, v12, v13}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v11

    :cond_e
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->current_continuous_frame_opcode:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eqz v11, :cond_f

    new-instance v11, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v12, 0x3ea

    const-string v13, "Continuous frame sequence not completed."

    invoke-direct {v11, v12, v13}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v11

    :cond_f
    sget-object v11, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;
    :try_end_3
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v3, v11, :cond_10

    :try_start_4
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v6}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v12}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, p0, v12}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_2
    move-exception v4

    :try_start_5
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v4}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_10
    sget-object v11, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;
    :try_end_5
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v3, v11, :cond_11

    :try_start_6
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v6}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v11, p0, v12}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v4

    :try_start_7
    iget-object v11, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v11, p0, v4}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_11
    new-instance v11, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v12, 0x3ea

    const-string v13, "non control or continious frame expected"

    invoke-direct {v11, v12, v13}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_7
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method private decodeHandshake(Ljava/nio/ByteBuffer;)Z
    .locals 15

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v10, p1

    :goto_0
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    :try_start_0
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-nez v12, :cond_4

    invoke-direct {p0, v10}, Lorg/java_websocket/WebSocketImpl;->isFlashEdgeCase(Ljava/nio/ByteBuffer;)Lorg/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v7

    sget-object v12, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;
    :try_end_0
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v7, v12, :cond_4

    :try_start_1
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v12, p0}, Lorg/java_websocket/WebSocketListener;->getFlashPolicy(Lorg/java_websocket/WebSocket;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-direct {p0, v12}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    const/4 v12, -0x3

    const-string v13, ""

    invoke-virtual {p0, v12, v13}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v12, 0x0

    :goto_2
    return v12

    :cond_0
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v10, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception v3

    const/16 v12, 0x3ee

    :try_start_2
    const-string v13, "remote peer closed connection before flashpolicy could be transmitted"

    const/4 v14, 0x1

    invoke-direct {p0, v12, v13, v14}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V
    :try_end_2
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;->getPreferedSize()I

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    add-int/lit8 v8, v12, 0x10

    :cond_2
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    :goto_3
    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :try_start_3
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v13, Lorg/java_websocket/WebSocket$Role;->SERVER:Lorg/java_websocket/WebSocket$Role;

    if-ne v12, v13, :cond_c

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-nez v12, :cond_9

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->knownDrafts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft;->copyInstance()Lorg/java_websocket/drafts/Draft;
    :try_end_3
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    :try_start_4
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    invoke-virtual {v2, v12}, Lorg/java_websocket/drafts/Draft;->setParseMode(Lorg/java_websocket/WebSocket$Role;)V

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {v2, v10}, Lorg/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;

    move-result-object v11

    instance-of v12, v11, Lorg/java_websocket/handshake/ClientHandshake;

    if-nez v12, :cond_6

    const/16 v12, 0x3ea

    const-string v13, "wrong http function"

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v14}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_6
    move-object v0, v11

    check-cast v0, Lorg/java_websocket/handshake/ClientHandshake;

    move-object v4, v0

    invoke-virtual {v2, v4}, Lorg/java_websocket/drafts/Draft;->acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v5

    sget-object v12, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    if-ne v5, v12, :cond_5

    invoke-interface {v4}, Lorg/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;
    :try_end_4
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v12, p0, v2, v4}, Lorg/java_websocket/WebSocketListener;->onWebsocketHandshakeReceivedAsServer(Lorg/java_websocket/WebSocket;Lorg/java_websocket/drafts/Draft;Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    :try_end_5
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v9

    :try_start_6
    invoke-virtual {v2, v4, v9}, Lorg/java_websocket/drafts/Draft;->postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    invoke-virtual {v2, v12, v13}, Lorg/java_websocket/drafts/Draft;->createHandshake(Lorg/java_websocket/handshake/Handshakedata;Lorg/java_websocket/WebSocket$Role;)Ljava/util/List;

    move-result-object v12

    invoke-direct {p0, v12}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/util/List;)V

    iput-object v2, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-direct {p0, v4}, Lorg/java_websocket/WebSocketImpl;->open(Lorg/java_websocket/handshake/Handshakedata;)V

    const/4 v12, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v12

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v14}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    const/4 v12, 0x0

    goto/16 :goto_2

    :catch_3
    move-exception v3

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v12, p0, v3}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    const/4 v12, -0x1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v14}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V
    :try_end_6
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_7
    :try_start_7
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-nez v12, :cond_8

    const/16 v12, 0x3ea

    const-string v13, "no draft matches"

    invoke-virtual {p0, v12, v13}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_9
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v12, v10}, Lorg/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;

    move-result-object v11

    instance-of v12, v11, Lorg/java_websocket/handshake/ClientHandshake;

    if-nez v12, :cond_a

    const/16 v12, 0x3ea

    const-string v13, "wrong http function"

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v14}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_a
    move-object v0, v11

    check-cast v0, Lorg/java_websocket/handshake/ClientHandshake;

    move-object v4, v0

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v12, v4}, Lorg/java_websocket/drafts/Draft;->acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v5

    sget-object v12, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    if-ne v5, v12, :cond_b

    invoke-direct {p0, v4}, Lorg/java_websocket/WebSocketImpl;->open(Lorg/java_websocket/handshake/Handshakedata;)V

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_b
    const/16 v12, 0x3ea

    const-string v13, "the handshake did finaly not match"

    invoke-virtual {p0, v12, v13}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_c
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v13, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    if-ne v12, v13, :cond_3

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v13, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    invoke-virtual {v12, v13}, Lorg/java_websocket/drafts/Draft;->setParseMode(Lorg/java_websocket/WebSocket$Role;)V

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v12, v10}, Lorg/java_websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;

    move-result-object v11

    instance-of v12, v11, Lorg/java_websocket/handshake/ServerHandshake;

    if-nez v12, :cond_d

    const/16 v12, 0x3ea

    const-string v13, "wrong http function"

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v14}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_d
    move-object v0, v11

    check-cast v0, Lorg/java_websocket/handshake/ServerHandshake;

    move-object v4, v0

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v13, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    invoke-virtual {v12, v13, v4}, Lorg/java_websocket/drafts/Draft;->acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;

    move-result-object v5

    sget-object v12, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;
    :try_end_7
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_7 .. :try_end_7} :catch_1

    if-ne v5, v12, :cond_e

    :try_start_8
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    iget-object v13, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    invoke-interface {v12, p0, v13, v4}, Lorg/java_websocket/WebSocketListener;->onWebsocketHandshakeReceivedAsClient(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)V
    :try_end_8
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    invoke-direct {p0, v4}, Lorg/java_websocket/WebSocketImpl;->open(Lorg/java_websocket/handshake/Handshakedata;)V

    const/4 v12, 0x1

    goto/16 :goto_2

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v12

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v14}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    const/4 v12, 0x0

    goto/16 :goto_2

    :catch_5
    move-exception v3

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v12, p0, v3}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    const/4 v12, -0x1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v14}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_e
    const/16 v12, 0x3ea

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "draft "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " refuses handshake"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;)V
    :try_end_9
    .catch Lorg/java_websocket/exceptions/InvalidHandshakeException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_6
    move-exception v3

    :try_start_a
    invoke-virtual {p0, v3}, Lorg/java_websocket/WebSocketImpl;->close(Lorg/java_websocket/exceptions/InvalidDataException;)V
    :try_end_a
    .catch Lorg/java_websocket/exceptions/IncompleteHandshakeException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    :cond_f
    sget-boolean v12, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v12, :cond_2

    invoke-virtual {v3}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;->getPreferedSize()I

    move-result v12

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-ge v12, v13, :cond_2

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_10
    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iget-object v13, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v12, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    iget-object v13, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    :catch_7
    move-exception v12

    goto/16 :goto_4
.end method

.method private isFlashEdgeCase(Ljava/nio/ByteBuffer;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/IncompleteHandshakeException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sget-object v2, Lorg/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sget-object v2, Lorg/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v1, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    sget-object v2, Lorg/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    array-length v2, v2

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method private open(Lorg/java_websocket/handshake/Handshakedata;)V
    .locals 4

    sget-boolean v1, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open using draft: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->OPEN:Lorg/java_websocket/WebSocket$READYSTATE;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, p1}, Lorg/java_websocket/WebSocketListener;->onWebsocketOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/Handshakedata;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private send(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/java_websocket/exceptions/WebsocketNotConnectedException;

    invoke-direct {v2}, Lorg/java_websocket/exceptions/WebsocketNotConnectedException;-><init>()V

    throw v2

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/framing/Framedata;

    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->sendFrame(Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private write(Ljava/nio/ByteBuffer;)V
    .locals 4

    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_1

    const-string v0, "too big to display"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lorg/java_websocket/WebSocketListener;->onWriteDemand(Lorg/java_websocket/WebSocket;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private write(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->close(I)V

    return-void
.end method

.method public close(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    return-void
.end method

.method public close(Lorg/java_websocket/exceptions/InvalidDataException;)V
    .locals 3

    invoke-virtual {p1}, Lorg/java_websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/java_websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    return-void
.end method

.method public closeConnection()V
    .locals 3

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this method must be used in conjuction with flushAndClose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    return-void
.end method

.method protected declared-synchronized closeConnection(ILjava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v2, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSED:Lorg/java_websocket/WebSocket$READYSTATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_1
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/java_websocket/WebSocketListener;->onWebsocketClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v1}, Lorg/java_websocket/drafts/Draft;->reset()V

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSED:Lorg/java_websocket/WebSocket$READYSTATE;

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method protected closeConnection(IZ)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    return-void
.end method

.method public decode(Ljava/nio/ByteBuffer;)V
    .locals 6

    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_3

    const-string v0, "too big to display"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lorg/java_websocket/WebSocket$READYSTATE;

    if-eq v0, v1, :cond_4

    invoke-direct {p0, p1}, Lorg/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    :cond_2
    :goto_1
    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isClosing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->isFlushAndClose()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lorg/java_websocket/WebSocketImpl;->decodeHandshake(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lorg/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public eot()V
    .locals 5

    const/16 v4, 0x3ee

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/java_websocket/WebSocketImpl;->getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft;->getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v3, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft;->getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->ONEWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v1, Lorg/java_websocket/WebSocket$Role;->SERVER:Lorg/java_websocket/WebSocket$Role;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v4, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v2}, Lorg/java_websocket/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_0
.end method

.method protected declared-synchronized flushAndClose(ILjava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closecode:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/java_websocket/WebSocketImpl;->closemessage:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0}, Lorg/java_websocket/WebSocketListener;->onWriteDemand(Lorg/java_websocket/WebSocket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lorg/java_websocket/WebSocketListener;->onWebsocketClosing(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v1}, Lorg/java_websocket/drafts/Draft;->reset()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getDraft()Lorg/java_websocket/drafts/Draft;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lorg/java_websocket/WebSocketListener;->getLocalSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v0, p0}, Lorg/java_websocket/WebSocketListener;->getRemoteSocketAddress(Lorg/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSED:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosing()Z
    .locals 2

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSING:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 2

    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlushAndClose()Z
    .locals 1

    iget-boolean v0, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    return v0
.end method

.method public isOpen()Z
    .locals 2

    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->OPEN:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/java_websocket/WebSocketImpl;->flushandclosestate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->OPEN:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/WebsocketNotConnectedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v2, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lorg/java_websocket/drafts/Draft;->createFrames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/java_websocket/exceptions/WebsocketNotConnectedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v2, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lorg/java_websocket/drafts/Draft;->createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/java_websocket/exceptions/WebsocketNotConnectedException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public sendFragmentedFrame(Lorg/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1, p2, p3}, Lorg/java_websocket/drafts/Draft;->continuousFrame(Lorg/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->send(Ljava/util/Collection;)V

    return-void
.end method

.method public sendFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 3

    sget-boolean v0, Lorg/java_websocket/WebSocketImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lorg/java_websocket/drafts/Draft;->createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public startHandshake(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    sget-boolean v1, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->readystate:Lorg/java_websocket/WebSocket$READYSTATE;

    sget-object v2, Lorg/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lorg/java_websocket/WebSocket$READYSTATE;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "shall only be called once"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    invoke-virtual {v1, p1}, Lorg/java_websocket/drafts/Draft;->postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    invoke-interface {p1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    sget-boolean v1, Lorg/java_websocket/WebSocketImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    invoke-interface {v1, p0, v2}, Lorg/java_websocket/WebSocketListener;->onWebsocketHandshakeSentAsClient(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->draft:Lorg/java_websocket/drafts/Draft;

    iget-object v2, p0, Lorg/java_websocket/WebSocketImpl;->handshakerequest:Lorg/java_websocket/handshake/ClientHandshake;

    iget-object v3, p0, Lorg/java_websocket/WebSocketImpl;->role:Lorg/java_websocket/WebSocket$Role;

    invoke-virtual {v1, v2, v3}, Lorg/java_websocket/drafts/Draft;->createHandshake(Lorg/java_websocket/handshake/Handshakedata;Lorg/java_websocket/WebSocket$Role;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/java_websocket/WebSocketImpl;->write(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v2, "Handshake data rejected by client."

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/java_websocket/WebSocketImpl;->wsl:Lorg/java_websocket/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected because of"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
