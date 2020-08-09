.class Lcom/aispeech/aios/BusClient$XSocket;
.super Ljava/lang/Object;
.source "BusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aispeech/aios/BusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XSocket"
.end annotation


# static fields
.field public static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000


# instance fields
.field private CRLF:[B

.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferSize:I

.field private channel:Ljava/nio/channels/SocketChannel;

.field private isConnected:Z

.field private log:Z

.field private logstr:Ljava/lang/StringBuilder;

.field private name:Ljava/lang/String;

.field private selector:Ljava/nio/channels/Selector;

.field private selkey:Ljava/nio/channels/SelectionKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->isConnected:Z

    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->CRLF:[B

    if-nez p1, :cond_0

    const-string p1, "????"

    :cond_0
    iput-object p1, p0, Lcom/aispeech/aios/BusClient$XSocket;->name:Ljava/lang/String;

    if-lez p2, :cond_1

    :goto_0
    iput p2, p0, Lcom/aispeech/aios/BusClient$XSocket;->bufferSize:I

    return-void

    :cond_1
    const/16 p2, 0x2000

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/aispeech/aios/BusClient$XSocket;)I
    .locals 1

    iget v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->bufferSize:I

    return v0
.end method

.method private logMultipart(CLcom/aispeech/aios/BusClient$Multipart;)V
    .locals 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/aispeech/aios/BusClient$Multipart;->size()I

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-virtual {p2, v9}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "keepalive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2, v9}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "keepalive-ack"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p2}, Lcom/aispeech/aios/BusClient$Multipart;->size()I

    move-result v5

    if-le v5, v8, :cond_3

    invoke-virtual {p2, v9}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v7}, Lcom/aispeech/aios/BusClient$Multipart;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "publish"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "vad.speech"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "vad.volume"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "pcm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    sget v5, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    if-eq v5, v7, :cond_5

    :cond_4
    if-nez v1, :cond_8

    sget v5, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    if-gt v5, v8, :cond_8

    :cond_5
    iget-object v5, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/aispeech/aios/BusClient$XSocket;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/aispeech/aios/BusClient$Multipart;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    invoke-virtual {p2, v0}, Lcom/aispeech/aios/BusClient$Multipart;->get(I)[B

    move-result-object v2

    iget-object v6, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    array-length v5, v2

    const/16 v8, 0xc8

    if-le v5, v8, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...#"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {v7, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_9

    sget-object v5, Lcom/aispeech/aios/BusClient;->TAG_HIGHFREQ:Ljava/lang/String;

    iget-object v6, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aispeech/aios/BusClient$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v5, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_8
    return-void

    :cond_9
    sget-object v5, Lcom/aispeech/aios/BusClient;->TAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aispeech/aios/BusClient$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private read(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v2, p1

    new-array v0, p1, [B

    :goto_0
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_2
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    sub-int v4, p1, v2

    invoke-virtual {v3, v0, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const-wide/16 v4, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/aispeech/aios/BusClient$XSocket;->waitReadable(J)Z

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0
.end method

.method private readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "EOF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez v0, :cond_2

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/aispeech/aios/BusClient$XSocket;->waitReadable(J)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    new-array v1, v2, [B

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    :cond_0
    iget-object v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/net/Socket;->setReuseAddress(Z)V

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->isConnected:Z

    iget-boolean v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->isConnected:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/aispeech/aios/BusClient$XSocket;->isConnected:Z

    :cond_0
    iget-boolean v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->isConnected:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string v4, "not available"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->bufferSize:I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->logstr:Ljava/lang/StringBuilder;

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->isConnected:Z

    return v0
.end method

.method public isReadable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-lez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public receiveMultipart()Lcom/aispeech/aios/BusClient$Multipart;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {v1}, Lcom/aispeech/aios/BusClient$Multipart;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/aispeech/aios/BusClient$XSocket;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    sget v3, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    const/16 v3, 0x3e

    invoke-direct {p0, v3, v1}, Lcom/aispeech/aios/BusClient$XSocket;->logMultipart(CLcom/aispeech/aios/BusClient$Multipart;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/aispeech/aios/BusClient$XSocket;->read(I)[B

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/aispeech/aios/BusClient$Multipart;->a([[B)Lcom/aispeech/aios/BusClient$Multipart;

    invoke-direct {p0}, Lcom/aispeech/aios/BusClient$XSocket;->readLine()Ljava/lang/String;

    goto :goto_0
.end method

.method public sendMultipart(Lcom/aispeech/aios/BusClient$Multipart;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/aispeech/aios/BusClient$Multipart;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/aispeech/aios/BusClient$Multipart;->get(I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/aispeech/aios/BusClient$XSocket;->write([BZ)V

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->CRLF:[B

    invoke-virtual {p0, v2, v3}, Lcom/aispeech/aios/BusClient$XSocket;->write([BZ)V

    invoke-virtual {p0, v1, v3}, Lcom/aispeech/aios/BusClient$XSocket;->write([BZ)V

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->CRLF:[B

    invoke-virtual {p0, v2, v3}, Lcom/aispeech/aios/BusClient$XSocket;->write([BZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->CRLF:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/aispeech/aios/BusClient$XSocket;->write([BZ)V

    sget v2, Lcom/aispeech/aios/BusClient;->DEFAULT_LOGLEVEL:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    const/16 v2, 0x3c

    invoke-direct {p0, v2, p1}, Lcom/aispeech/aios/BusClient$XSocket;->logMultipart(CLcom/aispeech/aios/BusClient$Multipart;)V

    :cond_1
    return-void
.end method

.method public waitReadable(J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    const/4 v0, 0x0

    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-lez v0, :cond_3

    :goto_1
    return v1

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public waitWritable(J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    const/4 v0, 0x0

    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/aispeech/aios/BusClient$XSocket;->selkey:Ljava/nio/channels/SelectionKey;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-lez v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public wakeup()V
    .locals 1

    iget-object v0, p0, Lcom/aispeech/aios/BusClient$XSocket;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public write([BZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    array-length v0, p1

    array-length v1, p1

    :goto_0
    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    sub-int v4, v0, v1

    invoke-virtual {v3, p1, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_2
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v6, v7}, Lcom/aispeech/aios/BusClient$XSocket;->waitWritable(J)Z

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    sub-int/2addr v1, v2

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_3
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v6, v7}, Lcom/aispeech/aios/BusClient$XSocket;->waitWritable(J)Z

    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/aispeech/aios/BusClient$XSocket;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_5
    return-void
.end method
