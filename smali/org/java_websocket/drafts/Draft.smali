.class public abstract Lorg/java_websocket/drafts/Draft;
.super Ljava/lang/Object;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/drafts/Draft$CloseHandshakeType;,
        Lorg/java_websocket/drafts/Draft$HandshakeState;
    }
.end annotation


# static fields
.field public static final FLASH_POLICY_REQUEST:[B

.field public static INITIAL_FAMESIZE:I

.field public static MAX_FAME_SIZE:I


# instance fields
.field protected continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

.field protected role:Lorg/java_websocket/WebSocket$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lorg/java_websocket/drafts/Draft;->MAX_FAME_SIZE:I

    const/16 v0, 0x40

    sput v0, Lorg/java_websocket/drafts/Draft;->INITIAL_FAMESIZE:I

    const-string v0, "<policy-file-request/>\u0000"

    invoke-static {v0}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/java_websocket/drafts/Draft;->FLASH_POLICY_REQUEST:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft;->role:Lorg/java_websocket/WebSocket$Role;

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    return-void
.end method

.method public static readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v1, 0x30

    const/16 v0, 0x30

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lorg/java_websocket/drafts/Draft;->readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/java_websocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static translateHandshakeHttp(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocket$Role;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;,
            Lorg/java_websocket/exceptions/IncompleteHandshakeException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    invoke-static {p0}, Lorg/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v6, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit16 v7, v7, 0x80

    invoke-direct {v6, v7}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v6

    :cond_0
    const-string v6, " "

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    if-eq v6, v7, :cond_1

    new-instance v6, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    invoke-direct {v6}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>()V

    throw v6

    :cond_1
    sget-object v6, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    if-ne p1, v6, :cond_2

    new-instance v2, Lorg/java_websocket/handshake/HandshakeImpl1Server;

    invoke-direct {v2}, Lorg/java_websocket/handshake/HandshakeImpl1Server;-><init>()V

    move-object v5, v2

    check-cast v5, Lorg/java_websocket/handshake/ServerHandshakeBuilder;

    aget-object v6, v1, v10

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-interface {v5, v6}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatus(S)V

    aget-object v6, v1, v11

    invoke-interface {v5, v6}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Lorg/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, ":"

    invoke-virtual {v3, v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-eq v6, v11, :cond_3

    new-instance v6, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v7, "not an http header"

    invoke-direct {v6, v7}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    new-instance v0, Lorg/java_websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v0}, Lorg/java_websocket/handshake/HandshakeImpl1Client;-><init>()V

    aget-object v6, v1, v10

    invoke-interface {v0, v6}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->setResourceDescriptor(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    aget-object v6, v4, v6

    aget-object v7, v4, v10

    const-string v8, "^ +"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/java_websocket/handshake/HandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    new-instance v6, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-direct {v6}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw v6

    :cond_5
    return-object v2
.end method


# virtual methods
.method public abstract acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method protected basicAccept(Lorg/java_websocket/handshake/Handshakedata;)Z
    .locals 2

    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAlloc(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExedeedException;,
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return p1
.end method

.method public continuousFrame(Lorg/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/framing/Framedata$Opcode;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eq p1, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    :goto_0
    new-instance v0, Lorg/java_websocket/framing/FramedataImpl1;

    iget-object v2, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-direct {v0, v2}, Lorg/java_websocket/framing/FramedataImpl1;-><init>(Lorg/java_websocket/framing/Framedata$Opcode;)V

    :try_start_0
    invoke-interface {v0, p2}, Lorg/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p3}, Lorg/java_websocket/framing/FrameBuilder;->setFin(Z)V

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_1
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_1
.end method

.method public abstract copyInstance()Lorg/java_websocket/drafts/Draft;
.end method

.method public abstract createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
.end method

.method public abstract createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end method

.method public createHandshake(Lorg/java_websocket/handshake/Handshakedata;Lorg/java_websocket/WebSocket$Role;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/handshake/Handshakedata;",
            "Lorg/java_websocket/WebSocket$Role;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/java_websocket/drafts/Draft;->createHandshake(Lorg/java_websocket/handshake/Handshakedata;Lorg/java_websocket/WebSocket$Role;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lorg/java_websocket/handshake/Handshakedata;Lorg/java_websocket/WebSocket$Role;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/handshake/Handshakedata;",
            "Lorg/java_websocket/WebSocket$Role;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x64

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    instance-of v7, p1, Lorg/java_websocket/handshake/ClientHandshake;

    if-eqz v7, :cond_0

    const-string v7, "GET "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p1

    check-cast v7, Lorg/java_websocket/handshake/ClientHandshake;

    invoke-interface {v7}, Lorg/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " HTTP/1.1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/java_websocket/handshake/Handshakedata;->iterateHttpFields()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v7, p1, Lorg/java_websocket/handshake/ServerHandshake;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 101 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v7, p1

    check-cast v7, Lorg/java_websocket/handshake/ServerHandshake;

    invoke-interface {v7}, Lorg/java_websocket/handshake/ServerHandshake;->getHttpStatusMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "unknow role"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/java_websocket/util/Charsetfunctions;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz p3, :cond_4

    invoke-interface {p1}, Lorg/java_websocket/handshake/Handshakedata;->getContent()[B

    move-result-object v2

    :goto_2
    if-nez v2, :cond_5

    const/4 v7, 0x0

    :goto_3
    array-length v8, v5

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    array-length v7, v2

    goto :goto_3
.end method

.method public abstract getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
.end method

.method public getRole()Lorg/java_websocket/WebSocket$Role;
    .locals 1

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft;->role:Lorg/java_websocket/WebSocket$Role;

    return-object v0
.end method

.method public abstract postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public setParseMode(Lorg/java_websocket/WebSocket$Role;)V
    .locals 0

    iput-object p1, p0, Lorg/java_websocket/drafts/Draft;->role:Lorg/java_websocket/WebSocket$Role;

    return-void
.end method

.method public abstract translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft;->role:Lorg/java_websocket/WebSocket$Role;

    invoke-static {p1, v0}, Lorg/java_websocket/drafts/Draft;->translateHandshakeHttp(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocket$Role;)Lorg/java_websocket/handshake/HandshakeBuilder;

    move-result-object v0

    return-object v0
.end method
