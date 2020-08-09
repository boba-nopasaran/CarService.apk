.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"


# static fields
.field private static final AMPERSAND:Ljava/util/regex/Pattern;

.field private static final BYTE_ORDER_MARK:Ljava/lang/String; = "\ufeff"

.field private static final DIGITS:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final PARSERS:[Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/zxing/client/result/ResultParser;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/client/result/AddressBookAUResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/AddressBookAUResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/zxing/client/result/VCardResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/zxing/client/result/BizcardResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/BizcardResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/zxing/client/result/VEventResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/VEventResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/zxing/client/result/EmailAddressResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/EmailAddressResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/google/zxing/client/result/SMTPResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/SMTPResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/google/zxing/client/result/TelResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/TelResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/google/zxing/client/result/SMSMMSResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/SMSMMSResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/google/zxing/client/result/GeoResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/GeoResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/google/zxing/client/result/WifiResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/WifiResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/google/zxing/client/result/URLTOResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/URLTOResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/google/zxing/client/result/URIResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/URIResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/google/zxing/client/result/ISBNResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/ISBNResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/google/zxing/client/result/ProductResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/ProductResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/google/zxing/client/result/ExpandedProductResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/ExpandedProductResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/google/zxing/client/result/VINResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/VINResultParser;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;

    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendKeyValue(Ljava/lang/CharSequence;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x2

    sget-object v3, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v0, v1, v3

    const/4 v3, 0x1

    aget-object v2, v1, v3

    :try_start_0
    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static countPrecedingBackslashes(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected static getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\ufeff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected static isStringOfDigits(Ljava/lang/CharSequence;I)Z
    .locals 1

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSubstringOfDigits(Ljava/lang/CharSequence;II)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    add-int v0, p1, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    sget-object v2, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    if-ge v1, v3, :cond_6

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    move v5, v1

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/zxing/client/result/ResultParser;->countPrecedingBackslashes(Ljava/lang/CharSequence;I)I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    const/4 v6, 0x0

    :goto_1
    return-object v6

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_1
.end method

.method static matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method protected static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method protected static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static maybeWrap(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method protected static parseHexDigit(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sget-object v2, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-static {v5, v1}, Lcom/google/zxing/client/result/ResultParser;->appendKeyValue(Ljava/lang/CharSequence;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 5

    sget-object v2, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Lcom/google/zxing/client/result/ResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/zxing/client/result/TextParsedResult;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5c

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v4, :cond_1

    if-eq v1, v8, :cond_2

    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.end method
