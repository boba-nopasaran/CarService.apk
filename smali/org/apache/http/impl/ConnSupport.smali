.class public final Lorg/apache/http/impl/ConnSupport;
.super Ljava/lang/Object;
.source "ConnSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDecoder(Lorg/apache/http/config/ConnectionConfig;)Ljava/nio/charset/CharsetDecoder;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2
.end method

.method public static createEncoder(Lorg/apache/http/config/ConnectionConfig;)Ljava/nio/charset/CharsetEncoder;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/http/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2
.end method
