.class public Lcom/car/httpserver/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Lcom/car/httpserver/NanoHTTPD$IHTTPSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000


# instance fields
.field private cookies:Lcom/car/httpserver/NanoHTTPD$CookieHandler;

.field private headers:Ljava/util/Map;
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

.field private final inputStream:Ljava/io/PushbackInputStream;

.field private method:Lcom/car/httpserver/NanoHTTPD$Method;

.field private final outputStream:Ljava/io/OutputStream;

.field private parms:Ljava/util/Map;
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

.field private protocolVersion:Ljava/lang/String;

.field private queryParameterString:Ljava/lang/String;

.field private remoteIp:Ljava/lang/String;

.field private rlen:I

.field private splitbyte:I

.field private final tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lcom/car/httpserver/NanoHTTPD;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/car/httpserver/NanoHTTPD;Lcom/car/httpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    iput-object p4, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Lcom/car/httpserver/NanoHTTPD;Lcom/car/httpserver/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 2

    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    iput-object p4, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "127.0.0.1"

    :goto_0
    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-void

    :cond_1
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/httpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lcom/car/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v7, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lcom/car/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v1}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_1
    :try_start_1
    const-string v7, "method"

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v8, Lcom/car/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v7, v8, v9}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v7, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/car/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-virtual {v7, v6}, Lcom/car/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    const-string v7, "HTTP/1.1"

    iput-object v7, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    const-string v7, "CarSvc_NanoHTTPD"

    const-string v8, "no protocol version specified, strange. Assuming HTTP/1.1."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v7, "uri"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private decodeMultipartFormData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/httpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v8

    array-length v0, v8

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    new-instance v26, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v27, Lcom/car/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v28, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings."

    invoke-direct/range {v26 .. v28}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v25

    throw v25

    :cond_0
    const/16 v4, 0x400

    const/16 v26, 0x400

    :try_start_1
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v21, v0

    const/4 v7, 0x0

    :goto_0
    array-length v0, v8

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    aget v26, v8, v7

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v26

    const/16 v27, 0x400

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v16

    :goto_1
    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-direct {v6, v0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    const-string v27, "US-ASCII"

    invoke-static/range {v27 .. v27}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, v26

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_2

    new-instance v26, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v27, Lcom/car/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v28, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary."

    invoke-direct/range {v26 .. v28}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v26
    :try_end_1
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v12

    new-instance v26, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v27, Lcom/car/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v26

    :cond_1
    const/16 v16, 0x400

    goto :goto_1

    :cond_2
    const/16 v23, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    :goto_2
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_7

    invoke-static {}, Lcom/car/httpserver/NanoHTTPD;->access$200()Ljava/util/regex/Pattern;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->matches()Z

    move-result v26

    if-eqz v26, :cond_5

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/car/httpserver/NanoHTTPD;->access$300()Ljava/util/regex/Pattern;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    :cond_3
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v26

    if-eqz v26, :cond_5

    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const-string v26, "name"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_3

    :cond_4
    const-string v26, "filename"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/car/httpserver/NanoHTTPD;->access$400()Ljava/util/regex/Pattern;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->matches()Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :cond_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    :cond_7
    const-wide/16 v26, 0x400

    move-wide/from16 v0, v26

    invoke-virtual {v14, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    sub-int v22, v16, v26

    add-int/lit8 v26, v16, -0x4

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    new-instance v26, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v27, Lcom/car/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v28, "Multipart header size exceeds MAX_HEADER_SIZE."

    invoke-direct/range {v26 .. v28}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v26

    :cond_8
    aget v26, v8, v7

    add-int v20, v26, v22

    add-int/lit8 v26, v7, 0x1

    aget v26, v8, v26

    add-int/lit8 v19, v26, -0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-nez v9, :cond_9

    sub-int v26, v19, v20

    move/from16 v0, v26

    new-array v11, v0, [B

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    sub-int v26, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    const/4 v10, 0x2

    :goto_6
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :cond_c
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string v3, ""

    iput-object v3, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/car/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/car/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-virtual {v3, v0}, Lcom/car/httpserver/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findHeaderEnd([BI)I
    .locals 4

    const/16 v3, 0xd

    const/16 v2, 0xa

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_1

    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x4

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 12

    const/4 v11, 0x0

    new-array v5, v11, [I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    array-length v10, p2

    if-ge v9, v10, :cond_0

    move-object v6, v5

    :goto_0
    return-object v6

    :cond_0
    const/4 v8, 0x0

    array-length v9, p2

    add-int/lit16 v9, v9, 0x1000

    new-array v7, v9, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    array-length v10, v7

    if-ge v9, v10, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v7, v11, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    array-length v9, p2

    sub-int v3, v0, v9

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_6

    const/4 v1, 0x0

    :goto_3
    array-length v9, p2

    if-ge v1, v9, :cond_2

    add-int v9, v2, v1

    aget-byte v9, v7, v9

    aget-byte v10, p2, v1

    if-eq v9, v10, :cond_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    array-length v0, v7

    goto :goto_1

    :cond_4
    array-length v9, p2

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_5

    array-length v9, v5

    add-int/lit8 v9, v9, 0x1

    new-array v4, v9, [I

    array-length v9, v5

    invoke-static {v5, v11, v4, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v9, v5

    add-int v10, v8, v2

    aput v10, v4, v9

    move-object v5, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int/2addr v8, v3

    array-length v9, v7

    array-length v10, p2

    sub-int/2addr v9, v10

    array-length v10, p2

    invoke-static {v7, v9, v7, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v7

    array-length v10, p2

    sub-int v3, v9, v10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-ge v9, v3, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    :cond_7
    array-length v9, p2

    invoke-virtual {p1, v7, v9, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-gtz v3, :cond_1

    move-object v6, v5

    goto :goto_0
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v2}, Lcom/car/httpserver/NanoHTTPD$TempFileManager;->createTempFile()Lcom/car/httpserver/NanoHTTPD$TempFile;

    move-result-object v1

    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lcom/car/httpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 9

    const-string v4, ""

    if-lez p3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v7}, Lcom/car/httpserver/NanoHTTPD$TempFileManager;->createTempFile()Lcom/car/httpserver/NanoHTTPD$TempFile;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-interface {v6}, Lcom/car/httpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    add-int v8, p2, p3

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-interface {v6}, Lcom/car/httpserver/NanoHTTPD$TempFile;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    invoke-static {v3}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    :cond_0
    return-object v4

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    :goto_1
    invoke-static {v2}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    throw v7

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0x2000

    :try_start_0
    new-array v2, v13, [B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, -0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    const/4 v14, 0x0

    const/16 v15, 0x2000

    invoke-virtual {v13, v2, v14, v15}, Ljava/io/PushbackInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    invoke-static {v13}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v13}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    new-instance v13, Ljava/net/SocketException;

    const-string v14, "NanoHttpd Shutdown"

    invoke-direct {v13, v14}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v14}, Lcom/car/httpserver/NanoHTTPD$TempFileManager;->clear()V

    throw v13

    :catch_1
    move-exception v4

    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    invoke-static {v13}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v13}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    new-instance v13, Ljava/net/SocketException;

    const-string v14, "NanoHttpd Shutdown"

    invoke-direct {v13, v14}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    move-exception v12

    :try_start_5
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    rsub-int v15, v15, 0x2000

    invoke-virtual {v13, v2, v14, v15}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v11

    :cond_1
    if-lez v11, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    add-int/2addr v13, v11

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    if-lez v13, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v13, v2, v14, v15}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_3
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    if-nez v13, :cond_5

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v14, "remote-addr"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v14, "http-client-ip"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->remoteIp:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v14, v2, v15, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v13, v14}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    const-string v13, "method"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/car/httpserver/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Method;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->method:Lcom/car/httpserver/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->method:Lcom/car/httpserver/NanoHTTPD$Method;

    if-nez v13, :cond_6

    new-instance v13, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v14, Lcom/car/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v15, "BAD REQUEST: Syntax error."

    invoke-direct {v13, v14, v15}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    move-exception v6

    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    sget-object v14, Lcom/car/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v15, "text/plain"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Lcom/car/httpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v9, v13}, Lcom/car/httpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v13}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v13}, Lcom/car/httpserver/NanoHTTPD$TempFileManager;->clear()V

    :goto_1
    return-void

    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v10

    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-virtual {v10}, Lcom/car/httpserver/NanoHTTPD$ResponseException;->getStatus()Lcom/car/httpserver/NanoHTTPD$Response$Status;

    move-result-object v14

    const-string v15, "text/plain"

    invoke-virtual {v10}, Lcom/car/httpserver/NanoHTTPD$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Lcom/car/httpserver/NanoHTTPD;->newFixedLengthResponse(Lcom/car/httpserver/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v9, v13}, Lcom/car/httpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-static {v13}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v13}, Lcom/car/httpserver/NanoHTTPD$TempFileManager;->clear()V

    goto :goto_1

    :cond_6
    :try_start_a
    const-string v13, "uri"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    new-instance v13, Lcom/car/httpserver/NanoHTTPD$CookieHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    invoke-direct {v13, v14, v15}, Lcom/car/httpserver/NanoHTTPD$CookieHandler;-><init>(Lcom/car/httpserver/NanoHTTPD;Ljava/util/Map;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->cookies:Lcom/car/httpserver/NanoHTTPD$CookieHandler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v14, "connection"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->protocolVersion:Ljava/lang/String;

    const-string v14, "HTTP/1.1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-eqz v3, :cond_7

    const-string v13, "(?i).*close.*"

    invoke-virtual {v3, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    :cond_7
    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/car/httpserver/NanoHTTPD;->serve(Lcom/car/httpserver/NanoHTTPD$IHTTPSession;)Lcom/car/httpserver/NanoHTTPD$Response;

    move-result-object v9

    if-nez v9, :cond_9

    new-instance v13, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v14, Lcom/car/httpserver/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v15, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v13, v14, v15}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v13

    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v14, "accept-encoding"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->cookies:Lcom/car/httpserver/NanoHTTPD$CookieHandler;

    invoke-virtual {v13, v9}, Lcom/car/httpserver/NanoHTTPD$CookieHandler;->unloadQueue(Lcom/car/httpserver/NanoHTTPD$Response;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->method:Lcom/car/httpserver/NanoHTTPD$Method;

    invoke-virtual {v9, v13}, Lcom/car/httpserver/NanoHTTPD$Response;->setRequestMethod(Lcom/car/httpserver/NanoHTTPD$Method;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->this$0:Lcom/car/httpserver/NanoHTTPD;

    invoke-virtual {v13}, Lcom/car/httpserver/NanoHTTPD;->useGzipWhenAccepted()Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v1, :cond_b

    const-string v13, "gzip"

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v9, v13}, Lcom/car/httpserver/NanoHTTPD$Response;->setGzipEncoding(Z)V

    invoke-virtual {v9, v7}, Lcom/car/httpserver/NanoHTTPD$Response;->setKeepAlive(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v9, v13}, Lcom/car/httpserver/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    if-eqz v7, :cond_a

    const-string v13, "close"

    const-string v14, "connection"

    invoke-virtual {v9, v14}, Lcom/car/httpserver/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_a
    new-instance v13, Ljava/net/SocketException;

    const-string v14, "NanoHttpd Shutdown"

    invoke-direct {v13, v14}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/car/httpserver/NanoHTTPD$ResponseException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_b
    const/4 v13, 0x0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->tempFileManager:Lcom/car/httpserver/NanoHTTPD$TempFileManager;

    invoke-interface {v13}, Lcom/car/httpserver/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_1
.end method

.method public getCookies()Lcom/car/httpserver/NanoHTTPD$CookieHandler;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->cookies:Lcom/car/httpserver/NanoHTTPD$CookieHandler;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    return-object v0
.end method

.method public final getMethod()Lcom/car/httpserver/NanoHTTPD$Method;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->method:Lcom/car/httpserver/NanoHTTPD$Method;

    return-object v0
.end method

.method public final getParms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryParameterString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->queryParameterString:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parseBody(Ljava/util/Map;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/car/httpserver/NanoHTTPD$ResponseException;
        }
    .end annotation

    const/16 v11, 0x200

    const/16 v10, 0x400

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v5, "content-length"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v5, "content-length"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v24, v0

    :goto_0
    const/4 v12, 0x0

    const/16 v23, 0x0

    const-wide/16 v4, 0x400

    cmp-long v4, v24, v4

    if-gez v4, :cond_3

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v23, Ljava/io/DataOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_1
    const/16 v4, 0x200

    new-array v0, v4, [B

    move-object/from16 v16, v0

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-ltz v4, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, v24, v4

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/PushbackInputStream;

    const/4 v5, 0x0

    const-wide/16 v6, 0x200

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    int-to-long v4, v4

    sub-long v24, v24, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-lez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v4, v5}, Ljava/io/DataOutput;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static/range {v22 .. v22}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    throw v4

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    if-ge v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->rlen:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->splitbyte:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    move-wide/from16 v24, v0

    goto :goto_0

    :cond_2
    const-wide/16 v24, 0x0

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v22

    move-object/from16 v23, v22

    goto :goto_1

    :cond_4
    const/16 v19, 0x0

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v19

    :goto_3
    sget-object v4, Lcom/car/httpserver/NanoHTTPD$Method;->POST:Lcom/car/httpserver/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->method:Lcom/car/httpserver/NanoHTTPD$Method;

    invoke-virtual {v4, v5}, Lcom/car/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->headers:Ljava/util/Map;

    const-string v5, "content-type"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v26, 0x0

    if-eqz v18, :cond_5

    new-instance v26, Ljava/util/StringTokenizer;

    const-string v4, ",; "

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    :cond_5
    const-string v4, "multipart/form-data"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lcom/car/httpserver/NanoHTTPD$ResponseException;

    sget-object v5, Lcom/car/httpserver/NanoHTTPD$Response$Status;->BAD_REQUEST:Lcom/car/httpserver/NanoHTTPD$Response$Status;

    const-string v6, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v4, v5, v6}, Lcom/car/httpserver/NanoHTTPD$ResponseException;-><init>(Lcom/car/httpserver/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    const-wide/16 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_3

    :cond_7
    const-string v15, "boundary="

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    add-int v14, v4, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v4, "\""

    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "\""

    invoke-virtual {v13, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v13, v1, v4, v2}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->decodeMultipartFormData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_4
    invoke-static/range {v22 .. v22}, Lcom/car/httpserver/NanoHTTPD;->access$000(Ljava/lang/Object;)V

    return-void

    :cond_a
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v0, v4, [B

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v4, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->parms:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "postData"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_c
    sget-object v4, Lcom/car/httpserver/NanoHTTPD$Method;->PUT:Lcom/car/httpserver/NanoHTTPD$Method;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->method:Lcom/car/httpserver/NanoHTTPD$Method;

    invoke-virtual {v4, v5}, Lcom/car/httpserver/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "content"

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v6}, Lcom/car/httpserver/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method
