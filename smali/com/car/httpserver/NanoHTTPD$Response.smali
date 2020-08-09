.class public Lcom/car/httpserver/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/httpserver/NanoHTTPD$Response$ChunkedOutputStream;,
        Lcom/car/httpserver/NanoHTTPD$Response$Status;,
        Lcom/car/httpserver/NanoHTTPD$Response$IStatus;
    }
.end annotation


# instance fields
.field private chunkedTransfer:Z

.field private contentLength:J

.field private data:Ljava/io/InputStream;

.field private encodeAsGzip:Z

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepAlive:Z

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lcom/car/httpserver/NanoHTTPD$Method;

.field private status:Lcom/car/httpserver/NanoHTTPD$Response$IStatus;


# direct methods
.method protected constructor <init>(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->status:Lcom/car/httpserver/NanoHTTPD$Response$IStatus;

    iput-object p2, p0, Lcom/car/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    if-nez p3, :cond_1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v0, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lcom/car/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    iput-wide v4, p0, Lcom/car/httpserver/NanoHTTPD$Response;->contentLength:J

    :goto_0
    iget-wide v2, p0, Lcom/car/httpserver/NanoHTTPD$Response;->contentLength:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/car/httpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    iput-boolean v1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->keepAlive:Z

    return-void

    :cond_1
    iput-object p3, p0, Lcom/car/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/car/httpserver/NanoHTTPD$Response;->contentLength:J

    goto :goto_0
.end method

.method private headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method private sendBody(Ljava/io/OutputStream;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const-wide/16 v0, 0x4000

    long-to-int v8, v0

    new-array v2, v8, [B

    const-wide/16 v8, -0x1

    cmp-long v8, p2, v8

    if-nez v8, :cond_3

    const/4 v6, 0x1

    :cond_0
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    if-eqz v6, :cond_4

    move-wide v4, v0

    :goto_1
    iget-object v8, p0, Lcom/car/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    long-to-int v9, v4

    invoke-virtual {v8, v2, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_5

    :cond_2
    return-void

    :cond_3
    move v6, v7

    goto :goto_0

    :cond_4
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    if-nez v6, :cond_0

    int-to-long v8, v3

    sub-long/2addr p2, v8

    goto :goto_0
.end method

.method private sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/car/httpserver/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/car/httpserver/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method

.method private sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->requestMethod:Lcom/car/httpserver/NanoHTTPD$Method;

    sget-object v2, Lcom/car/httpserver/NanoHTTPD$Method;->HEAD:Lcom/car/httpserver/NanoHTTPD$Method;

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/car/httpserver/NanoHTTPD$Response$ChunkedOutputStream;

    invoke-direct {v0, p1}, Lcom/car/httpserver/NanoHTTPD$Response$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/car/httpserver/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    invoke-virtual {v0}, Lcom/car/httpserver/NanoHTTPD$Response$ChunkedOutputStream;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/car/httpserver/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lcom/car/httpserver/NanoHTTPD$Method;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$Response;->requestMethod:Lcom/car/httpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public getStatus()Lcom/car/httpserver/NanoHTTPD$Response$IStatus;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$Response;->status:Lcom/car/httpserver/NanoHTTPD$Response$IStatus;

    return-object v0
.end method

.method protected send(Ljava/io/OutputStream;)V
    .locals 12

    iget-object v4, p0, Lcom/car/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v9, "GMT"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->status:Lcom/car/httpserver/NanoHTTPD$Response$IStatus;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/Error;

    const-string v10, "sendResponse(): Status can\'t be null."

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v9, "CarSvc_NanoHTTPD"

    const-string v10, "Could not send response to the client"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    const-string v11, "UTF-8"

    invoke-direct {v10, p1, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP/1.1 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/car/httpserver/NanoHTTPD$Response;->status:Lcom/car/httpserver/NanoHTTPD$Response$IStatus;

    invoke-interface {v10}, Lcom/car/httpserver/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v10, "Date"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Date: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v10, "connection"

    invoke-direct {p0, v9, v10}, Lcom/car/httpserver/NanoHTTPD$Response;->headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->keepAlive:Z

    if-eqz v9, :cond_9

    const-string v9, "keep-alive"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v10, "content-length"

    invoke-direct {p0, v9, v10}, Lcom/car/httpserver/NanoHTTPD$Response;->headerAlreadySent(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    :cond_6
    iget-boolean v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v9, :cond_7

    const-string v9, "Content-Encoding: gzip\r\n"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/car/httpserver/NanoHTTPD$Response;->setChunkedTransfer(Z)V

    :cond_7
    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v9, :cond_a

    iget-wide v6, p0, Lcom/car/httpserver/NanoHTTPD$Response;->contentLength:J

    :goto_3
    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->requestMethod:Lcom/car/httpserver/NanoHTTPD$Method;

    sget-object v10, Lcom/car/httpserver/NanoHTTPD$Method;->HEAD:Lcom/car/httpserver/NanoHTTPD$Method;

    if-eq v9, v10, :cond_b

    iget-boolean v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v9, :cond_b

    const-string v9, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v9, "\r\n"

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    invoke-direct {p0, p1, v6, v7}, Lcom/car/httpserver/NanoHTTPD$Response;->sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-static {v9}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v9, "close"

    goto :goto_2

    :cond_a
    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_b
    iget-boolean v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/car/httpserver/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-virtual {p0, v5, v9, v6, v7}, Lcom/car/httpserver/NanoHTTPD$Response;->sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    goto :goto_4
.end method

.method protected sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;Ljava/util/Map;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)J"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "content-length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    :goto_0
    return-wide p3

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setChunkedTransfer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->chunkedTransfer:Z

    return-void
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-void
.end method

.method public setGzipEncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->encodeAsGzip:Z

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->keepAlive:Z

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setRequestMethod(Lcom/car/httpserver/NanoHTTPD$Method;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->requestMethod:Lcom/car/httpserver/NanoHTTPD$Method;

    return-void
.end method

.method public setStatus(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$Response;->status:Lcom/car/httpserver/NanoHTTPD$Response$IStatus;

    return-void
.end method
