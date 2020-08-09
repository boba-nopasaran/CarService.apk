.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final originalType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/MultipartBody;->COLONSPACE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    iput-object p1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    iput-object p2, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    invoke-static {p3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    move-object/from16 p1, v3

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    :goto_0
    if-ge v12, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lokhttp3/MultipartBody$Part;

    invoke-static {v13}, Lokhttp3/MultipartBody$Part;->access$000(Lokhttp3/MultipartBody$Part;)Lokhttp3/Headers;

    move-result-object v11

    invoke-static {v13}, Lokhttp3/MultipartBody$Part;->access$100(Lokhttp3/MultipartBody$Part;)Lokhttp3/RequestBody;

    move-result-object v2

    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz v11, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v11}, Lokhttp3/Headers;->size()I

    move-result v10

    :goto_1
    if-ge v9, v10, :cond_1

    invoke-virtual {v11, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    sget-object v16, Lokhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v15

    invoke-virtual {v11, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    sget-object v16, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v15, "Content-Type: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    invoke-virtual {v8}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    sget-object v16, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :cond_2
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v16, -0x1

    cmp-long v15, v6, v16

    if-eqz v15, :cond_4

    const-string v15, "Content-Length: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    invoke-interface {v15, v6, v7}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v15

    sget-object v16, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface/range {v15 .. v16}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :cond_3
    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_5

    add-long/2addr v4, v6

    :goto_2
    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_3

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    const-wide/16 v16, -0x1

    :goto_3
    return-wide v16

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    goto :goto_2

    :cond_6
    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    sget-object v15, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    sget-object v15, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_7

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v16

    add-long v4, v4, v16

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    :cond_7
    move-wide/from16 v16, v4

    goto :goto_3
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    goto :goto_0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lokhttp3/MultipartBody$Part;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    return-void
.end method
